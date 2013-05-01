using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TeachPlan.Controllers
{
    public class AccountController : Controller
    {
        private JiaoxueJihuaContainer db = new JiaoxueJihuaContainer();
        //
        // GET: /Account/

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult LogOn()
        {
            var ui = new UserInfo();
            ui.Name = "test";
            ui.PWD = "test";
            return View(ui);
        }
        [HttpPost]
        public ActionResult LogOn(UserInfo ui, string returnUrl)
        {
            var userInfo = db.UserInfoSet.First(m => m.Name == ui.Name && m.PWD == ui.PWD);
            if (userInfo != null)
            {
                System.Web.Security.FormsAuthentication.SetAuthCookie(userInfo.Name, false);
                Response.Redirect("~/Home/Index");
            }
            return View();
        }

    }
}
