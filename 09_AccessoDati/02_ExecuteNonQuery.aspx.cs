using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

namespace _02_componenti._09_AccessoDati
{
    public partial class _02_ExecuteNonQuery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnn = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            SqlConnection oConn = new SqlConnection(cnn);
            oConn.Open();

            string sSQL = @"  INSERT INTO
                                    Nominativi 
                                    (Nome,Cognome,Eta,Email)
                                    VALUES
                                    (@InsNome,@InsCognome,@InsEta,@InsEmail)
                        ";

            SqlCommand oCmd = new SqlCommand(sSQL, oConn);
            
            oCmd.Parameters.AddWithValue("InsNome", "Lorenzo");
            oCmd.Parameters.AddWithValue("InsCognome",  "Babbini");
            oCmd.Parameters.AddWithValue("InsEta",  41);
            oCmd.Parameters.AddWithValue("InsEmail",  "l.babbini@epicenter.it");

            int recaff = oCmd.ExecuteNonQuery();
            Debug.WriteLine(recaff);
            
        }
    }
}