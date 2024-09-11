using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Projects
{
    public partial class password_change : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString;
            string username = Session["Username"].ToString();
            string currentPassword = txtCurrentPassword.Text;
            string newPassword = txtNewPassword.Text;
            string confirmPassword = txtConfirmPassword.Text;

            if (currentPassword != confirmPassword)
            {
                lblMessage.Text = "Current password and confirm password don't match.";
                return;
            }

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT COUNT(*) FROM test_database_table WHERE Username = @Username AND Password = @Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Password", currentPassword);
                connection.Open();

                int count = (int)command.ExecuteScalar();
                if (count > 0)
                {
                    query = "UPDATE test_database_table SET Password = @Password WHERE Username = @Username";
                    command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@Password", newPassword);
                    command.Parameters.AddWithValue("@Username", username);
                    command.ExecuteNonQuery();

                    lblMessage.Text = "Password changed successfully.";
                }
                else
                {
                    lblMessage.Text = "Incorrect current password.";
                }
            }
        }
    }
}