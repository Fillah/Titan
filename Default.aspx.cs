using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebudviklingProjekt1
{

    public partial class Defaults : System.Web.UI.Page
    {
        //GLOBAL connectionstring
        SqlConnection ConnectionString = new SqlConnection("Server=tcp:nf4bjl4q29.database.windows.net,1433;Database=DBO.Bistroteket;User ID=bistroteket@nf4bjl4q29;Password=IsAllowed123#;Trusted_Connection=False;Connection Timeout=30;");

        protected void Page_Load(object sender, EventArgs e)
        {
            string value = DropDownProfession.SelectedValue.ToString();
            
            if (value == "0")
            {
                LabelSpots.Visible = false;
            }
            else
            {
                LabelSpots.Visible = true;
                LabelSpots.Text = value + " spot(s) left";
            }   
            
            if (!IsPostBack)
            {
                //DO NOTHING
            }

            else {
                ButtonSubmit.Focus();
                Page.MaintainScrollPositionOnPostBack = true;
            }

            Page.LoadComplete += new EventHandler(Page_LoadComplete);
        }

        protected void Page_LoadComplete(object sender, EventArgs e)
        {
            foreach (ListItem item in DropDownProfession.Items)
            {
                if (item.Value == "0")
                {
                    item.Attributes.Add("disabled", "disabled");
                }

                else
                {
                    //DO NOTHING
                }
            }
        }

        protected void ButtonSubmit_Click(object sender, EventArgs e)
        {
            int value = Convert.ToInt32(DropDownProfession.SelectedValue);

            /* SQL-queries */

            SqlCommand UpdateCmd = new SqlCommand("UPDATE Profession SET Value = @Value WHERE Name = @Name", ConnectionString);

            UpdateCmd.Parameters.AddWithValue("@Value", value - 1);
            UpdateCmd.Parameters.AddWithValue("@name", DropDownProfession.SelectedItem.Text);

            SqlCommand InsertCmd = new SqlCommand("INSERT INTO Accepted(Profession, Fname, Lname, Number, Email, Color) VALUES (@Profession, @Fname, @Lname, @Number, @Email, @Color)", ConnectionString);

            InsertCmd.Parameters.AddWithValue("@Profession", DropDownProfession.SelectedItem.Text);
            InsertCmd.Parameters.AddWithValue("@Fname", TextBoxFirstname.Text);
            InsertCmd.Parameters.AddWithValue("@Lname", TextBoxLastname.Text);
            InsertCmd.Parameters.AddWithValue("@Number", TextBoxPhone.Text);
            InsertCmd.Parameters.AddWithValue("@Email", TextBoxEmail.Text);
            InsertCmd.Parameters.AddWithValue("@Color", TextBoxColor.Text);

            ConnectionString.Open();
            UpdateCmd.ExecuteNonQuery();
            InsertCmd.ExecuteNonQuery();
            ConnectionString.Close();

            if (IsPostBack)
            {
                DropDownProfession.SelectedValue = "0";
                TextBoxFirstname.Text = "";
                TextBoxLastname.Text = "";
                TextBoxPhone.Text = "";
                TextBoxEmail.Text = "";
                TextBoxColor.Text = "";
            }
            else
            {
                DropDownProfession.Items.Clear();
                DropDownProfession.DataBind();
            }
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand SelectCommand = new SqlCommand();
            SelectCommand.Connection = ConnectionString;
            ConnectionString.Open();
            SelectCommand.CommandText = "SELECT Value FROM Profession WHERE Name = @Name";
            SelectCommand.Parameters.AddWithValue("@Name", DropDownProfession.SelectedItem.Text);
            var result = SelectCommand.ExecuteReader();

            while (result.Read())
                {
                    var Values = result.GetInt32(0);
                    
                    if (Values == 0)
                    {
                        LabelSpots.Visible = false;
                    }

                    else
                    {
                        LabelSpots.Visible = true;
                        LabelSpots.Text = Values + " spot(s) left";
                    }
                }
                ConnectionString.Close();
        }
        
        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}