using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _10_FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            string UploadPath = Server.MapPath("~/Upload/");

            if(uplFile.HasFile)
            {
                string nome_file = UploadPath + uplFile.FileName;
                uplFile.SaveAs(nome_file);
            }

        }
    }
}