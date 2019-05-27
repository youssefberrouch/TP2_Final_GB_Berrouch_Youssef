<%@ Page Title="" Language="C#" MasterPageFile="~/admin/dashboard.Master" AutoEventWireup="true" CodeBehind="messages.aspx.cs" Inherits="tp1.admin.messages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        /* Chat containers */
.container {
  border: 2px solid #dedede;
  background-color: #f1f1f1;
  border-radius: 5px;
  padding: 10px;
  margin: 10px 0;
}

/* Darker chat container */
.darker {
  border-color: #ccc;
  background-color: #ddd;
}

/* Clear floats */
.container::after {
  content: "";
  clear: both;
  display: table;
}

/* Style images */
.container img {
  float: left;
  max-width: 60px;
  width: 100%;
  margin-right: 20px;
  border-radius: 50%;
}

/* Style the right image */
.container img.right {
  float: right;
  margin-left: 20px;
  margin-right:0;
}

/* Style time text */
.time-right {
  float: right;
  color: #aaa;
}

/* Style time text */
.time-left {
  float: left;
  color: #999;
}
    </style>
       <%
                            s.cnx = new System.Data.SqlClient.SqlConnection();
                            s.cmd = new System.Data.SqlClient.SqlCommand();
                            s.cmd.CommandText = "SELECT * FROM message order by id desc";
                            s.cmd.Connection = s.cnx;
                            s.cnx.ConnectionString = s.cnxStr;
                            s.cnx.Open();
                            s.dr = s.cmd.ExecuteReader();
                            while (s.dr.Read())
                            {
                             Response.Write("<div class='container'>"
                                 
                                 +"From :  <span style='border:1px gray solid;border-radius: 20px; padding-left: 8px;padding-right: 8px;'>"+s.dr["email"].ToString()+"</span>"+
                                 "<br>object :"+s.dr["titre"].ToString()
                                 +"<br>message : <p class='container darker'>"
                                 +s.dr["message"].ToString()

                                 +"</p>"
                                 
                            +"<span class='time-right'>"+s.dr["date"].ToString()+"</span>"+"</div>");
               
 


                            }
                            s.cnx.Close();
           
         %>
</asp:content>

