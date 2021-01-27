using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace _02_componenti
{
    public partial class _11_ManipolazioneFile : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            


            /*
            string path = Server.MapPath("~/Upload");
            string[] files = Directory.GetFiles(path);
            List<ListItem> lstFiles = new List<ListItem>();
            */


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string realPath = Server.MapPath("~/Upload/");
            
            
            //Files
            bool esiste1 = File.Exists(realPath + "1.txt");

            if (File.Exists(realPath + "2.txt"))
            {
                File.Delete(realPath + "2.txt");
            }
            if (File.Exists(realPath + "3.txt"))
            {
                File.Delete(realPath + "3.txt");
            }

            File.Copy(realPath + "1.txt", realPath + "2.txt");
            File.Move(realPath + "2.txt", realPath + "3.txt");

            string text = File.ReadAllText(realPath + "3.txt");
            
            lblTesto.Text = text;

            if (File.Exists(realPath + "4.txt"))
            {
                File.Delete(realPath + "4.txt");
            }

            StreamWriter sw = File.CreateText(realPath + "4.txt");
            sw.WriteLine("Ciao sono riga 1");
            sw.WriteLine("riga 2");
            sw.Write(@"Stringa su più 
                        righe");
            sw.Close();


            string path = Server.MapPath("~/Upload");
            bool esiste2 = Directory.Exists(path);
        }
    }
}