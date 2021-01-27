using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _03_TextBox : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //TextBox1.Text = "Ciao ciao";

            //lblResult.Text = TextBox1.Text;

            //lblResult.Text = rdGenere.SelectedItem.Value;

            lblResult.Text = "";
            
            foreach (ListItem elem in chkSport.Items)
            {
                if(elem.Selected)
                {
                    lblResult.Text += elem.Text + "</br>";
                }
            }
            
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}