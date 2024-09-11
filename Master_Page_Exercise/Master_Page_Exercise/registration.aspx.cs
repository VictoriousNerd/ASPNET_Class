using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_Page_Exercise
{
    public partial class contact_us : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ValidatePassword(object source, ServerValidateEventArgs args)
        {
            string password = args.Value;
            bool isValid = ValidatePasswordFormat(password);
            args.IsValid = isValid;
        }
        private bool ValidatePasswordFormat(string password)
        {
            bool hasUpperCase = false;
            bool hasLowerCase = false;
            bool hasNumber = false;

            foreach (char c in password)
            {
                if (char.IsUpper(c))
                    hasUpperCase = true;
                else if (char.IsLower(c))
                    hasLowerCase = true;
                else if (char.IsDigit(c))
                    hasNumber = true;
            }

            return hasUpperCase && hasLowerCase && hasNumber;
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string successMsg = Convert.ToString("Form Submitted succesfully.");

            SubmitSuccess.Text = successMsg.ToString();
        }





    }
}