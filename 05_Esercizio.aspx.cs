using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _05_Esercizio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSalva_Click(object sender, EventArgs e)
        {

            /*
            bool valido = false;
            int contaSel = 0;
            foreach (ListItem elem in chkMaterie.Items)
            {
                if (elem.Selected)
                {
                    contaSel++;
                }
            }

            if (contaSel >= 3)
            {
                valido = true;
                
            }
            else
            {
                lblErrMaterie.Text = "Selezionare almeno 3 checkbox";
                valido = false;
            }
            */

            //if (Page.IsValid && valido)
            if (Page.IsValid )
            {
                string res = "Nome:" + txtNome.Text + "<br/>";
                res += "Cognome:" + txtCognome.Text + "<br/>";
                res += "Email:" + txtEmail.Text + "<br/>";
                res += "Età:" +  txtEta.Text + "<br/>"; 
                res += "Genere:" + rdGenere.SelectedItem.Text + "<br/>";
                res += "Materie preferite:";
                foreach (ListItem elem in chkMaterie.Items)
                {
                    
                    if (elem.Selected)
                    {
                        res += elem.Text + " ";
                    }
                    res += "<br/>";

                }

                lblResult.Text = res;
                pnlRisultati.Visible = true;
                pnlModulo.Visible = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
        }
    }
}