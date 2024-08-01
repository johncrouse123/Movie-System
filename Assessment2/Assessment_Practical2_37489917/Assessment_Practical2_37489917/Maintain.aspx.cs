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
    public partial class Maintain : System.Web.UI.Page
    {
        //Declare global connection string with path to Movies database
        public string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\johnc\Desktop\Assessment_Practical2_37489917\Assessment_Practical2_37489917\App_Data\Movies.mdf;Integrated Security=True";

        //Declare variables
        SqlConnection connection;
        SqlCommand command;
        SqlDataAdapter dataAdapter;
        DataSet dataSet;

        //Declare public string for Genre
        public string genre = "";

        //Method to load new data on the datagrid
        protected void loadAll()
        {
            //Declare variables
            dataAdapter = new SqlDataAdapter();
            dataSet = new DataSet();

            //Initialize variables and display all fields from the Movies table
            string sql = "SELECT * FROM Movies";
            command = new SqlCommand(sql, connection);

            //Fill the dataset
            dataAdapter.SelectCommand = command;
            dataAdapter.Fill(dataSet, "Movies");

            //Move data to datagrid
            dgvMovies.DataSource = dataSet;
            dgvMovies.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            //Connect to the database
            connection = new SqlConnection(connectionString);

            //Open the connection
            connection.Open();

            //Load new data
            loadAll();

            //Close the connection
            connection.Close();
        }

        protected void txtSearch_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
           
            //Open the connection
            connection.Open();

            //Initialize variables and display all fields from the Movies table
            string sql = $"INSERT INTO Movies(Title, Genre, Rating, Price) VALUES('{txtTitle.Text}', '{Session["Genre"]}', '{txtRating.Text}', '{txtPrice.Text}')";
            command = new SqlCommand(sql, connection);

            //Execute deleting data
            dataAdapter = new SqlDataAdapter();
            dataAdapter.InsertCommand = command;
            dataAdapter.InsertCommand.ExecuteNonQuery();

            //Load new data
            loadAll();

            //Close the connection
            connection.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            
            //Open the connection
            connection.Open();

            //Initialize variables and display all fields from the Movies table
            string sql = $"UPDATE Movies SET Genre = '{Session["Genre"]}', Rating = '{txtRating.Text}', Price = '{txtPrice.Text}' WHERE Title = '{txtTitle.Text}'";
            command = new SqlCommand(sql, connection);

            //Execute deleting data
            dataAdapter = new SqlDataAdapter();
            dataAdapter.InsertCommand = command;
            dataAdapter.InsertCommand.ExecuteNonQuery();

            //Load new data
            loadAll();

            //Close the connection
            connection.Close();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            //Open the connection
            connection.Open();

            //Initialize variables and display all fields from the Movies table
            string sql = $"DELETE FROM Movies WHERE Title = '{txtDelete.Text}'";
            command = new SqlCommand(sql, connection);

            //Execute deleting data
            dataAdapter = new SqlDataAdapter();
            dataAdapter.DeleteCommand = command;
            dataAdapter.DeleteCommand.ExecuteNonQuery();

            //Load new data
            loadAll();

            //Close the connection
            connection.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Open the connection
            connection.Open();

            //Declare variables
            dataAdapter = new SqlDataAdapter();
            dataSet = new DataSet();

            //Initialize variables and display all fields from the Movies table
            string sql = $"SELECT * FROM Movies WHERE Title LIKE '%{txtSearch.Text}%' OR Genre LIKE '%{txtSearch.Text}%' OR Rating LIKE '%{txtSearch.Text}%'";
            command = new SqlCommand(sql, connection);

            //Fill the dataset
            dataAdapter.SelectCommand = command;
            dataAdapter.Fill(dataSet, "Movies");

            //Move data to datagrid
            dgvMovies.DataSource = dataSet;
            dgvMovies.DataBind();

            //Close the connection
            connection.Close();
        }

        protected void rdbAction_CheckedChanged(object sender, EventArgs e)
        {
            //Set genre to Action
            Session["Genre"] = rdbAction.Text;
        }

        protected void rdbAdventure_CheckedChanged(object sender, EventArgs e)
        {
            //Set genre to Adventure
            Session["Genre"] = rdbAdventure.Text;
        }

        protected void rdbDrama_CheckedChanged(object sender, EventArgs e)
        {
            //Set genre to Drama
            Session["Genre"] = rdbDrama.Text;
        }

        protected void rdbComedy_CheckedChanged(object sender, EventArgs e)
        {
            //Set genre to Comedy
            Session["Genre"] = rdbComedy.Text;
        }

        protected void rdbHorror_CheckedChanged(object sender, EventArgs e)
        {
            //Set genre to Horror
            Session["Genre"] = rdbHorror.Text;
        }

        protected void rdbRomance_CheckedChanged(object sender, EventArgs e)
        {
            //Set genre to Romance
            Session["Genre"] = rdbRomance.Text;
        }
    }
}