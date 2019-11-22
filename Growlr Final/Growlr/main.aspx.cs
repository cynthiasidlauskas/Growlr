using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Growlr_Final.Growlr
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonMain_Click(object sender, EventArgs e)
        {
            Response.Redirect("two.aspx");
        }
    }
}