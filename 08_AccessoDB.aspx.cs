using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _08_AccessoDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dbc.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDb"].ConnectionString;  
            
        }

        protected void btnSalva_Click(object sender, EventArgs e)
        {
            
            dbc.InsertCommand = @"  INSERT INTO
                                    Nominativi 
                                    (Nome,Cognome,Eta,Email)
                                    VALUES
                                    (@InsNome,@InsCognome,@InsEta,@InsEmail)
                        ";
            
            dbc.InsertParameters.Add("InsNome", System.Data.DbType.String, txtNome.Text);
            dbc.InsertParameters.Add("InsCognome", System.Data.DbType.String, txtCognome.Text);
            dbc.InsertParameters.Add("InsEta", System.Data.DbType.Int32, txtEta.Text);
            dbc.InsertParameters.Add("InsEmail", System.Data.DbType.String, txtEmail.Text);
            dbc.Insert();
            

            /*
            string sSQL = "INSERT INTO Nominativi (Nome,Cognome,Eta,Email) VALUES (";
            sSQL += "'" + txtNome.Text + "',";
            sSQL += "'" + txtCognome.Text + "',";
            sSQL += "'" + txtEta.Text + "',";
            sSQL += "'" + txtEmail.Text + "')";
            */

            //dbc.InsertCommand = sSQL;
            //dbc.Insert();

            pnlInsert.Visible = false;
            pnlSalvato.Visible = true;
            
        }
    }
}