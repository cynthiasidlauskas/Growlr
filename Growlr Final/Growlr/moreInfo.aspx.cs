using System;
 




namespace Growlr_Final.Growlr
{
    public partial class moreInfo : System.Web.UI.Page
    {
     
    
        protected void Page_Load(object sender, EventArgs e)
        {

           //zip.Value = Session["zip"].ToString();
           // kids.Value = Session["children"].ToString();
           // dog.Value = Session["dogs"].ToString();
           // cat.Value = Session["cats"].ToString();
           // dogBreed.Value = Request.QueryString["DogBreed"].ToString();

        }

        protected void reset_Click(object sender, EventArgs e)
        {
            Response.Redirect("main.aspx");
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("matches.aspx");
        }

       
    }
}

