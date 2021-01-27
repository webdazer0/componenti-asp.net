using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace _02_componenti
{
    public partial class _09_DbSelect : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            dbc.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDb"].ConnectionString;
            dbc.SelectCommand = "SELECT Id,Nome,Eta AS Age,Email AS [E-mail] FROM Nominativi";

            griSelect.DataSource = dbc;
            griSelect.DataBind();
        }

        protected void griSelect_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idSelezionato = (int)griSelect.SelectedValue;
            dbc.SelectCommand = "SELECT Id,Nome,Cognome,Eta,Email FROM Nominativi WHERE Id=@ExtId";
            dbc.SelectParameters.Clear();
            dbc.SelectParameters.Add("ExtId",  idSelezionato.ToString());

            FormView1.DataSource = dbc;
            FormView1.DataBind();
            FormView1.Visible = true;

        }

        protected void btnAggiorna_Click(object sender, EventArgs e)
        {
            int idSelezionato = (int)griSelect.SelectedValue;

            dbc.UpdateCommand = @"UPDATE Nominativi 
                                    SET 
                                        Nome = @UpdNome
                                        ,Cognome = @UpdCognome
                                        ,Eta = @UpdEta
                                        ,Email = @UpdEmail
                                  WHERE Id=@ExtId";

            TextBox txtNome = (TextBox)FormView1.FindControl("txtNome") ;
            TextBox txtCognome = (TextBox)FormView1.FindControl("txtCognome") ;
            TextBox txtEta = (TextBox)FormView1.FindControl("txtEta") ;
            TextBox txtEmail = (TextBox)FormView1.FindControl("txtEmail") ;

            dbc.UpdateParameters.Clear();
            dbc.UpdateParameters.Add("ExtId", idSelezionato.ToString());
            dbc.UpdateParameters.Add("UpdNome", System.Data.DbType.String, txtNome.Text);
            dbc.UpdateParameters.Add("UpdCognome", System.Data.DbType.String, txtCognome.Text);
            dbc.UpdateParameters.Add("UpdEta", System.Data.DbType.Int32, txtEta.Text);
            dbc.UpdateParameters.Add("UpdEmail", System.Data.DbType.String, txtEmail.Text);

            dbc.Update();

            FormView1.Visible = false;
            griSelect.DataBind();

        }

        protected void griSelect_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string idSelezionato = e.Keys["Id"].ToString();

            dbc.DeleteCommand = @"DELETE FROM Nominativi 
                                    WHERE Id=@ExtId";
            dbc.DeleteParameters.Add("ExtId", idSelezionato.ToString());
            dbc.Delete();
            griSelect.DataBind();

        }
    }
}