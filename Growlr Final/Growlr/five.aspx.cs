using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace Growlr_Final.Growlr
{
    public partial class Five: System.Web.UI.Page
    {
       
      
        protected void Page_Load(object sender, EventArgs e) {
          

        }
        protected void Button7_Click(object sender, EventArgs e)
        {
                string athletic = string.Empty;
                if (noAthletic.Checked)
                {
                    athletic = "1";
                }
                else if (sometimesAthletic.Checked)
                {
                    athletic = "2";
                }
                else
                {
                    athletic = "3";
                }

                string challenge = string.Empty;
                if (noChallenge.Checked)
                {
                    challenge = "1";
                }
                else if(sometimesChallenge.Checked)
                {
                    challenge = "2";
                }
                else
                {
                    challenge = "3";
                }

                string outdoor = string.Empty;
                if (noOutdoor.Checked)
                {
                    outdoor = "1";
                }
               else if (sometimesOutdoor.Checked)
                {
                    outdoor = "2";
                }
                else
                {
                    outdoor = "3";
                }

                string affectionate = string.Empty;
                if (noAffectionate.Checked)
                {
                    affectionate = "1";
                }
                else if (sometimesAffectionate.Checked)
                {
                    affectionate = "2";
                }
                else
                {
                    affectionate = "3";
                }

                string mainconn = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
            


                DataSet ds = new DataSet();
                using (SqlConnection conn = new SqlConnection(mainconn))
                {
                    SqlCommand sqlcomm = new SqlCommand("spSubmitSurvey", conn);
                    sqlcomm.Parameters.AddWithValue("@userHypo", Session["hypoallergenic"].ToString());
                    sqlcomm.Parameters.AddWithValue("@userAthletic", Session["homebody"].ToString());
                    sqlcomm.Parameters.AddWithValue("@userTravel", Session["travel"].ToString());
                    sqlcomm.Parameters.AddWithValue("@userQ1", athletic);
                    sqlcomm.Parameters.AddWithValue("@userQ2", challenge);
                    sqlcomm.Parameters.AddWithValue("@userQ3", outdoor);
                    sqlcomm.Parameters.AddWithValue("@userQ4", affectionate);

                    sqlcomm.CommandType = CommandType.StoredProcedure;

                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = sqlcomm;

                    da.Fill(ds);
                    Session["sessDataSet"] = ds;
                    Response.Redirect("Matches.aspx");
                    
                    
                }
               

            }  
        }

     
    }
