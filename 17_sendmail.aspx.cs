using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;

namespace _02_componenti
{
    public partial class _17_sendmail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInviaMail_Click(object sender, EventArgs e)
        {
            string from = "mittente@epicenter.it"; 

            string to = "destinatario@epicenter.it";

            string cc = "destinatariocc@epicenter.it";
            string bcc = "destinatariobcc@epicenter.it";

            MailMessage mail = new MailMessage();
            mail.To.Add(new MailAddress(to,"Pippo"));

            mail.CC.Add(new MailAddress(cc, "Dest CC"));

            mail.Bcc.Add(new MailAddress(bcc, "DEst Bcc"));
            
            mail.From = new MailAddress(from, "Mittente", System.Text.Encoding.UTF8);

            mail.Subject = "Mail di prova oggetto";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;

            string messaggio = @"

                                <html>
                                <head>
                                </head>
                                <body>
                                    <p>Ciao a tutti questa è la mia prima mail inviata da .NET
                                    <strong>Lorenzo</strong> 
                                  
                                  </body >
                               </html >
      ";

            mail.Body = messaggio;
            
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High;

            string allegato = Server.MapPath("~/Upload/1.txt");

            mail.Attachments.Add(new Attachment(allegato));
            
            SmtpClient client = new SmtpClient();
            
            string username= System.Configuration.ConfigurationManager.AppSettings["smtp_user"];
            string password = System.Configuration.ConfigurationManager.AppSettings["smtp_pass"];

            client.Credentials = new System.Net.NetworkCredential(username, password);

            client.Port = int.Parse(System.Configuration.ConfigurationManager.AppSettings["smtp_port"]); 
            client.Host = System.Configuration.ConfigurationManager.AppSettings["smtp_host"];
            client.EnableSsl = true; 
            
            try
            {
                client.Send(mail);
            }
            catch (Exception ex)
            {
                Exception ex2 = ex;
                string errorMessage = string.Empty;
                while (ex2 != null)
                {
                    errorMessage += ex2.ToString();
                    ex2 = ex2.InnerException;
                }
                HttpContext.Current.Response.Write(errorMessage);
            }
        }
    }
}