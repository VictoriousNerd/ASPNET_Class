using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace employee_management_system
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btn_login_click(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString;
            string email = email_login.Text.Trim();
            string password = password_login.Text.Trim();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT emp_ID, emp_password FROM employees WHERE emp_email = @emp_email", con))
                {
                    cmd.Parameters.AddWithValue("@emp_email", email);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        string storedPassword = reader["emp_password"].ToString();
                        int empID = Convert.ToInt32(reader["emp_ID"]);
                        reader.Close();

                        if (storedPassword == password)
                        {
                            // Create a cookie to store emp_ID
                            HttpCookie cookie = new HttpCookie("EmpID");
                            cookie.Value = empID.ToString();
                            cookie.Expires = DateTime.Now.AddDays(1);
                            Response.Cookies.Add(cookie);

                            Response.Redirect("profile.aspx");
                        }
                        else
                        {
                            // Incorrect password
                            Response.Write("<script>alert('Incorrect password.');</script>");
                        }
                    }
                    else
                    {
                        // Redirect to registration page if email does not exist
                        Response.Redirect("registration.aspx");
                    }
                }
            }
        }
        protected void btn_change_password(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString;
            string email = email_login.Text.Trim();
            string newPassword = password_change.Text.Trim();

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT emp_ID, emp_password FROM employees WHERE emp_email = @emp_email", con))
                {
                    cmd.Parameters.AddWithValue("@emp_email", email);
                    con.Open();
                    SqlDataReader reader = cmd.ExecuteReader();
                    if (reader.HasRows)
                    {
                        reader.Read();
                        string storedPassword = reader["emp_password"].ToString();
                        int empID = Convert.ToInt32(reader["emp_ID"]);
                        reader.Close();

                        if (storedPassword == newPassword)
                        {
                            // Update password
                            using (SqlCommand updateCmd = new SqlCommand("UPDATE employees SET emp_password = @emp_password WHERE emp_ID = @emp_ID", con))
                            {
                                updateCmd.Parameters.AddWithValue("@emp_password", newPassword);
                                updateCmd.Parameters.AddWithValue("@emp_ID", empID);
                                updateCmd.ExecuteNonQuery();
                            }

                            Response.Write("<script>alert('Password changed successfully.');</script>");
                        }
                        else
                        {
                            // Incorrect password
                            Response.Write("<script>alert('Incorrect password.');</script>");
                        }
                    }
                    else
                    {
                        // Redirect to registration page if email does not exist
                        Response.Redirect("registration.aspx");
                    }
                }
            }
        }
    }
}