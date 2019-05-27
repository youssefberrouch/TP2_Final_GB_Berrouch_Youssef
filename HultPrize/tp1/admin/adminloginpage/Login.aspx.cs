using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace tp1.admin.adminlogin_page
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Sql s = new Sql();
        protected void Button1_Click(object sender, EventArgs e)
        {
            s.cnx = new SqlConnection();
            s.cmd = new SqlCommand();
            s.cnx.ConnectionString = s.cnxStr;

            s.cmd.CommandText = "Select count(*) from admin where Login='" + Login3.Text + "' and password='" + password.Text + "'";
            s.cnx.Open();
            s.cmd.Connection = s.cnx;
            int ad = (int)s.cmd.ExecuteScalar();

            s.cmd.CommandText = "Select count(*) from Register where Email='" + Login3.Text + "' and MotDePasse='" + password.Text + "'";

            s.cmd.Connection = s.cnx;
            int us = (int)s.cmd.ExecuteScalar();

            if (ad == 1)
            {
                Session["admin"] = Login3.Text;
                Response.Redirect("~/admin/Home.aspx");
            }

            else
            {

            }
            s.cnx.Close();
        }

        protected void password_TextChanged(object sender, EventArgs e)
        {

        }
    }
}