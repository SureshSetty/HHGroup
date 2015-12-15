using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HHGroup.Web.Models
{
    [Serializable]
    public class RequestModel
    {
        public string CountryId { get; set; }
        public string PageName { get; set; }
    }
}