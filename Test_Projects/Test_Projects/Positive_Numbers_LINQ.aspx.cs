using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test_Projects
{
    public partial class Positive_Numbers_LINQ : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<int> numbersList = new List<int> { -10, -5, 0, 7, -2, 15, 20, -8, 12 };

            var positiveNumbers = from num in numbersList
                                  where num > 0
                                  select num;

            PositiveNumbersLabel.Text = "Positive numbers from the list: " + string.Join(", ", positiveNumbers);
        }

    }
}