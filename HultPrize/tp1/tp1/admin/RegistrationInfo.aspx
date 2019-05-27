<%@ Page Title="" Language="C#" MasterPageFile="~/admin/dashboard.Master" AutoEventWireup="true" CodeBehind="RegistrationInfo.aspx.cs" Inherits="tp1.admin.RegistrationInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-left: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ImageButton ID="ImageButton1" runat="server" Height="28px" ImageUrl="~/image/retour.png" OnClick="ImageButton1_Click" Width="48px" />
   
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <br />
    <asp:Image ID="Image1" runat="server" CssClass="auto-style1" style="margin-left:30%;" Height="86px" Width="118px" />
    <br />
    <div style="margin-left:30%;">
    
    <table >
        <tr>
            <td><asp:Label ID="Label1" runat="server" Text="Email : "></asp:Label></td>
            <td><asp:Label ID="email" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label2" runat="server" Text="Nom : "></asp:Label></td>
            <td><asp:Label ID="nom" runat="server" Text="Nom"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label3" runat="server" Text="Password"></asp:Label></td>
            <td><asp:Label ID="password" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label4" runat="server" Text="Phone Number"></asp:Label></td>
            <td><asp:Label ID="phone" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label5" runat="server" Text="Main Job "></asp:Label></td>
            <td><asp:Label ID="job" runat="server" Text="Label"></asp:Label></td>
        </tr>
        <tr>
            <td><asp:Label ID="Label6" runat="server" Text="date Registration : "></asp:Label></td>
            <td><asp:Label ID="date" runat="server" Text="Label"></asp:Label></td>
        </tr>
    </table>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Accepter" CssClass="btn btn-success" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Refuser" CssClass="btn btn-danger " />
        </div>
</asp:Content>
