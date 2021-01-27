using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace _02_componenti
{
    public partial class _15_GridView_Custom : System.Web.UI.Page
    {
        private DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            dt.Columns.Add(new DataColumn("Id", typeof(int)));
            dt.Columns.Add(new DataColumn("Nome", typeof(string)));
            dt.Columns.Add(new DataColumn("Cognome", typeof(string)));
            dt.Columns.Add(new DataColumn("Immagine", typeof(string)));
            dt.PrimaryKey = new DataColumn[] { dt.Columns["Id"] }; ;

            DataRow dr = dt.NewRow();
            dr["Id"] = 1;
            dr["Nome"] = "Lorenzo";
            dr["Cognome"] = "Babbini";
            dr["Immagine"] = "img.png";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Id"] = 2;
            dr["Nome"] = "Mario";
            dr["Cognome"] = "Rossi";
            dr["Immagine"] = "img.png";
            dt.Rows.Add(dr);

            for(int x = 3; x < 25; x++)
            {
                dr = dt.NewRow();
                dr["Id"] = x;
                dr["Nome"] = "Nome " + x.ToString();
                dr["Cognome"] = "Cognome " + x.ToString();
                dr["Immagine"] = "img.png";
                dt.Rows.Add(dr);
            }

            //determino la dimensione di ogni pagina
            grdMaster.PageSize = 7;
            //Imposta come DataSource la vista di Default della DataTable 
            //La DS indica alla DataGrid da dove prendere i dati
            grdMaster.DataSource = dt.DefaultView;

            grdMaster.DataBind();
            

            
        }

        protected void grdMaster_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdMaster.PageIndex = e.NewPageIndex;
            grdMaster.DataBind();
        }
    }
}