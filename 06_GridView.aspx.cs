using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace _02_componenti
{
    public partial class _06_FormView : System.Web.UI.Page
    {
        private DataTable dt = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
           
            dt.Columns.Add(new DataColumn("Id", typeof(int)));
            dt.Columns.Add(new DataColumn("Nome",typeof(string)));
            dt.Columns.Add(new DataColumn("Cognome",typeof(string)));
            dt.PrimaryKey = new DataColumn[] { dt.Columns["Id"] }; ;

            DataRow dr = dt.NewRow();
            dr["Id"] = 1;
            dr["Nome"] = "Lorenzo";
            dr["Cognome"] = "Babbini";
            dt.Rows.Add(dr);

            dr = dt.NewRow();
            dr["Id"] = 2;
            dr["Nome"] = "Mario";
            dr["Cognome"] = "Rossi";
            dt.Rows.Add(dr);

            grdMaster.DataSource = dt.DefaultView;
            grdMaster.DataBind();
        }

        protected void grdMaster_SelectedIndexChanged(object sender, EventArgs e)
        {
            int idSelezionato = (int)grdMaster.SelectedValue;
            
            DataView dv = new DataView(dt);
            dv.RowFilter = "Id=" + idSelezionato;
            dtlView.DataSource = dv;
            dtlView.DataBind();
        }
    }
}