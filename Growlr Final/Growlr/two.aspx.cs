using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Growlr_Final.Growlr
{
    public partial class Two : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitZip_Click(object sender, EventArgs e)
        {
            Session["zip"] = zip.Text;
           

            Response.Redirect("three.aspx");


        }
    }
}