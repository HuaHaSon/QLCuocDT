
using Model.Bus;
using Model.EFModel;
using Model.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace GiaoDienKhachHang.Controllers
{
    public class HomeController : Controller
    {
        private QLCuocDTContext db = new QLCuocDTContext();
        // GET: Home
        public ActionResult Login()
        {
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(LoginModel model)
        {
            if (ModelState.IsValid)
            {
                var bus = new KhachHangBus();
                var result = bus.Login(model.Email, model.Password);
                if (result == 1)
                {
                    var userSession = new LoginSessionModel();
                    userSession.UserName = db.KhachHangs.Where(m => m.Email == model.Email&m.CMND==model.Password).Select(m => m.TenKH).FirstOrDefault();
                    userSession.Email = model.Email;
                    userSession.CMND = model.Password;
                    int idKH = db.KhachHangs.Where(m => m.Email == model.Email).Select(m=>m.KhachHangID).FirstOrDefault();
                    Session["USER_SESSION"] = null;
                    Session.Add("USER_SESSION", userSession);
                    return RedirectToAction("Index", "HoaDonTinhCuocThangs");
                }
                else if (result == 0)
                {
                    ModelState.AddModelError("", "Người dùng bị khóa.");
                }
                else if (result == -1)
                {
                    ModelState.AddModelError("", "Người dùng không tồn tại.");
                }
                else if (result == -2)
                {
                    ModelState.AddModelError("", "Số CMND không đúng.");
                }
            }
            return View(model);
        }

        public ActionResult Logout()
        {
            Session["USER_SESSION"] = null;
            return RedirectToAction("Login", "Home");
        }
        
    }
}