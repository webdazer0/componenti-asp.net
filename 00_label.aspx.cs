using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _00_label : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            lblHello.Text = "<strong>Pagina caricata</strong>";
            lblHello.CssClass = "pluto";

        }
    }
}