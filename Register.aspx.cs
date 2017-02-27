using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
/* Mail */
using System.Net;
using System.Net.Mail;
using SendGrid;

namespace WebudviklingProjekt1
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
            if (IsEmail(TextBoxEmail.Text))
            {
                //Is a valid email
                SqlConnection ConnectionString = new SqlConnection("Server=tcp:nf4bjl4q29.database.windows.net,1433;Database=DBO.Bistroteket;User ID=bistroteket@nf4bjl4q29;Password=IsAllowed123#;Trusted_Connection=False;Connection Timeout=30;");

                /* SQL-queries */

                ConnectionString.Open();
                String CheckUser = "SELECT count(*) from Member WHERE Email= '" + TextBoxEmail.Text + "'";
                SqlCommand CheckEmail = new SqlCommand(CheckUser, ConnectionString);
                int temp = Convert.ToInt32(CheckEmail.ExecuteScalar().ToString());
                ConnectionString.Close();

                if (temp == 1)
                {
                    LabelError.Text = "Email findes allerede!";
                }

                else
                {

                    var chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                    var random = new Random();
                    var result = new string(
                        Enumerable.Repeat(chars, 8)
                                  .Select(s => s[random.Next(s.Length)])
                                  .ToArray());

                    SqlCommand InsertCommand1 = new SqlCommand("INSERT INTO Member (Email, Pass, ActivationCode) VALUES (@Email, @Pass, @ActivationCode)", ConnectionString);

                    InsertCommand1.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
                    InsertCommand1.Parameters.AddWithValue("@Pass", TextBoxPassword.Text);
                    InsertCommand1.Parameters.AddWithValue("@ActivationCode", result);

                    SqlCommand InsertCommand2 = new SqlCommand("INSERT INTO MemberInfo (FirstName, LastName, Number, MemberID) VALUES (@FirstName, @LastName, @Number, @@IDENTITY)", ConnectionString);

                    InsertCommand2.Parameters.AddWithValue("@FirstName", TextBoxFname.Text);
                    InsertCommand2.Parameters.AddWithValue("@LastName", TextBoxLname.Text);
                    InsertCommand2.Parameters.AddWithValue("@Number", TextBoxNumber.Text);

                    ConnectionString.Open();
                    InsertCommand1.ExecuteNonQuery();
                    InsertCommand2.ExecuteNonQuery();
                    ConnectionString.Close();

                    if (IsPostBack)
                    {
                        TextBoxFname.Text = "";
                        TextBoxLname.Text = "";
                        TextBoxNumber.Text = "";
                        TextBoxEmail.Text = "";
                        TextBoxPassword.Text = "";
                    }

                    Response.Redirect("MailConfirm.aspx?confirm=" + result);
                }
            }

            else
            {
                LabelError.Text = "Is not a valid email";
            }
        }
    }
}