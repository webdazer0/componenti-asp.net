using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _02_componenti
{
    public partial class _13_Bulletlist : System.Web.UI.Page
    {
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            List<ListItem> lstItems = new List<ListItem>(); 
            lstItems.Add(new ListItem("X"));
            lstItems.Add(new ListItem("Y"));
            lstItems.Add(new ListItem("Z"));
            bltList.DataSource = lstItems;
            bltList.DataBind();            
        }
    }
}