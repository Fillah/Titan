using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebudviklingProjekt1
{
    public partial class NewPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            var result = Request.QueryString.Get("confirm");

            if (TextBoxPass.Text == TextBoxRepeat.Text)
            {
                SqlConnection ConnectionString = new SqlConnection("Server=tcp:nf4bjl4q29.database.windows.net,1433;Database=DBO.Bistroteket;User ID=bistroteket@nf4bjl4q29;Password=IsAllowed123#;Trusted_Connection=False;Connection Timeout=30;");

                /* SQL-queries */

                SqlCommand UpdateCommand = new SqlCommand();
                UpdateCommand.Connection = ConnectionString;
                ConnectionString.Open();
                UpdateCommand.CommandText = "UPDATE Member SET Pass = @Pass, NewPassword = null WHERE NewPassword = @NewPassword";
                UpdateCommand.Parameters.AddWithValue("@Pass", TextBoxPass.Text);
                UpdateCommand.Parameters.AddWithValue("@NewPassword", result);
                UpdateCommand.ExecuteNonQuery();
                ConnectionString.Close();

                if (IsPostBack)
                {
                    TextBoxPass.Text = "";
                    TextBoxRepeat.Text = "";
                }

                Response.Redirect("~/Admin.aspx");
            }

            else
            {
                LabelError.Text = "Adgangskoden er ikke ens!";
            }
        }
    }
}