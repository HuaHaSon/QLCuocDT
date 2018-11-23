
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
        public QLCuocDTContext db = new QLCuocDTContext();
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
                var dao = new KhachHangBus();
                var result = dao.Login(model.Email, model.Password);
                if (result == 1)
                {
                    var userSession = new LoginSessionModel();
                    userSession.UserName = db.KhachHangs.Where(m => m.Email == model.Email).Select(m => m.TenKH).FirstOrDefault();
                    userSession.Email = model.Email;
                    int idKH = db.KhachHangs.Where(m => m.Email == model.Email).Select(m=>m.KhachHangID).FirstOrDefault();
                    Session["USER_SESSION"] = null;
                    Session.Add("USER_SESSION", userSession);
                    return RedirectToAction("Index", "ChiTietHDTCs", new { id=idKH});
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
        
    }
}