using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebudviklingProjekt1
{
    public partial class Confirmed : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var result = Request.QueryString.Get("activationCode");
            link.NavigateUrl = "Confirmed.aspx?activationCode=" + result;

            SqlConnection ConnectionString = new SqlConnection("Server=tcp:nf4bjl4q29.database.windows.net,1433;Database=DBO.Bistroteket;User ID=bistroteket@nf4bjl4q29;Password=IsAllowed123#;Trusted_Connection=False;Connection Timeout=30;");

            /* SQL-queries */

            SqlCommand DeleteCommand = new SqlCommand();
            DeleteCommand.Connection = ConnectionString;
            ConnectionString.Open();
            DeleteCommand.CommandText = "UPDATE Member SET ActivationCode = null WHERE ActivationCode = @ActivationCode";
            DeleteCommand.Parameters.AddWithValue("@ActivationCode", result);
            DeleteCommand.ExecuteNonQuery();
        }
    }
}