using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

namespace _02_componenti
{
    public partial class _16_Date : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime data = DateTime.Now;

            string dtString = data.ToString("ddd/MM/yyyy HH:mm:ss");
            Label1.Text = dtString;

            string stringDate = "31/12/2021 23:59:59";
            DateTime dt = Convert.ToDateTime(stringDate);


            stringDate = "2021-12-31 23:59:59";
            DateTime dt2 = Convert.ToDateTime(stringDate);

            
            Debug.WriteLine(dt2.ToShortDateString());
            Debug.WriteLine(dt2.ToShortTimeString());



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = txtDatepicker.Text;
            if (txtDatepicker.Text != "")
            {
                DateTime dt = Convert.ToDateTime(txtDatepicker.Text);
            }
        }
    }
}