<%@ Page Title="" Language="C#" MasterPageFile="~/admin/dashboard.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="tp1.admin.Registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="text-align:center;">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="PersonId" DataSourceID="SqlDataSource1" GridLines="Horizontal" Width="567px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
        <asp:HyperLinkField DataNavigateUrlFields="PersonId" DataNavigateUrlFormatString="~/admin/RegistrationInfo.aspx?PersonId={0}" DataTextField="PersonId" HeaderText="Show Information :" NavigateUrl="~/admin/RegistrationInfo.aspx" Target="_blank">
        <FooterStyle Font-Names="Times New Roman" />
        </asp:HyperLinkField>
    </Columns>
    <FooterStyle BackColor="White" ForeColor="#333333" />
    <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="White" ForeColor="#333333" />
    <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
    <SortedAscendingCellStyle BackColor="#F7F7F7" />
    <SortedAscendingHeaderStyle BackColor="#487575" />
    <SortedDescendingCellStyle BackColor="#E5E5E5" />
    <SortedDescendingHeaderStyle BackColor="#275353" />
</asp:GridView>
        </div>
    <div>
        <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                <thead>
                  <tr>
                    <th>id</th>
                    <th>email</th>
                    <th>Name</th>
                    <th>phone number</th>
                    <th>Main job </th>
                    <th>date</th>
                    <th>photo</th>
                  </tr>
                </thead>
                <tfoot>
                  <tr>
                   <th>id</th>
                    <th>email</th>
                    <th>Name</th>
                    <th>phone number</th>
                    <th>Main job </th>
                    <th>date</th>
                    <th>photo</th>
                  </tr>
                </tfoot>
                <tbody>
                        <%  
                            s.cnx = new System.Data.SqlClient.SqlConnection();
                            s.cmd = new System.Data.SqlClient.SqlCommand();
                            s.cmd.CommandText = "SELECT * FROM register where isaccept is not null ";
                            s.cmd.Connection = s.cnx;
                            s.cnx.ConnectionString = s.cnxStr;
                            s.cnx.Open();
                            s.dr = s.cmd.ExecuteReader();
                            while (s.dr.Read())
                            {

                                Response.Write("<tr> " + "<td>" + s.dr["PersonId"].ToString() +"</td>"
                                     + "<td>" + s.dr["Email"].ToString() +"</td>"
                                      + "<td>" + s.dr["FullName"].ToString() +"</td>"
                                       + "<td>" + s.dr["phoneNumber"].ToString() +"</td>"
                                        + "<td>" + s.dr["Main_job"].ToString() +"</td>"
                                        + "<td>" + s.dr["date"].ToString() +"</td>"
                                        + "<td><img style='height:40px;border-radius:40px;width:40px;'  src='../user/"+s.dr["Photo"].ToString()  +"'/></td>"

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
        </div>
    </div>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClientInfoConnectionString %>" SelectCommand="SELECT [PersonId], [Email], [date] FROM [Register] WHERE ([Isaccept] IS NULL)"></asp:SqlDataSource>

    <br />

</asp:Content>
