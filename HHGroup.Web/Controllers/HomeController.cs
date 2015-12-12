using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using HHGroup.DataProviders;
using System.Data;
using HHGroup.Web.Models;
using System.Web.UI.WebControls;

namespace HHGroup.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public JsonResult GetCMSData(string countryID, string pageName)
        {
            DatabaseProvider dbProvider = new DatabaseProvider();
            DataTable dataTable = dbProvider.GetCMSData(countryID, pageName);
            return Json(GetCMSList(dataTable), JsonRequestBehavior.AllowGet);
        }

        #region PRIVATE METHODS

        public IDictionary<string, CMSModel> GetCMSList(DataTable dataTable)
        {
            Dictionary<string, CMSModel> cmsModelList = new Dictionary<string, CMSModel>();
            CMSModel cmsModel = default(CMSModel);
            if (dataTable != null && dataTable.Rows != null && dataTable.Rows.Count > 0)
            {
                foreach (DataRow dr in dataTable.Rows)
                {
                    cmsModel = new CMSModel();
                    cmsModel.CMSKey = Convert.ToString(dr["CMSKey"]);
                    cmsModel.CMSValue = Convert.ToString(dr["CMSValue"]);
                    cmsModel.CMSType = Convert.ToString(dr["CMSType"]);
                    cmsModel.CMSSrc = Convert.ToString(dr["CMSSrc"]);
                    cmsModel.CMSHref = Convert.ToString(dr["CMSHref"]);

                    cmsModelList.Add(Convert.ToString(dr["CMSKey"]), cmsModel);
                }
            }

            return cmsModelList;
        }

        #endregion
    }
}
