<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitre.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="tp1.contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="contact">
    <div class="container" >
                  
              <div>
              <h2 style="text-align:center;font-family: Verdana, Geneva, sans-serif;"> Contact and <span style="color:green;">Location</span></h2>
               <div style="border:1px solid grey;"></div>
              </div>
             
 
        
           <div class='form group' >
               <asp:TextBox ID="nom" runat="server" class="form-control input-lg" style="margin:30px;background:#DCDCDC ;" placeholder="Entrez votre nom..."></asp:TextBox>
       
             </div>
             <div id="divemail">
                  <asp:TextBox ID="email"  style="margin:30px;background:#DCDCDC ;" class="form-control input-lg " runat="server" placeholder="Entrez votre adress mail..."></asp:TextBox>
                 </div>
             <div>
                 <asp:TextBox ID="titr" runat="server" style="margin:30px; background:#DCDCDC ;" class="form-control input-lg" placeholder="Entrez le titre du message..."></asp:TextBox>
              </div>
             <div>
        
                 <asp:TextBox ID="message" runat="server" class="form-control input-lg" placeholder="ELtrez votre message..." style="margin:30px; background:#DCDCDC ; height:100px;" ></asp:TextBox>
             </div>
             <div> 
                 <asp:Button ID="envoyer" runat="server" class="btn btn-success btn-block" style="margin:30px;" Text="Envoyer votre message" OnClick="envoyer_Click" />
             </div>
        </div>
        </section>
</asp:Content>
