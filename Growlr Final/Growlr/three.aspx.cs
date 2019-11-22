using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Growlr_Final.Growlr
{
    public partial class Three : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)

        {
           
            {
                string children = string.Empty;
                if (noChildren.Checked)
                {
                    Session["children"] = "false";
                }
                else
                {
                    Session["children"] = "true";
                }

                string dogs = string.Empty;
                if (noDogs.Checked)
                {
                    Session["dogs"] = "false";

                }
                else
                {
                    Session["dogs"] = "true";
                }
                string cats = string.Empty;
                if (noCats.Checked)
                {
                    Session["cats"] = "false";

                }
                else
                {
                    Session["cats"] = "true";
                }

            
            }
            Response.Redirect("four.aspx");
        } 
    }
}