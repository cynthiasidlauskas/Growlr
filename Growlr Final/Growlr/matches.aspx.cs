using System;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

namespace Growlr_Final.Growlr
{
    public partial class Matches : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
           
            DataSet ds = (DataSet)Session["sessDataSet"];
            GridView1.DataSource = ds;
            GridView1.DataBind();





        }

    

        protected void reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx");
        }


    }
}
