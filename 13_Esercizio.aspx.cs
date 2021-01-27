using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace _02_componenti
{
    public partial class _13_Esercizio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            CaricaLista();
        }


        private void CaricaLista()
        {
            string realPath = Server.MapPath("~/");
            if (!Directory.Exists(realPath + "Upload"))
            {
                Directory.CreateDirectory(realPath + "Upload");
            }

            realPath = Server.MapPath("~/Upload/");

            if (!Directory.Exists(realPath + "Esercizio_13"))
            {
                Directory.CreateDirectory(realPath + "Esercizio_13");
            }
            realPath = Server.MapPath("~/Upload/Esercizio_13/");

            string[] files = Directory.GetFiles(realPath);
            List<ListItem> lstItems = new List<ListItem>();
            foreach (string file in files)
            {
                lstItems.Add(new ListItem(Path.GetFileName(file)));
            }

            bltElencoFile.DataSource = lstItems;
            bltElencoFile.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {

            if(uplFileutente.HasFile)
            {

                string realPath = Server.MapPath("~/Upload/Esercizio_13/");
                uplFileutente.SaveAs(realPath + uplFileutente.FileName);

                CaricaLista();
            }
        }
    }
}