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
