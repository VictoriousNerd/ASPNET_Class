using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;

namespace Test_Projects
{
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    [ScriptService]
    public class AccountService : System.Web.Services.WebService
    {
        [WebMethod]
        public DataSet GetAccountInformation()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["userDbConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("SELECT AccountNumber, AccountName, AccountType, AccountBalance FROM dbo.acc_info", connection);
                SqlDataAdapter adapter = new SqlDataAdapter(command);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                return ds;
            }
        }
    }
    public partial class Account_Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }
        private void BindGridView()
        {
            AccountService service = new AccountService();
            DataSet ds = service.GetAccountInformation();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}