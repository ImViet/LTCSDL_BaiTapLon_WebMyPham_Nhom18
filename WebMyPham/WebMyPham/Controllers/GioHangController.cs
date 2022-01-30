using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebMyPham.Models;
using System.Net;
using System.Net.Mail;
namespace WebMyPham.Controllers
{
    public class GioHangController : Controller
    {
        private QLBHMyPhamEntities db = new QLBHMyPhamEntities();
        // GET: GioHang
        public ActionResult Index()
        {
            List<Cart> gioHang = Session["giohang"] as List<Cart>;
            return View(gioHang);
        }
        //Khai bao phuong thuc them san pham vao gio hang
        public RedirectToRouteResult AddToCart(string MaSP)
        {
            if(Session["giohang"] == null)
            {
                Session["giohang"] = new List<Cart>();
            }
            List<Cart> gioHang = Session["giohang"] as List<Cart>;
            //Kiem tra san pham dang chon da co trong gio hang hay chua
            if(gioHang.FirstOrDefault(m => m.MaSP == MaSP) == null)//Chua co
            {
                SanPham sp = db.SanPhams.Find(MaSP);
                Cart newItem = new Cart();
                newItem.MaSP = MaSP;
                newItem.TenSP = sp.TenSP;
                newItem.HinhSP = sp.HinhSP;
                newItem.SoLuong = 1;
                newItem.DonGia = (double)sp.GiaTien;
                gioHang.Add(newItem);
            }
            else //San pham da co trong gio hang
            {
                Cart item = gioHang.FirstOrDefault(m => m.MaSP == MaSP);
                item.SoLuong++;
            }
            Session["giohang"] = gioHang;
            return RedirectToAction("Index");
        }

        //Cap nhat gio hang 
        public RedirectToRouteResult Update(string MaSP, int txtSoLuong)
        {
            //Tim item muon xoa
            List<Cart> gioHang = Session["giohang"] as List<Cart>;
            Cart item = gioHang.FirstOrDefault(m => m.MaSP == MaSP);
            if(item != null)
            {
                item.SoLuong = txtSoLuong;
                Session["giohang"] = gioHang;
            }
            return RedirectToAction("Index");
        }

        //Xoa item trong gio hang
        public RedirectToRouteResult DelCartItem(string MaSP)
        {
            List<Cart> gioHang = Session["giohang"] as List<Cart>;
            Cart item = gioHang.FirstOrDefault(m => m.MaSP == MaSP);
            if (item != null)
            {
                gioHang.Remove(item);
                Session["giohang"] = gioHang;
            }
            return RedirectToAction("Index");
        }
        //Gui mail tu dong de thong bao cho khach hang
        public RedirectToRouteResult Order(string name, string email, string address, string phone)
        {
            List<Cart> gioHang = Session["giohang"] as List<Cart>;
            string sMgs = "<html><body><table class='table-striped'><h3>Thông tin đặt hàng</h3><div><p>Họ tên khách hàng: " + name + "</p><p>Số điện thoại: "+ phone+"</p><p>Địa chỉ: "+address+"</p></div>";
            sMgs += "<tr><th>STT</th><th>Tên sản phẩm</th><th>Số lượng</th><th>Đơn giá</th><th>Thành tiền</th></tr>";
            int i = 0;
            double tongTien = 0;
            foreach (var item in gioHang)
            {
                i++;
                sMgs += "<tr>";
                sMgs += "<td>" + i.ToString() + "</td>";
                sMgs += "<td>" + item.TenSP + "</td>";
                sMgs += "<td>" + item.SoLuong + "</td>";
                sMgs += "<td>" + string.Format("{0:#,##0.##} VND", item.DonGia) + "</td>";
                sMgs += "<td>" + string.Format("{0:#,##0.##} VND", item.ThanhTien) + "</td>";
                sMgs += "</tr>";
                tongTien += item.ThanhTien;
            }
            sMgs += "<tr><th colspan='4'>Tổng tiền: </th>" + "<th>" +string.Format("{0:#,##0.##} VND", tongTien) + "</th></tr>";
            sMgs += "</table></body></html>";

            MailMessage mail = new MailMessage("Sophiabeauty371@gmail.com", email, "Thông tin đặt hàng", sMgs);
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.Credentials = new NetworkCredential("Sophiabeauty371", "371nguyenkiem");
            mail.IsBodyHtml = true;
            client.Send(mail);
            return RedirectToAction("Index", "HienThiSanPham");
        }
    }
}