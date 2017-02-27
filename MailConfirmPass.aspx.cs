using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebudviklingProjekt1
{
    public partial class MailConfirmPass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = Request.QueryString.Get("confirm");
            link.NavigateUrl = "NewPassword.aspx?confirm=" + result;
            link.Text = link.NavigateUrl;
        }
    }
}