﻿using System;
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

        /// <summary>
        /// Load Index Page
        /// </summary>
        /// <returns></returns>
        public ActionResult Index()
        {
            return View();
        }       

        /// <summary>
        /// Get CMS Data
        /// </summary>
        /// <param name="request"></param>
        /// <returns></returns>
        [HttpPost]
        public JsonResult GetCMSData(RequestModel request)
        {

            DatabaseProvider dbProvider = new DatabaseProvider();
            DataTable dataTable = dbProvider.GetCMSData(request.CountryId, string.Empty);
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
                    cmsModel.Key = Convert.ToString(dr["CMSKey"]);
                    cmsModel.Value = Convert.ToString(dr["CMSValue"]);
                    cmsModel.Type = Convert.ToString(dr["CMSType"]);
                    cmsModel.Src = Convert.ToString(dr["CMSSrc"]);
                    cmsModel.Href = Convert.ToString(dr["CMSHref"]);

                    cmsModelList.Add(Convert.ToString(dr["CMSKey"]), cmsModel);
                }
            }

            return cmsModelList;
        }

        #endregion
    }
}
