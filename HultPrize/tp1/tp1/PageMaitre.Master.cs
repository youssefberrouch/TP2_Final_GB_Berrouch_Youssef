using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp1
{
    public partial class PageMaitre : System.Web.UI.MasterPage
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegi_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }
    }
}