using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Growlr_Final.Growlr
{
    public partial class Four : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button9_Click(object sender, EventArgs e)
        {

            {

                string hypoallergenic = string.Empty;
                if (noHypo.Checked)
                {
                    Session["hypoallergenic"] = "false";
                }
                else
                {
                    Session["hypoallergenic"] = "true";
                }
                string homebody = string.Empty;
                if (noHomebody.Checked)
                {
                    Session["homebody"] = "false";
                }
                else
                {
                    Session["homebody"] = "true";
                }

                string travel = string.Empty;
                if (noTravel.Checked)
                {
                    Session["travel"] = "false";
                }
                else
                {
                    Session["travel"] = "true";
                }

            }
            Response.Redirect("five.aspx");
        }
    }
}
        
