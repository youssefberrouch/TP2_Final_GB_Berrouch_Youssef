using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace tp1.admin
{
    public partial class messages : System.Web.UI.Page
    {
        public Sql s = new Sql();
        public DataTable dt = new DataTable();
        public DataSet ds = new DataSet();
        public SqlDataAdapter dp;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

            }
            else
            {
                Response.Redirect("../admin/adminloginpage/Login.aspx");
            }
        }
    }
}