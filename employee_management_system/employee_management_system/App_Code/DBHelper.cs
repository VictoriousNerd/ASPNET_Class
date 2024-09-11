using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


public class DBHelper
{
    public static bool CheckUser(string username, string password)
    {
        DataTable result = null;
        try
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "select password from dbo.employees where emp_email = @emp_email";
                    cmd.Parameters.Add(new SqlParameter("@emp_email", username));

                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        result = new DataTable();
                        da.Fill(result);
                    }

                    if (password.Trim() == result.Rows[0]["password"].ToString().Trim())
                    {
                        return true;
                    }
                }
            }
        }
        catch (Exception ex)
        {
        }
        return false;
    }
}
