using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Common;
using Model.EFModel;

namespace GiaoDienKhachHang.Controllers
{
    public class ChitietHDTCsController : Controller
    {
        private QLCuocDTContext db = new QLCuocDTContext();

        // GET: ChitietHDTCs
        public ActionResult Index(int id)
        {
            DateTime now = DateTime.Now;
            ViewBag.MonthNow = now.Month;

            var startDate = new DateTime(now.Year, now.Month, 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);


            var chitietHDTCs = db.ChitietHDTCs.Include(c => c.HoaDonTinhCuoc).Include(c => c.SIM).Where(m => m.SIM.HoaDonDangKy.KhachHangID == id & m.ThoiGianBD>= startDate & m.ThoiGianKT <= endDate).OrderByDescending(m=>m.ThoiGianBD);
            ViewBag.SIMID = new SelectList(db.SIMs.Where(m=>m.HoaDonDangKy.KhachHangID == id), "SimID", "SoSim");
            return View(chitietHDTCs.ToList());
        }

        [HttpPost]
        public ActionResult Index(int id, int? thang,int? SIMID)
        {
            ViewBag.SIMID = new SelectList(db.SIMs.Where(m => m.HoaDonDangKy.KhachHangID == id), "SimID", "SoSim");
            ViewBag.MonthNow = thang;
            DateTime now = DateTime.Now;
            var startDate = new DateTime(now.Year, thang.GetValueOrDefault(1), 1);
            var endDate = startDate.AddMonths(1).AddDays(-1);

                var chitietHDTCs = db.ChitietHDTCs.Include(c => c.HoaDonTinhCuoc).Include(c => c.SIM).Where(m => m.SIM.HoaDonDangKy.KhachHangID == id & m.ThoiGianBD >= startDate & m.ThoiGianKT <= endDate);
            if(SIMID != null)
            {
                chitietHDTCs = chitietHDTCs.Where(m=>m.SIMID== SIMID);
            }
            decimal tienHoaDonThang = 0;
            foreach(var item in chitietHDTCs)
            {
                tienHoaDonThang+= MathSolve.TinhTienCuoc(item.ThoiGianBD.GetValueOrDefault(DateTime.MinValue), item.ThoiGianKT.GetValueOrDefault(DateTime.MinValue));

            }
            tienHoaDonThang += 50000;
            ViewBag.TienHoaDonThang = tienHoaDonThang.ToString("N0");
            return View(chitietHDTCs.ToList());
        }

        // GET: ChitietHDTCs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChitietHDTC chitietHDTC = db.ChitietHDTCs.Find(id);
            if (chitietHDTC == null)
            {
                return HttpNotFound();
            }
            return View(chitietHDTC);
        }

        // GET: ChitietHDTCs/Create
        public ActionResult Create()
        {
            ViewBag.HoaDonTinhCuocID = new SelectList(db.HoaDonTinhCuocs, "HoaDonTinhCuocID", "HoaDonTinhCuocID");
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim");
            return View();
        }

        // POST: ChitietHDTCs/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ChitietHDTCID,SIMID,ThoiGianBD,ThoiGianKT,SoPhutSD,HoaDonTinhCuocID,Flag")] ChitietHDTC chitietHDTC)
        {
            if (ModelState.IsValid)
            {
                db.ChitietHDTCs.Add(chitietHDTC);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.HoaDonTinhCuocID = new SelectList(db.HoaDonTinhCuocs, "HoaDonTinhCuocID", "HoaDonTinhCuocID", chitietHDTC.HoaDonTinhCuocID);
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim", chitietHDTC.SIMID);
            return View(chitietHDTC);
        }

        // GET: ChitietHDTCs/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChitietHDTC chitietHDTC = db.ChitietHDTCs.Find(id);
            if (chitietHDTC == null)
            {
                return HttpNotFound();
            }
            ViewBag.HoaDonTinhCuocID = new SelectList(db.HoaDonTinhCuocs, "HoaDonTinhCuocID", "HoaDonTinhCuocID", chitietHDTC.HoaDonTinhCuocID);
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim", chitietHDTC.SIMID);
            return View(chitietHDTC);
        }

        // POST: ChitietHDTCs/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ChitietHDTCID,SIMID,ThoiGianBD,ThoiGianKT,SoPhutSD,HoaDonTinhCuocID,Flag")] ChitietHDTC chitietHDTC)
        {
            if (ModelState.IsValid)
            {
                db.Entry(chitietHDTC).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.HoaDonTinhCuocID = new SelectList(db.HoaDonTinhCuocs, "HoaDonTinhCuocID", "HoaDonTinhCuocID", chitietHDTC.HoaDonTinhCuocID);
            ViewBag.SIMID = new SelectList(db.SIMs, "SIMID", "TenSim", chitietHDTC.SIMID);
            return View(chitietHDTC);
        }

        // GET: ChitietHDTCs/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            ChitietHDTC chitietHDTC = db.ChitietHDTCs.Find(id);
            if (chitietHDTC == null)
            {
                return HttpNotFound();
            }
            return View(chitietHDTC);
        }

        // POST: ChitietHDTCs/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            ChitietHDTC chitietHDTC = db.ChitietHDTCs.Find(id);
            db.ChitietHDTCs.Remove(chitietHDTC);
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
