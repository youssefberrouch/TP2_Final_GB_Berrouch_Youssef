<%@ Page Title="" Language="C#" MasterPageFile="~/PageMaitre.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="tp1.RegisterPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <style>


      

	
.omb_login .omb_socialButtons a {
	color: white; 
	opacity:0.9;
}
.omb_login .omb_socialButtons a:hover {
    color: white;
	opacity:1;    	
}
.omb_login .omb_socialButtons .omb_btn-facebook {background: #3b5998;}

.omb_login .omb_socialButtons .omb_btn-google {background: #c32f10;}



		



	

    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="text-align: center;">
        <div id="RegisterForm" style="margin-top: 60px; margin-bottom: 60px; padding: 50px;">
            <h2>Register & get your Invitation to the Conference</h2>
            <br />
            <table class="auto-style3">
                <tr>
                    <td class="w-100" style="width:100%;">
                        <asp:TextBox ID="Email" runat="server" OnTextChanged="TextBox1_TextChanged" Text="exemple@domaine.com" CssClass="form-control input-lg" BackColor="#CCCCCC" onfocus="effacer('exemple@domaine.com',this)" onblur="affiche('exemple@domaine.com',this)"></asp:TextBox>
                        <br />
                    </td>
                    <td style="width:5%;" >
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="Format Incorrect" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:TextBox ID="Email_Con" runat="server" CssClass="form-control input-lg" BackColor="#CCCCCC" Text="Confirmer Email" onfocus="effacer('Confirmer Email',this)" onblur="affiche('Confirmer Email',this)"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Email_Con" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Email" ControlToValidate="Email_Con" Display="Dynamic" ErrorMessage="Erreur de Confirmation" ForeColor="Red"></asp:CompareValidator>
                        <br />
                        <asp:CustomValidator ID="CustomValidator2" runat="server" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:TextBox ID="Name" runat="server" CssClass="form-control input-lg" BackColor="#CCCCCC" Text="Name" onfocus="effacer('Name',this)" onblur="affiche('Name',this)"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Name" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:CustomValidator ID="CustomValidator3" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:TextBox ID="Password" runat="server" CssClass="form-control input-lg" BackColor="#CCCCCC" Text="Password between 8 and 15" onfocus="effacer('Password between 8 and 15',this)" onblur="affiche('Password between 8 and 15',this)"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Mot de passe est Invalid" ForeColor="Red" ValidationExpression="^[\w$@%*+\-_!]{8,15}$"></asp:RegularExpressionValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:CustomValidator ID="CustomValidator4" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:TextBox ID="Password_Co" runat="server" CssClass="form-control input-lg" BackColor="#CCCCCC" Text="Confirmer Password" onfocus="effacer('Confirmer Password',this)" onblur="affiche('Confirmer Password',this)"></asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Password_Co" Display="Dynamic" ErrorMessage="*" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="Password" ControlToValidate="Password_Co" Display="Dynamic" ErrorMessage="Erreur de Confirmation" ForeColor="Red"></asp:CompareValidator>
                        <br />
                        <asp:CustomValidator ID="CustomValidator5" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator5_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:TextBox ID="Phone_Num" runat="server" CssClass="form-control input-lg" BackColor="#CCCCCC" Text="phone number like +1234567890" onfocus="effacer('phone number like +1234567890',this)" onblur="affiche('phone number like +1234567890',this)"> </asp:TextBox>
                        <br />
                    </td>
                    <td class="auto-style5">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Phone_Num" Display="Dynamic" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Phone_Num" ErrorMessage="Numero de Tele est Invalid" ValidationExpression="^[\+(00)][1-300]\d{9}$" ForeColor="Red"></asp:RegularExpressionValidator>
                        <br />
                        <asp:CustomValidator ID="CustomValidator6" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator6_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:TextBox ID="Main_job" runat="server" CssClass="form-control input-lg" BackColor="#CCCCCC" Text="main job" onfocus="effacer('main job',this)" onblur="affiche('main job',this)"></asp:TextBox>
                        <br />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Main_job" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                      <br />
                        <asp:CustomValidator ID="CustomValidator7" runat="server" ErrorMessage="CustomValidator" OnServerValidate="CustomValidator7_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <asp:Button ID="Button1" runat="server" Text="Register" CssClass="btn btn-success" Width="100%" OnClick="Button1_Click" />
                    </td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="w-100">
                        &nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="w-100">OR</td>
                    <td class="auto-style4">&nbsp;</td>
                </tr>
                <tr>
                    <td class="w-100">
                        <div class="omb_login">
                            <div class="row omb_row-sm-offset-3 omb_socialButtons">
                                
                                    <a href="#" id="btn_f"class="btn btn-lg btn-block omb_btn-facebook">
                                        <i class="fa fa-facebook visible-xs"></i>
                                        <span class="hidden-xs">Continue with Facebook</span>
                                    </a>
                                

                            </div>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td class="w-100">
                        <div class="omb_login" style="width:100%;">
                            <div class="row omb_row-sm-offset-3 omb_socialButtons">
                              
                                    <a href="#" class="btn btn-lg btn-block omb_btn-google">
                                        <i class="fa fa-google-plus visible-xs"></i>
                                        <span class="hidden-xs">Sign up with Google</span>
                                    </a>
                               
                            </div>
                        </div>
                    </td>

                </tr>
            </table>
            <br />
        </div>
    </div>
    <script type="text/javascript">
        function effacer(defaultexp, control)
        {
            if (control.value == defaultexp)
            {
                control.value = "";
                control.style.color = "black";
            }
        }
            function affiche(defaultexp, control)
        {
            if (control.value =="" )
            {
                control.value = defaultexp;
                control.style.color = "gray";
            }
        }
    </script>
</asp:Content>
