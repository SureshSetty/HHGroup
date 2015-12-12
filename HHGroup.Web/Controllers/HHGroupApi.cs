using HHGroup.DataProviders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using HHGroup.Web.Models;
using System.Net.Http.Formatting;
            

namespace HHGroup.Web.Controllers
{
    public class HHGroupApiController : ApiController
    {
        //DatabaseProvider dbProvider = default(DatabaseProvider);

        //public HHGroupApiController()
        //{
        //    dbProvider = new DataProviders.DatabaseProvider();
        //}

        //public HHGroupApiController(DatabaseProvider provider)
        //{
        //    dbProvider = provider;
        //}


        //[HttpGet]
        //public HttpResponseMessage GetCMSData(string countryID, string pageName)
        //{
        //    var response = default(object);
        //    HttpStatusCode httpStatusCode = HttpStatusCode.OK;

        //    DataTable dataTable = dbProvider.GetCMSData(countryID, pageName);
            
        //    response = new
        //    {
        //        CMSModel = GetCMSList(dataTable)
        //    };

        //    HttpRequestMessage requestMessage = (Request != null) ? Request : new HttpRequestMessage();
        //    return requestMessage.CreateResponse<object>(httpStatusCode, response, new JsonMediaTypeFormatter(), "application/json");
        //}

        //#region PRIVATE METHODS

        //public List<CMSModel> GetCMSList(DataTable dataTable)
        //{
        //    List<CMSModel> cmsModelList = new List<CMSModel>();
        //    CMSModel cmsModel = default(CMSModel);

        //    if(dataTable != null && dataTable.Rows != null && dataTable.Rows.Count > 0)
        //    {
        //        foreach(DataRow dr in dataTable.Rows)
        //        {
        //            cmsModel = new CMSModel();
        //            cmsModel.CMSKey = Convert.ToString(dr["CMSKey"]);
        //            cmsModel.CMSValue = Convert.ToString(dr["CMSValue"]);
        //            cmsModel.CMSType = Convert.ToString(dr["CMSType"]);
        //            cmsModel.CMSSrc = Convert.ToString(dr["CMSSrc"]);
        //            cmsModel.CMSHref = Convert.ToString(dr["CMSHref"]);
                    
        //            cmsModelList.Add(cmsModel);
        //        }
        //    }

        //    return cmsModelList;
        //}

        //#endregion
    }
}