using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp1.admin
{
    public partial class dashboard : System.Web.UI.MasterPage
    {
        public Sql s = new Sql();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["admin"] = null;
            Response.Redirect("../admin/adminloginpage/Login.aspx");
        }
    }
}