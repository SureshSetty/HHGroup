using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HHGroup.DataProviders;
using System.Data;

namespace HHGroup.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            DatabaseProvider provider = new DatabaseProvider();
            DataTable dataTable = provider.GetCountry();

            return View();
        }
    }
}
