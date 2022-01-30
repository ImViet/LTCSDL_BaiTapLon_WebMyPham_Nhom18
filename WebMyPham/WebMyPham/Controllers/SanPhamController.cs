using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.IO;
using PagedList;
using PagedList.Mvc;
using WebMyPham.Models;
namespace WebMyPham.Controllers
{
    public class SanPhamController : Controller
    {
        private QLBHMyPhamEntities db = new QLBHMyPhamEntities();

        // GET: SanPham
        [Authorize(Roles ="Admin")]
        public ActionResult Index(string sortingOrder, string searchString, int? pageNo, string maLoaiSP = "0")
        {
            ViewBag.CurrentSortOrder = sortingOrder;
            var sanPhams = db.SanPhams.Include(x => x.LoaiSanPham);
            //Tim kiem theo ten
            if (!String.IsNullOrEmpty(searchString))
            {
                sanPhams = db.SanPhams.Include(s => s.LoaiSanPham).Where(x => x.TenSP.ToUpper().Contains(searchString.ToUpper())).OrderBy(x => x.TenSP);
            }
            //Tim kiem theo ma loai san pham
            if (maLoaiSP != "0")
            {
                sanPhams = db.SanPhams.Include(x => x.LoaiSanPham).Where(s => s.MaLoaiSP == maLoaiSP).OrderBy(m => m.MaLoaiSP);
            }
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
                    sanPhams = sanPhams.OrderBy(s => s.MaSP);
                    break;
            }

            int sizePage = 10;
            int page = (pageNo ?? 1);
            return View(sanPhams.ToPagedList(page, sizePage));
        }

        // GET: SanPham/Details/5
        public ActionResult Details(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // GET: SanPham/Create
        [Authorize(Roles = "Admin")]
        public ActionResult Create()
        {
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP");
            return View();
        }

        // POST: SanPham/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "MaSP,TenSP,DonViTinh,GiaTien,XuatXu,MoTaSP,HinhSP,MaLoaiSP")] SanPham sanPham,
            HttpPostedFileBase HinhSP)
        {
            if (ModelState.IsValid)
            {
                if(HinhSP!=null && HinhSP.ContentLength > 0) //Kiem tra hinh co hop le hay chua
                {
                    //Tien hanh lay ten cua hinh bo vao folder va database
                    string fileName = Path.GetFileName(HinhSP.FileName);
                    string path = Server.MapPath("~/Image/" + fileName);
                    sanPham.HinhSP = fileName;
                    HinhSP.SaveAs(path);
                }
                db.SanPhams.Add(sanPham);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // GET: SanPham/Edit/5
        [Authorize(Roles = "Admin")]
        public ActionResult Edit(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // POST: SanPham/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "MaSP,TenSP,DonViTinh,GiaTien,XuatXu,MoTaSP,HinhSP,MaLoaiSP")] SanPham sanPham,
          HttpPostedFileBase HinhSP)
        {
            if (ModelState.IsValid)
            {
                if (HinhSP != null && HinhSP.ContentLength > 0)
                {
                    if (sanPham.HinhSP != null)
                        System.IO.File.Delete(Server.MapPath("~/Image/" + sanPham.HinhSP)); // Xoa hinh cu neu nguoi dung doi hinh moi
                    string fileName = Path.GetFileName(HinhSP.FileName);
                    string path = Server.MapPath("~/Image/" + fileName);
                    sanPham.HinhSP = fileName;
                    HinhSP.SaveAs(path);
                }
                db.Entry(sanPham).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MaLoaiSP = new SelectList(db.LoaiSanPhams, "MaLoaiSP", "TenLoaiSP", sanPham.MaLoaiSP);
            return View(sanPham);
        }

        // GET: SanPham/Delete/5
        [Authorize(Roles = "Admin")]
        public ActionResult Delete(string id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.SanPhams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

        // POST: SanPham/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(string id)
        {
            SanPham sanPham = db.SanPhams.Find(id);
            db.SanPhams.Remove(sanPham);
            db.SaveChanges();
            if(sanPham.HinhSP != null)
               System.IO.File.Delete(Server.MapPath("~/Image/" + sanPham.HinhSP)); //Xoa hinh nam trong folder Image
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
