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
    public partial class _01_DataReader : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string cnn = ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            SqlConnection oConn = new SqlConnection(cnn);
            oConn.Open();
            
            string sSQL = "SELECT idallievo, nome FROM allievi WHERE Cognome=@ExtCognome";

            SqlCommand oCmd = new SqlCommand(sSQL, oConn);
            oCmd.Parameters.AddWithValue("ExtCognome", "Rossi");

            SqlDataReader oReader = oCmd.ExecuteReader();
            
            while (oReader.Read())
            {
                Debug.WriteLine(oReader["idAllievo"].ToString() + " " + oReader["nome"]);
            }

           
        }
    }
}