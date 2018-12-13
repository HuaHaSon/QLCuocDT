using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Model.EFModel;
using Model.ViewModel;

namespace GiaoDienKhachHang.Controllers
{
    public class HoaDonTinhCuocThangsController : Controller
    {
        private QLCuocDTContext db = new QLCuocDTContext();

        // GET: HoaDonTinhCuocThangs
        public ActionResult Index()
        {
            LoginSessionModel userInfo = (LoginSessionModel)Session["USER_SESSION"];
            if (userInfo == null)
            {
                return RedirectToAction("Login", "Home");
            }
            var id = db.KhachHangs.Where(m => m.Email == userInfo.Email & m.CMND == userInfo.CMND).Select(m => m.KhachHangID).FirstOrDefault();
            ViewBag.Sim = new SelectList(db.SIMs.Where(m => m.HoaDonDangKy.KhachHangID == id), "SimID", "SoSim");
            ViewBag.TenKhachHang = userInfo.UserName;
            var monthNow = System.DateTime.Now.Month;
            var yearNow = System.DateTime.Now.Year;
            ViewBag.MonthNow = monthNow;

            var getMonthYear = new DateTime(yearNow, monthNow, 1);
            var hoaDonTinhCuocThangs = db.HoaDonTinhCuocThangs.Include(h => h.SIM).Where(m => m.SIM.HoaDonDangKy.KhachHang.KhachHangID == id&m.ThangHD==getMonthYear).ToList();
            

            decimal tienThueBao = 0;
            decimal tienCuocGoi = 0;
            foreach(var item in hoaDonTinhCuocThangs)
            {
                tienThueBao += item.TienThueBao;
                tienCuocGoi += item.TienCuocSD;
            }
            ViewBag.TienThueBao = tienThueBao.ToString("N0");
            ViewBag.TienCuocGoi = tienCuocGoi.ToString("N0");

            var listID = hoaDonTinhCuocThangs.Select(m => m.HoaDonTinhCuocThangID);
            var listChiTietHDTC = db.ChiTietHDTCs.Where(m => listID.Contains(m.HoaDonTinhCuocThangID)).OrderBy(m => m.NgayHD);
            ViewBag.ListChiTietHDTC =listChiTietHDTC;

            var listCTHDTCID = listChiTietHDTC.Select(m => m.ChiTietHDTCID).ToList();
            var listChiTietCG = db.ChiTietCuocGois.Where(m => listCTHDTCID.Contains(m.ChiTietHDTCID));
            ViewBag.ListChiTietCuocGoi = listChiTietCG;

            return View(hoaDonTinhCuocThangs);
        }

        [HttpPost]
        public ActionResult Index(int? thang, int? Sim)
        {
            LoginSessionModel userInfo = (LoginSessionModel)Session["USER_SESSION"];
            var id = db.KhachHangs.Where(m => m.Email == userInfo.Email & m.CMND == userInfo.CMND).Select(m => m.KhachHangID).FirstOrDefault();
            var hoaDonTinhCuocThangs = db.HoaDonTinhCuocThangs.Include(h => h.SIM).Where(m => m.SIM.HoaDonDangKy.KhachHang.KhachHangID == id);
            ViewBag.Sim = new SelectList(db.SIMs.Where(m => m.HoaDonDangKy.KhachHangID == id), "SimID", "SoSim");
            ViewBag.TenKhachHang = userInfo.UserName;
            var monthNow = System.DateTime.Now.Month;
            var yearNow = System.DateTime.Now.Year;
            ViewBag.MonthNow = thang;

            var getMonthYear = new DateTime(yearNow, monthNow, 1);
            if (thang == null)
            {
                hoaDonTinhCuocThangs=hoaDonTinhCuocThangs.Where(m => m.ThangHD == getMonthYear);
                ViewBag.MonthNow = monthNow;
            }
            else
            {
                getMonthYear = new DateTime(yearNow, thang.GetValueOrDefault(monthNow), 1);
                hoaDonTinhCuocThangs = hoaDonTinhCuocThangs.Where(m => m.ThangHD == getMonthYear);
            }

            if (Sim != null)
            {
                hoaDonTinhCuocThangs = hoaDonTinhCuocThangs.Where(m => m.SIMID == Sim);
            }

            decimal tienThueBao = 0;
            decimal tienCuocGoi = 0;
            foreach (var item in hoaDonTinhCuocThangs)
            {
                tienThueBao += item.TienThueBao;
                tienCuocGoi += item.TienCuocSD;
            }
            ViewBag.TienThueBao = tienThueBao.ToString("N0");
            ViewBag.TienCuocGoi = tienCuocGoi.ToString("N0");

            var listID = hoaDonTinhCuocThangs.Select(m => m.HoaDonTinhCuocThangID);
            var listChiTietHDTC = db.ChiTietHDTCs.Where(m => listID.Contains(m.HoaDonTinhCuocThangID)).ToList();
            var listCTHDTCID = listChiTietHDTC.Select(m => m.ChiTietHDTCID).ToList();
            var listChiTietCG = db.ChiTietCuocGois.Where(m => listCTHDTCID.Contains(m.ChiTietHDTCID));

            ViewBag.ListChiTietHDTC = listChiTietHDTC.OrderBy(m => m.NgayHD);
            ViewBag.ListChiTietCuocGoi = listChiTietCG;

            return View(hoaDonTinhCuocThangs.ToList());
        }

        // GET: HoaDonTinhCuocThangs/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            HoaDonTinhCuocThang hoaDonTinhCuocThang = db.HoaDonTinhCuocThangs.Find(id);
            if (hoaDonTinhCuocThang == null)
            {
                return HttpNotFound();
            }
            return View(hoaDonTinhCuocThang);
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
