using System;
using System.Data;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Reflection.Emit;

    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btn_login_click(object sender, EventArgs e)
        {
            string user = Session["User"] as string;

            if (user != null)
            {
                FormsAuthentication.SignOut();

                Session.Abandon();
                Response.Redirect("profile.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }


    }