using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
    
namespace _02_componenti
{
    public partial class _18_Download : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            string FileToDownload = Server.MapPath("~/Upload/img.png");
            Response.ContentType = "application/octet-stream";            
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + Path.GetFileName(FileToDownload));
            Response.AppendHeader("Content-Transfer-Encoding", "binary");
            Response.TransmitFile(FileToDownload);
            Response.End();
        }

        protected void btnRedirect_Click(object sender, EventArgs e)
        {
            Response.Redirect(@"https://www.yahoo.com");
            Response.End();

        }
    }
}