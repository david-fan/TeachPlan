using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TeachPlan.Controllers
{
    public class HomeController : Controller
    {
        //
        // GET: /Home/
        private static JiaoxueJihuaContainer db = new JiaoxueJihuaContainer();


        public static IEnumerable<SelectListItem> getAllSubjects()
        {
            var grades = new List<SelectListItem>();
            var enumer = from p in db.SubjectSet
                         where p.Id > 0
                         select p;
            var g = enumer.GetEnumerator();
            while (g.MoveNext())
            {
                var sli = new SelectListItem();
                sli.Text = g.Current.Name;
                sli.Value = g.Current.Id.ToString();
                //if (select != null && select.Id == g.Current.Id)
                //    sli.Selected = true;
                grades.Add(sli);
            }
            return grades;
        }


        public static IEnumerable<SelectListItem> getAllTextbooks()
        {
            var grades = new List<SelectListItem>();
            var enumer = from p in db.TextbookSet
                         where p.Id > 0
                         select p;
            var g = enumer.GetEnumerator();
            while (g.MoveNext())
            {
                var sli = new SelectListItem();
                sli.Text = g.Current.Name;
                sli.Value = g.Current.Id.ToString();
                //if (select != null && select.Id == g.Current.Id)
                //    sli.Selected = true;
                grades.Add(sli);
            }
            return grades;
        }
        public static IEnumerable<SelectListItem> getAllGrades()
        {
            var grades = new List<SelectListItem>();
            var enumer = from p in db.GradeSet
                         where p.Id > 0
                         select p;
            var g = enumer.GetEnumerator();
            while (g.MoveNext())
            {
                var sli = new SelectListItem();
                sli.Text = g.Current.Name;
                sli.Value = g.Current.Id.ToString();
                //if (select != null && select.Id == g.Current.Id)
                //    sli.Selected = true;
                grades.Add(sli);
            }
            return grades;
        }

        public ActionResult Index()
        {
            if (!this.Request.IsAuthenticated)
                Response.Redirect("~/Account/LogOn");
            var plan = new TeachPlan.Plan();
            plan.Subject = new Subject() { Id = 2, Name = "语文" };
            plan.Name = "测试计划";
            plan.Author = "我自己";
            return View(plan);
        }
        public ActionResult About()
        {
            return View();
        }

        [HttpPost]
        public JsonResult SaveBasicInfo()
        {
            return Json(true);
        }
    }
}
