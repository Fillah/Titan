using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebudviklingProjekt1
{
    public partial class MailConfirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = Request.QueryString.Get("confirm");
            link.NavigateUrl = "Confirmed.aspx?activationCode=" + result;
            link.Text = link.NavigateUrl;
        }
    }
}