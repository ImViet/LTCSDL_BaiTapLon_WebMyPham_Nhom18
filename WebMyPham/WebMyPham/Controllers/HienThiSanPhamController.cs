using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data.Entity;
using WebMyPham.Models;
using PagedList;
namespace WebMyPham.Controllers
{
    public class HienThiSanPhamController : Controller
    {
        // GET: HienThiSanPham
        QLBHMyPhamEntities db = new QLBHMyPhamEntities();
        public ActionResult Index(string sortingOrder, string searchString, int? pageNo, string maLoaiSP = "0")
        {
            ViewBag.CurrentSortOrder = sortingOrder;
            ViewBag.TenLoaiSP = "Tất cả sản phẩm";
            var sanPhams = db.SanPhams.Include(x => x.LoaiSanPham);
            //Tim kiem theo ma loai san pham
            if (maLoaiSP != "0")
            {
                sanPhams = db.SanPhams.Where(s => s.MaLoaiSP == maLoaiSP);
                switch(maLoaiSP)
                {
                    case "TT":
                        ViewBag.TenLoaiSP = "Sản phẩm tẩy trang";
                            break;
                    case "RM":
                        ViewBag.TenLoaiSP = "Sản phẩm rửa mặt";
                        break;
                    case "TDN":
                        ViewBag.TenLoaiSP = "Sản phẩm trang điểm nền";
                        break;
                    case "TDMat":
                        ViewBag.TenLoaiSP = "Sản phẩm trang điểm mắt";
                        break;
                    case "TDM1":
                        ViewBag.TenLoaiSP = "Sản phẩm trang điểm môi";
                        break;
                }
            }
            //Tim kiem theo ten
            if (!String.IsNullOrEmpty(searchString))
            {
                sanPhams = db.SanPhams.Where(x => x.TenSP.ToUpper().Contains(searchString.ToUpper())).OrderBy(x => x.TenSP);
                ViewBag.SoLuongSP = "Tìm thấy " + sanPhams.ToList().Count() + " sản phẩm với từ khóa " + "\"" + searchString + "\"";
            }
            else
                ViewBag.SoLuongSP = "Có tất cả " + sanPhams.ToList().Count() + " sản phẩm ";
            //Sap xep
            switch (sortingOrder)
            {
                case "dongia":
                    sanPhams = sanPhams.OrderBy(s => s.GiaTien);
                    break;
                case "dongia_desc":
                    sanPhams = sanPhams.OrderByDescending(s => s.GiaTien);
                    break;
                case "ten":
                    sanPhams = sanPhams.OrderBy(s => s.TenSP);
                    break;
                case "ten_desc":
                    sanPhams = sanPhams.OrderByDescending(s => s.TenSP);
                    break;
                default:
                    sanPhams = sanPhams.OrderBy(s => s.TenSP);
                    break;
            }
           
            int sizePage = 16;
            int page = (pageNo ?? 1);
            return View(sanPhams.ToPagedList(page, sizePage));
        }
    }
}