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

        /// <summary>
        /// 所有学科
        /// </summary>
        /// <returns></returns>
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
        public static String getSubjectName(int subjectId)
        {
            return db.SubjectSet.FirstOrDefault(m => m.Id == subjectId).Name;
        }
        /// <summary>
        /// 所有教材
        /// </summary>
        /// <returns></returns>
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
        public static String getTextbookName(int textbookId)
        {
            return db.TextbookSet.FirstOrDefault(m => m.Id == textbookId).Name;
        }
        /// <summary>
        /// 所有目标层次
        /// </summary>
        /// <returns></returns>
        public static IEnumerable<SelectListItem> getAllPhases()
        {
            var grades = new List<SelectListItem>();
            var enumer = from p in db.PhaseSet
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
        public static String getPhaseName(int id)
        {
            return db.PhaseSet.FirstOrDefault(m => m.Id == id).Name;
        }
        /// <summary>
        /// 所有年级
        /// </summary>
        /// <returns></returns>
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
        public static String getGradeName(int id)
        {
            return db.GradeSet.FirstOrDefault(m => m.Id == id).Name;
        }
        /// <summary>
        /// 所有教学内容
        /// </summary>
        /// <returns></returns>
        public static IEnumerable<SelectListItem> getAllContents()
        {
            var grades = new List<SelectListItem>();
            var enumer = from p in db.ContentSet
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
        public static String getContentName(int id)
        {
            return db.ContentSet.FirstOrDefault(m => m.Id == id).Name;
        }
        /// <summary>
        /// 所有组织形式
        /// </summary>
        /// <returns></returns>
        public static IEnumerable<SelectListItem> getAllForms()
        {
            var grades = new List<SelectListItem>();
            var enumer = from p in db.FormSet
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
        public static String getFormName(int id)
        {
            return db.FormSet.FirstOrDefault(m => m.Id == id).Name;
        }

        public ActionResult Index()
        {
            if (!this.Request.IsAuthenticated)
                Response.Redirect("~/Account/LogOn");
            var plan = new TeachPlan.Plan();
            plan.Subject = new Subject() { Id = 2};
            plan.Name = "测试计划";
            plan.Author = "我自己";

            var p1 = new Point { Type = (int)PointType.Zhongdian, Content = "重点1" };
            p1.Method.Add(new Method { Content = "解决方法1" });
            p1.Method.Add(new Method { Content = "解决方法2" });
            var p2 = new Point { Type = (int)PointType.Nandian, Content = "难点1" };
            plan.Point.Add(p1);
            plan.Point.Add(p2);

            var t1 = new Target { Baseic = "基本目标1", Advance = "高级目标1", Type = 1 };
            var t2 = new Target { Baseic = "基本目标2", Advance = "高级目标2", Type = 1 };
            plan.Target.Add(t1);
            plan.Target.Add(t2);

            var a1 = new Active { Name = "活动1" };
            a1.Subject = db.SubjectSet.First();
            a1.Phase = db.PhaseSet.First();
            a1.Content = db.ContentSet.First();
            a1.Form = db.FormSet.First();
            a1.Steps.Add(new Step {  Name="步骤1",Content="步骤详细a"});
            a1.Steps.Add(new Step { Name = "步骤2", Content = "步骤详细b" });
            //var a2 = new Active { Name = "活动2" };
            plan.Active.Add(a1);
            //plan.Active.Add(a2);

            var th1 = new Think { Content = "反思1" };
            var j1 = new Judge { Content = "评价1" };
            plan.Think.Add(th1);
            plan.Judge.Add(j1);

            plan.ClassName = "课时名称test";
            plan.Organiser = "新学校123";

            plan.Grade = new Grade {Id=1 };
            plan.Textbook = new Textbook {Id=1 };
            return View(plan);
        }
        
        [HttpGet]
        public ActionResult AddActive()
        {
            return View("_AddActive",new Active());
        }

        [HttpPost]
        public JsonResult AddActive(Active model)
        {
            return Json(true);
        }

        public ActionResult About()
        {
            return View();
        }

        public ActionResult AddPlan()
        {
            return View("_AddPlan");
        }

        [HttpPost]
        public JsonResult AddPlan(Plan model)
        {
            return Json(true);
        }

        [HttpGet]
        public ActionResult AddStep()
        {
            return View("_AddStep", new Step());
        }

        [HttpPost]
        public JsonResult AddStep(Step model)
        {
            return Json(true);
        }

        public JsonResult RemoveStep(int stepId)
        {
            return Json(true);
        }


        public JsonResult RemoveActive(int acitveId)
        {
            return Json(true);
        }
    }
}
