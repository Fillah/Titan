using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebudviklingProjekt1
{
    public partial class Adminpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] == null)
            {
                Response.Redirect("/Default.aspx");
            }
        }

        protected void DropDownProfession_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            //List item
            
            List<Person> AllAccepted = new List<Person>();

            SqlConnection ConnectionString = new SqlConnection("Data Source=tcp:nf4bjl4q29.database.windows.net,1433;Initial Catalog=DBO.Bistroteket;Integrated Security=False;User ID=bistroteket@nf4bjl4q29;Password=IsAllowed123#;Connect Timeout=30;Encrypt=True");

            using (var connection = ConnectionString)
                    {
                        // Build your query
                        var query = "SELECT * FROM Accepted WHERE Profession ='" + DropDownProfession.SelectedItem.Text + "'";

                        // Build a command to execute your query
                        using (var cmd = new SqlCommand(query, connection))
                        {
                            

                            // Open your connection
                            connection.Open();

                            var accepted = cmd.ExecuteReader();
                            while (accepted.Read())
                            {
                                // Add the values for this row
                                var x = new Person();

                                x.Profession = accepted.GetSqlValue(1).ToString();
                                x.Fname = accepted.GetSqlValue(2).ToString();
                                x.Lname = accepted.GetSqlValue(3).ToString();
                                x.Number = accepted.GetSqlValue(4).ToString();
                                x.Email = accepted.GetSqlValue(5).ToString();
                                x.Color = accepted.GetSqlValue(6).ToString();

                                AllAccepted.Add(x);
                            }

                            connection.Close();
                        }
                }

            GridView1.DataSource = AllAccepted;
            GridView1.DataBind();
        }
    }
}