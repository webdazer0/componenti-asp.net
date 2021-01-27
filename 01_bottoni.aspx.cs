using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace _02_componenti
{
    public partial class _01_bottoni : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnCiao_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("Hai premuto il pulsante ciao!");
        }

        protected void btnCambiaLabel_Click(object sender, EventArgs e)
        {
            lblTest.Text = "Hai cliccato il bottone";
            lblTest.CssClass = "pippo";
            btnCiao.Text = "Hai cliccato l'altro bottone";
        }
    }
}