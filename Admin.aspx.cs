using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.SessionState;

namespace WebudviklingProjekt1
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["Cookie"] != null)
                Response.Cookies.Set(Request.Cookies["Cookie"]);
            else
                Response.Cookies.Set(new HttpCookie("Cookie", ""));

            Response.Cookies["Cookie"].Expires = DateTime.Now.AddDays(1);

            // Display the Request cookie on the page
            if (Response.Cookies["Cookie"].Value == "")
                LabelError.Text = "Cookie is null";
            else
                LabelError.Text = Request.Cookies["Cookie"].Value;
        }

        protected bool IsEmail(string email)
        {
            //Check for any "." chars
            if (email.Contains("."))
            {
                //Check for any "@" chars
                if (email.Contains("@"))
                {
                    //Get 1st position of "@"
                    int atPosition = email.IndexOf("@");
                    if (atPosition >= 0)
                    {
                        string remainerEmail = email.Substring(atPosition + 1);
                        if (!remainerEmail.Contains("@"))
                        {
                            return true;
                        }
                    }
                }
            }

            else
            {

            }

            return false;
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {

            //Calling method to check if is a valid email
            if (IsEmail(TextBoxUsername.Text))
            {
                //Is a valid email

                SqlConnection ConnectionString = new SqlConnection("Server=tcp:nf4bjl4q29.database.windows.net,1433;Database=DBO.Bistroteket;User ID=bistroteket@nf4bjl4q29;Password=IsAllowed123#;Trusted_Connection=False;Connection Timeout=30;");

                ConnectionString.Open();

                String CheckUser = "SELECT count(*) from Member WHERE Email= '" + TextBoxUsername.Text + "'";
                SqlCommand CheckEmail = new SqlCommand(CheckUser, ConnectionString);
                int temp = Convert.ToInt32(CheckEmail.ExecuteScalar().ToString());
                ConnectionString.Close();

                if (temp == 1)
                {
                    ConnectionString.Open();
                    string CheckPassword = "SELECT Pass from Member where Email='" + TextBoxUsername.Text + "'";
                    SqlCommand CheckPasswordCommand = new SqlCommand(CheckPassword, ConnectionString);
                    string Pass = CheckPasswordCommand.ExecuteScalar().ToString().Replace(" ", "");

                    if (Pass == TextBoxPassword.Text)
                    {
                        string CheckActivationCode = "SELECT ActivationCode FROM Member WHERE Email='" + TextBoxUsername.Text + "'";
                        SqlCommand CheckActivationCodeCommand = new SqlCommand(CheckActivationCode, ConnectionString);
                        string ActivationCode = CheckActivationCodeCommand.ExecuteScalar().ToString().Replace(" ", "");

                        if (string.IsNullOrEmpty(ActivationCode))
                        {

                            if (CheckBox.Checked == true)
                            {
                                Response.Cookies["Cookie"].Value = "Cookie is set";
                                Response.Redirect("~/Adminpage.aspx");

                            }
                            else
                            {
                                Session["New"] = TextBoxUsername.Text;
                                Response.Redirect("~/Adminpage.aspx");
                            }
                        }

                        else
                        {
                            LabelError.Text = "User haven't been activated yet";
                        }
                    }
                    else
                    {
                        LabelError.Text = "Wrong password. Try again";
                    }
                }
                else
                {
                    LabelError.Text = "Wrong username. Try again";
                }

                ConnectionString.Close();
            }

            else
            {
                LabelError.Text = "Is not a valid email";
            }
        }
    }
}