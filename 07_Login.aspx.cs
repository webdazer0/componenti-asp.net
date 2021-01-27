using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _07_Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ScriptResourceDefinition jQuery = new ScriptResourceDefinition();
            jQuery.Path = "~/Scripts/jquery-1.12.4.min.js";
            jQuery.DebugPath = "~/Scripts/jquery-1.12.4.js";
            jQuery.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.12.4.min.js";
            jQuery.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.12.4.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", jQuery);

            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.WebForms;

            
            bool autenticato = (System.Web.HttpContext.Current.User != null) 
                                && System.Web.HttpContext.Current.User.Identity.IsAuthenticated;
            if(autenticato)
            {
                Response.Redirect(Login1.DestinationPageUrl);
            }
            
        }

        private bool ValidazioneUtente(string username,string password)
        {

            if(username=="lorenzo" && password=="1234")
            {
                return true;
            }

            return false;

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if(ValidazioneUtente(Login1.UserName,Login1.Password))
            {
                e.Authenticated = true;                
            }
        }

       
    }
}