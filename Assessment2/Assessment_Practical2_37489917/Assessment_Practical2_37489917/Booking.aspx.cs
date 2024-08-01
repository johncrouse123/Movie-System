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
    public partial class Booking : System.Web.UI.Page
    {
        //Declare global connection string with path to Movies database
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\johnc\Desktop\Assessment_Practical2_37489917\Assessment_Practical2_37489917\App_Data\Movies.mdf;Integrated Security=True";

        //Declare variables
        SqlConnection connection;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        SqlDataReader dataReader;
        DataSet dataSet;

        //Declare public string for Genre
        public string genre = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            //Set the current date
            Calendar1.SelectedDate = DateTime.Today;

            //Connect to the Movies database
            connection = new SqlConnection(connectionString);

            //Open the connection
            connection.Open();

            //Initialize variables and display all fields from the Movies table
            string sql = "SELECT * FROM Movies";
            command = new SqlCommand(sql, connection);

            //Read the data
            dataReader = command.ExecuteReader();

            //Add header to the listbox
            lstbMovies.Items.Clear();
            lstbMovies.Items.Add("Available Movies");
            lstbMovies.Items.Add("Title \t (Genre) \t (Rating) \t (Price)");
            lstbMovies.Items.Add("______________________________________________________________________________________________________________________________________________________");

            //While loop to loop through the data
            while (dataReader.Read())
            {
                lstbMovies.Items.Add(dataReader.GetValue(1) + " \t (" + dataReader.GetValue(2) + ") \t (" + dataReader.GetValue(3) + ") \t (R " + dataReader.GetValue(4) + ")");
            }

            //Close the connection
            connection.Close();
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            //Declare date variable
            DateTime theDate = Calendar1.SelectedDate;

            //Assign value to string
            string movie = "";


            //If-else statements to display only the current and future dates
            if (theDate == DateTime.Today || theDate > DateTime.Today)
            {
                //Assign variable to its textbox
                movie = txtMovie.Text;

                //Open the connection
                connection.Open();

                //Declare variables
                dataAdapter = new SqlDataAdapter();
                dataSet = new DataSet();

                //Initialize variables and display all fields from the Movies table
                string sql = $"SELECT * FROM Movies WHERE Title LIKE '%{movie}%'";
                command = new SqlCommand(sql, connection);

                //Read the data
                dataReader = command.ExecuteReader();

                //While loop to loop through the data
                while (dataReader.Read())
                {
                    //Display the chosen date on the listbox with the selected movie title
                    lblDisplay.Text = dataReader.GetValue(1) + " BOOKED FOR: " + theDate.DayOfWeek + ", " + theDate.ToShortDateString();
                    lblDays.Text = "Come watch another movie again at " + theDate.AddDays(3).ToLongDateString() + " to earn a 50% DISCOUNT on any movie!!!";
                }

                //Close the connection
                connection.Close();

                
            }

            
            else
            {
                //Display error label message 
                lblDisplay.Text = "Please select Today or Any Upcoming day";
            }
            

            //Set focus back to the textbox
            lstbMovies.Focus();
        }
    }
}