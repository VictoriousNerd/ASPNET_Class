using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btn_add_emp_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "INSERT INTO employees (emp_ID, emp_name, emp_address, emp_city, emp_DOB, emp_email, emp_password) " +
                               "VALUES (@emp_ID, @emp_name, @emp_address, @emp_city, @emp_DOB, @emp_email, @emp_password)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@emp_ID", emp_ID.Text);
                    command.Parameters.AddWithValue("@emp_name", emp_name.Text);
                    command.Parameters.AddWithValue("@emp_address", emp_address.Text);
                    command.Parameters.AddWithValue("@emp_city", emp_city.Text);
                    command.Parameters.AddWithValue("@emp_DOB", emp_DOB.Text);
                    command.Parameters.AddWithValue("@emp_email", emp_email.Text);
                    command.Parameters.AddWithValue("@emp_password", emp_password.Text);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Employee added successfully.');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Failed to add employee.');", true);
                    }
                }
            }
        }
        protected void btn_delete_emp_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM employees WHERE emp_ID = @emp_ID";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@emp_ID", emp_ID.Text);

                    connection.Open();
                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Employee deleted successfully.');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "alert('Failed to delete employee.');", true);
                    }
                }
            }
        }
    }
}