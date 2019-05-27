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
    public partial class Home : System.Web.UI.Page
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

            Application.Lock();
            Application["nbVisites"] = (int)Application["nbVisites"] + 1;
            Application.UnLock();
            Label1.Text = "Total visits      ";
            Label4.Text= Application["nbVisites"].ToString();
            Label2.Text = "current Visitors      ";
            Label5.Text = Application["nbVisiteursActifs"].ToString();
            s.cnx = new SqlConnection();
            s.cmd = new SqlCommand();
            s.cnx.ConnectionString = s.cnxStr;

            s.cmd.CommandText = "select count(*) from Register";
            s.cnx.Open();
            s.cmd.Connection = s.cnx;
            int nbr = (int)s.cmd.ExecuteScalar();
            s.cnx.Close();
            Label3.Text = "Total Registrations      "; Label6.Text = nbr.ToString();
            
        }
    }
}