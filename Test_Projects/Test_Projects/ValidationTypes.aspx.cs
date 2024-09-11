using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Projects
{
    public partial class ValidationTypes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void CustomValidation_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "BATMAN")
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                SubmitSuccess.Text = "Form submitted successfully!";
                SubmitSuccess.Visible = true;
            }
            else
            {
                SubmitSuccess.Text = "Form NOT sumbitted!";
                SubmitSuccess.Visible = true;
            }
        }
    }
}