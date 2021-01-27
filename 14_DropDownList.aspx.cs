using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _14_DropDownList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Conmnessione al database
            dbc.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["MyDB"].ConnectionString;

            //Scrivo la query che servirà per popolare la DropDownList
            dbc.SelectCommand = "SELECT idallievo, Cognome FROM allievi";

            //Indico dove mettere i valori:
            //DataTextField -> Verrà mostrato nella parte testuale delle option
            DropDownList2.DataTextField = "Cognome";
            //DataValueField ->  Verrà inserito nella parte value delle option 
            DropDownList2.DataValueField = "idallievo";

            //Indico al webcontrol quale dataSource Usare
            DropDownList2.DataSource = dbc;

            //Serve per determinare se l'utente è appena arrivato sulla pagina
            //Se IsPostBack è true l'utente ha fatto scaturire qualche evento lato server (Pressione bottone, Evento di validazione etc..)
            //Se IsPostBack è false l'utente è appena arrivato sulla pagina
            if (!Page.IsPostBack)
            {
                //Esegue l'associazione dei dati al WebControl Solo al primo arrivo dell'utente sulla pagina
                DropDownList2.DataBind();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //SelectedValue contiene il Value dell'opzione selezionata
            //SelectedItem contiene tutta l'opzione selezionata (Text Parte Testuale, Value Valore opzione)
            Label1.Text = DropDownList1.SelectedValue + " - " + DropDownList1.SelectedItem.Text;
            Label2.Text = DropDownList2.SelectedValue + " - " + DropDownList2.SelectedItem.Text;
        }
    }
}