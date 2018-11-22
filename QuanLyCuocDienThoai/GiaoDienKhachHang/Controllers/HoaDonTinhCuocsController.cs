using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EFModel;

namespace GiaoDienKhachHang.Controllers
{
    public class HoaDonTinhCuocsController : Controller
    {
        private QLCuocDTContext db = new QLCuocDTContext();

        // GET: HoaDonTinhCuocs
        public ActionResult Index()
        {
            var hoaDonTinhCuocs = db.HoaDonTinhCuocs.Include(h => h.KhachHang).Include(h => h.SIM);
            return View(hoaDonTinhCuocs.ToList());
        }

        // GET: HoaDonTinhCuocs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HoaDonTinhCuoc hoaDonTinhCuoc = db.HoaDonTinhCuocs.Find(id);
            if (hoaDonTinhCuoc == null)
            {
                return HttpNotFound();
            }
            return View(hoaDonTinhCuoc);
        }

        // GET: HoaDonTinhCuocs/Create
        public ActionResult Create()
        {
            ViewBag.KhachHangID = new SelectList(db.KhachHangs, "KhachHangID", "TenKH");
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim");
            return View();
        }

        // POST: HoaDonTinhCuocs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "HoaDonTinhCuocID,KhachHangID,SIMID,NgayHD,CuocThueBao,ThanhTien,TongTien,Flag")] HoaDonTinhCuoc hoaDonTinhCuoc)
        {
            if (ModelState.IsValid)
            {
                db.HoaDonTinhCuocs.Add(hoaDonTinhCuoc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.KhachHangID = new SelectList(db.KhachHangs, "KhachHangID", "TenKH", hoaDonTinhCuoc.KhachHangID);
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim", hoaDonTinhCuoc.SIMID);
            return View(hoaDonTinhCuoc);
        }

        // GET: HoaDonTinhCuocs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HoaDonTinhCuoc hoaDonTinhCuoc = db.HoaDonTinhCuocs.Find(id);
            if (hoaDonTinhCuoc == null)
            {
                return HttpNotFound();
            }
            ViewBag.KhachHangID = new SelectList(db.KhachHangs, "KhachHangID", "TenKH", hoaDonTinhCuoc.KhachHangID);
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim", hoaDonTinhCuoc.SIMID);
            return View(hoaDonTinhCuoc);
        }

        // POST: HoaDonTinhCuocs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "HoaDonTinhCuocID,KhachHangID,SIMID,NgayHD,CuocThueBao,ThanhTien,TongTien,Flag")] HoaDonTinhCuoc hoaDonTinhCuoc)
        {
            if (ModelState.IsValid)
            {
                db.Entry(hoaDonTinhCuoc).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.KhachHangID = new SelectList(db.KhachHangs, "KhachHangID", "TenKH", hoaDonTinhCuoc.KhachHangID);
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim", hoaDonTinhCuoc.SIMID);
            return View(hoaDonTinhCuoc);
        }

        // GET: HoaDonTinhCuocs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HoaDonTinhCuoc hoaDonTinhCuoc = db.HoaDonTinhCuocs.Find(id);
            if (hoaDonTinhCuoc == null)
            {
                return HttpNotFound();
            }
            return View(hoaDonTinhCuoc);
        }

        // POST: HoaDonTinhCuocs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            HoaDonTinhCuoc hoaDonTinhCuoc = db.HoaDonTinhCuocs.Find(id);
            db.HoaDonTinhCuocs.Remove(hoaDonTinhCuoc);
            db.SaveChanges();
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
