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
    public class HomeController : Controller
    {
        QLBHMyPhamEntities db = new QLBHMyPhamEntities();
        public ActionResult Index()
        {
            var sanPham = db.SanPhams.Include(s => s.LoaiSanPham);
            return View(sanPham);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}