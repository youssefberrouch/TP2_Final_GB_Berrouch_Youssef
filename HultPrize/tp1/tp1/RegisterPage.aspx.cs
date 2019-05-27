using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Data.SqlClient;
using System.Data;
using System.Net;
using System.Net.Mail;
namespace tp1
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
           
        }
        public void Ajouter_Data_Base()
        {
            s.cnx = new SqlConnection();
            s.cmd = new SqlCommand();
            s.cnx.ConnectionString = s.cnxStr;
            string file = Server.MapPath("user") + "\\" + FileUpload1.FileName;
            FileUpload1.SaveAs(file);
            s.cmd.CommandText = "insert into Register(Email,EmailConfirm,FullName,MotDePasse,MDP_Confirm,PhoneNumber,Main_Job,Photo,date) values('" + Email.Text + "','" + Email_Con.Text + "','" + Name.Text + "','" + Password.Text + "','" + Password_Co.Text + "','" + Phone_Num.Text + "','" + Main_job.Text + "','" + FileUpload1.FileName + "','" + DateTime.Now + "')";
            s.cnx.Open();
            s.cmd.Connection = s.cnx;
            s.cmd.ExecuteNonQuery();
            s.cnx.Close();
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {

            if (Email.Text != Email_Con.Text)
            {
                args.IsValid = false;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Email.Text == "")
            { args.IsValid = false; }
           else if (Regex.IsMatch(Email.Text, @"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"))
              {
                args.IsValid = true;
              }
            else args.IsValid = false;
        }

        protected void CustomValidator3_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Name.Text == "")
            {
                args.IsValid = false;
            }
        }
        protected void CustomValidator4_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Password.Text == "")
            {
                args.IsValid = false;
               
            }
            else if (Regex.IsMatch(Password.Text, @"^[\w$@%*+\-_!]{8,15}$"))
            { args.IsValid = true; }
            else args.IsValid = false;
        }
 
        protected void CustomValidator5_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(Password.Text != Password_Co.Text)
            {
                args.IsValid = false;
            }
        }
        protected void CustomValidator6_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Phone_Num.Text == "")
            {
                args.IsValid = false;
            }
            else if (Regex.IsMatch(Phone_Num.Text, @"^[\+(00)][1-300]\d{9}$"))
            {
                args.IsValid = true;
            }
            else args.IsValid = false;
        }

        protected void CustomValidator7_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (Main_job.Text == "")
            {
                args.IsValid=false;
            }
        }
        Sql s = new Sql();
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                try
                {
                    SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
                    client.EnableSsl = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Credentials = new NetworkCredential("youssefberrouch27@gmail.com", "youssef@berrouch{}");
                    MailMessage msgobj = new MailMessage();
                    msgobj.To.Add(Email.Text);
                    msgobj.From = new MailAddress("youssefberrouch27@gmail.com");
                    msgobj.Subject = "Hult Prize Morroco 2019";
                    msgobj.Body = "welcome to our event ";
                    client.Send(msgobj);
                    Response.Write("send with success");
                    Ajouter_Data_Base();
                }
                catch (Exception ex)
                {
                    Response.Write("Error "+ex.Message);                }
            
           
            }
        }
    }
}