using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Diagnostics;

namespace _02_componenti
{
    public partial class _12_Directory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string realPath = Server.MapPath("~/Upload/");

            if (Directory.Exists(realPath + "test"))
            {
                Directory.Delete(realPath + "test",true);
            }
            if (Directory.Exists(realPath + "test2"))
            {
                Directory.Delete(realPath + "test2", true);
            }

            Directory.CreateDirectory(realPath + "test");
            Directory.Move(realPath + "test", realPath + "test2");
            

            string[] files = Directory.GetFiles(realPath,"*.txt");
            lblResultFiles.Text = string.Join(",", files);

            List<string> lstFiles = new List<string>();
            foreach(string file in files)
            {
                lstFiles.Add( Path.GetFileName(file) );
            }
            lblResultFiles.Text = string.Join(",", lstFiles);
            

            string[] dirs = Directory.GetDirectories(realPath,"test*");
            lblResultDirs.Text = string.Join(",", dirs);

            List<string> lstDirs = new List<string>();
            foreach (string dir in dirs)
            {
                lstDirs.Add(Path.GetFileName(dir));
            }
            lblResultDirs.Text = string.Join(",", lstDirs);

            //Path.GetExtension()
            //Path.GetDirectoryName()
            //Path.GetFullPath()
            

        }
    }
}