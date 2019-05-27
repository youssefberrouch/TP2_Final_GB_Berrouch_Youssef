using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp1
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Sql s = new Sql();
        protected void envoyer_Click(object sender, EventArgs e)
        {
            
            s.cnx = new SqlConnection();
            s.cmd = new SqlCommand();
            s.cnx.ConnectionString = s.cnxStr;

            s.cmd.CommandText = "insert into message values('" + nom.Text + "','" + email.Text + "','" + titr.Text + "','" + message.Text + "','" + DateTime.Now + "')";
            s.cnx.Open();
            s.cmd.Connection = s.cnx;
            s.cmd.ExecuteNonQuery();
            s.cnx.Close();
            nom.Text = "";
            email.Text = "";
            titr.Text = "";
            message.Text = "";
            Response.Write("<script>alert('Message Envoyé');</script>");
        }
    }
}