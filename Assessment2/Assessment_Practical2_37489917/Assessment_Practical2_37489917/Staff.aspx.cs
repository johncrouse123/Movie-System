using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//Use SQL Client and Data Systems
using System.Data.SqlClient;
using System.Data;

namespace Assessment_Practical2_37489917
{
    public partial class Staff : System.Web.UI.Page
    {
        //Declare global connection string with path to Viewers database
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\johnc\Desktop\Assessment_Practical2_37489917\Assessment_Practical2_37489917\App_Data\Staff.mdf;Integrated Security=True";

        //Declare variables
        SqlConnection connection;
        SqlCommand command;
        SqlDataReader dataReader;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Connect to the Staff database
            connection = new SqlConnection(connectionString);
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //Open the connection
            connection.Open();

            //Initialize variables and select all fields from the Staff database
            string sql = "SELECT * FROM Staff";
            command = new SqlCommand(sql, connection);

            //Read the data
            dataReader = command.ExecuteReader();

            //While-loop to loop through the data
            while (dataReader.Read())
            {
                //If-else-if statement to confirm that correct data has been entered in the textboxes
                if (txtUsername.Text == dataReader.GetValue(1).ToString() && txtPassword.Text == dataReader.GetValue(2).ToString() && txtEmail.Text == dataReader.GetValue(3).ToString() && txtNumber.Text == dataReader.GetValue(4).ToString())
                {
                    //Declare new cookie variables and assign them to their textboxes
                    HttpCookie cookie = new HttpCookie("staffInfo");
                    cookie["Username"] = txtUsername.Text;
                    cookie["Password"] = txtPassword.Text;
                    cookie["Email"] = txtEmail.Text;
                    cookie["PhoneNumber"] = txtNumber.Text;

                    //Load new Booking form as cookie
                    Response.Cookies.Add(cookie);
                    Response.Redirect("Maintain.aspx");
                }
            }

            //Close the connection
            connection.Close();
        }
    }
}