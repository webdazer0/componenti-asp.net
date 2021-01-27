using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _04_FieldValidatorCustom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
           ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            
           
        }

        protected void btnTest_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            {
                string checkSel = "";
                foreach (ListItem elem in chkSport.Items)
                {
                    if (elem.Selected)
                    {
                        checkSel += elem.Text + "</br>";
                    }
                }

                lblRisultato.Text = "Hai scritto " + txtCommento.Text + " - " + checkSel;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            

            if (args.Value.Length > 8 && args.Value.Length <= 50)
            {
                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;
            }
        }
    }
}