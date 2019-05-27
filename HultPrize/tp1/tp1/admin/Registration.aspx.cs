using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
namespace tp1.admin
{
    public partial class Registration : System.Web.UI.Page
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

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}