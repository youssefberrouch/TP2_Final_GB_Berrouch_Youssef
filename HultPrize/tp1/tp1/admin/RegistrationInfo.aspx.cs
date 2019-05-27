using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
namespace tp1.admin
{
    public partial class RegistrationInfo : System.Web.UI.Page
    {
        Sql s = new Sql();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {

            }
            else
            {
                Response.Redirect("../admin/adminloginpage/Login.aspx");
            }
            s.cnx = new System.Data.SqlClient.SqlConnection();
            s.cmd = new System.Data.SqlClient.SqlCommand();
            s.cmd.CommandText = "SELECT * FROM register where   PersonId="+int.Parse(Request.QueryString["PersonId"].ToString());
            s.cmd.Connection = s.cnx;
            s.cnx.ConnectionString = s.cnxStr;
            s.cnx.Open();
            s.dr = s.cmd.ExecuteReader();
            while (s.dr.Read())
            {
                Image1.ImageUrl="../user/"+s.dr["Photo"].ToString();
                email.Text = s.dr["email"].ToString();
                nom.Text = s.dr["fullname"].ToString();
                password.Text = s.dr["motdepasse"].ToString();
                phone.Text = s.dr["phonenumber"].ToString();
                job.Text = s.dr["main_job"].ToString();
                date.Text = s.dr["date"].ToString();



            }
            s.cnx.Close(); 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            s.cmd = new SqlCommand();
            s.cnx = new SqlConnection();

            s.cnx.ConnectionString = s.cnxStr;
            s.cnx.Open();
            s.cmd.Connection = s.cnx;
            s.cmd.CommandText = "update Register set Isaccept=" + 2 + " where PersonId=" + int.Parse(Request.QueryString["PersonId"].ToString()) ;
            s.cmd.ExecuteNonQuery();
            s.cnx.Close();
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.EnableSsl = true;
            client.DeliveryMethod = SmtpDeliveryMethod.Network;
            client.UseDefaultCredentials = false;
            client.Credentials = new NetworkCredential("hultprizemorocco2019@gmail.com", "hult{}2019");
            MailMessage msgobj = new MailMessage();
            msgobj.To.Add(email.Text);
            msgobj.From = new MailAddress("hultprizemorocco2019@gmail.com");
            msgobj.Subject = "Hult Prize Morocco 2019";
            msgobj.Body = "welcome to our event " +
                " You Registration is Accepted";
            client.Send(msgobj);
            Response.Write("<script>alert('Registration Accepted');</script>");
         
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            s.cnx = new SqlConnection();
            s.cmd = new SqlCommand();
            s.cmd.CommandText = "delete  register where   PersonId=" + int.Parse(Request.QueryString["PersonId"].ToString());
            s.cmd.Connection = s.cnx;
            s.cnx.ConnectionString = s.cnxStr;
            s.cnx.Open();
            s.cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Registration Refuset ');</script>");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("../admin/Registration.aspx");
        }
    }
}