<%@ Page Title="" Language="C#" MasterPageFile="~/admin/dashboard.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="tp1.admin.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
           <div class="row container-fluid">
        <div class="col-md-6">
            <div style="background-color: aqua;height:40px;margin-top:40px;text-align:center;border-radius:5px;" class="stats">
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
            </div>
            <div style="background-color: orange;height:40px;margin-top:40px;text-align:center;border-radius:5px;" class="stats">
                <asp:Label ID="Label2" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
            </div>
            <div style="background-color: lawngreen;height:40px;margin-top:40px;text-align:center;border-radius:5px;" class="stats">
                <asp:Label ID="Label3" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Label" Font-Bold="True" Font-Names="Times New Roman"></asp:Label>
            </div>
     
        </div> 
                <div class="col-md-6">
            <div>
                <h3>Recent Registration</h3>
                <div ></div>
                
                <%  
                    s.cnx = new System.Data.SqlClient.SqlConnection();
                    s.cmd = new System.Data.SqlClient.SqlCommand();
                    s.cmd.CommandText = "SELECT TOP 3 * FROM Register where date between '"+DateTime.Today.AddMonths(-1)+" ' and '"+DateTime.Now+"'";
                    s.cmd.Connection = s.cnx;
                    s.cnx.ConnectionString = s.cnxStr;
                    s.cnx.Open();
                    s.dr = s.cmd.ExecuteReader();
                    while (s.dr.Read())
                    {
                        Response.Write(" <div class='well'> <div class='media'>"+
                            "<a class='pull-left' href='#'> <img class='media-object' src='../user/"+s.dr["Photo"].ToString()
                            +"' style='height:40px;border-radius:40px;width:40px;' ></a>"+
                            "   <div class='media-body'> <p id='pjudge'><b>"+s.dr["FullName"].ToString()+"</b><br>"+
                            s.dr["Main_Job"].ToString()+"<br><span><i class='glyphicon glyphicon-calendar'></i> "
                            +s.dr["date"].ToString()+" </span></li></p>  </div>"
                       +" </div></div>");


                    }
                    s.cnx.Close(); %>

               
            </div>
               
       </div> 
    </div>
    <div>
        <hr />
        <h2>Recent Messages </h2>
        <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>id</th>
                    <th>Nom</th>
                    <th>email</th>
                    <th>titre</th>
                    <th>message </th>
                    <th>date</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                    <th>id</th>
                    <th>Nom</th>
                    <th>email</th>
                    <th>titre</th>
                    <th>message </th>
                    <th>date</th>
                  </tr>
                </tfoot>
                <tbody>
                        <%  
                            s.cnx = new System.Data.SqlClient.SqlConnection();
                            s.cmd = new System.Data.SqlClient.SqlCommand();
                            s.cmd.CommandText = "SELECT TOP 3 * FROM message where date between '"+DateTime.Today.AddMonths(-1)+" ' and '"+DateTime.Now+"'";
                            s.cmd.Connection = s.cnx;
                            s.cnx.ConnectionString = s.cnxStr;
                            s.cnx.Open();
                            s.dr = s.cmd.ExecuteReader();
                            while (s.dr.Read())
                            {

                                Response.Write("<tr> " + "<td>" + s.dr["id"].ToString() +"</td>"
                                     + "<td>" + s.dr["nom"].ToString() +"</td>"
                                      + "<td>" + s.dr["email"].ToString() +"</td>"
                                       + "<td>" + s.dr["titre"].ToString() +"</td>"
                                        + "<td>" + s.dr["message"].ToString() +"</td>"
                                        + "<td>" + s.dr["date"].ToString() +"</td>"

                                    +"</tr>");


                            }
                            s.cnx.Close(); %>
                <%--  <tr>
                    <td>Tiger Nixon</td>
                    <td>System Architect</td>
                    <td>Edinburgh</td>
                    <td>61</td>
                    <td>2011/04/25</td>
                    <td>$320,800</td>
                  </tr>--%>
                    </tbody>

              </table>
    </div>
</asp:Content>
