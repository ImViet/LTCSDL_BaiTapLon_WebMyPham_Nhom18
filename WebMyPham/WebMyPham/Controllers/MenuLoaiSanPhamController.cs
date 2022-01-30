using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Collections;
using WebMyPham.Models;
namespace WebMyPham.Controllers
{
    public class MenuLoaiSanPhamController : Controller
    {
        // GET: MenuLoaiSanPham
        public ActionResult Index()
        {
            using (QLBHMyPhamEntities db = new QLBHMyPhamEntities())
            {
                var loaiSP = db.LoaiSanPhams.ToList();
                Hashtable tenLoaiSP = new Hashtable();
                foreach (var item in loaiSP)
                {
                    tenLoaiSP.Add(item.MaLoaiSP, item.TenLoaiSP);
                }
                ViewBag.TenLoaiSP = tenLoaiSP;
            }
            return PartialView("Index");
        }
    }
}