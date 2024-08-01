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
    public partial class Default : System.Web.UI.Page
    {
        //Declare global connection string with path to Viewers database
        public string viewers = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\johnc\Desktop\Assessment_Practical2_37489917\Assessment_Practical2_37489917\App_Data\Viewers.mdf;Integrated Security=True";

        //Declare variables
        SqlConnection connViewers;
        SqlCommand commViewers;
        SqlDataReader readerViewers;

        protected void Page_Load(object sender, EventArgs e)
        {
            //Connect to the Viewers and Staff databases
            connViewers = new SqlConnection(viewers);
        }

        protected void btnViewerLogin_Click(object sender, EventArgs e)
        {
            //Open the connection
            connViewers.Open();

            //Initialize variables and select all fields from the Viewers database
            string sql = "SELECT * FROM Viewers";
            commViewers = new SqlCommand(sql, connViewers);

            //Read the data
            readerViewers = commViewers.ExecuteReader();

            //While-loop to loop through the data
            while (readerViewers.Read())
            {
                //If-else-if statement to confirm that correct data has been entered in the textboxes
                if (txtViewerUser.Text == readerViewers.GetValue(1).ToString() && txtViewerPass.Text == readerViewers.GetValue(2).ToString() && txtViewerEmail.Text == readerViewers.GetValue(3).ToString() && txtNumber.Text == readerViewers.GetValue(4).ToString())
                {
                    //Declare new cookie variables and assign them to their textboxes
                    HttpCookie cookie = new HttpCookie("viewerInfo");
                    cookie["Username"] = txtViewerUser.Text;
                    cookie["Password"] = txtViewerPass.Text;
                    cookie["Email"] = txtViewerEmail.Text;
                    cookie["PhoneNumber"] = txtNumber.Text;

                    //Load new Booking form as cookie
                    Response.Cookies.Add(cookie);
                    Response.Redirect("Booking.aspx");
                }
            }

            //Close the connection
            connViewers.Close();
        }

        protected void btnStaffLogin_Click(object sender, EventArgs e)
        {
           
        }

        protected void btnLoginStaff_Click(object sender, EventArgs e)
        {
            
        }
    }
}