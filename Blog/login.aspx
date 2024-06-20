<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Blog.login" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/navbar_style.css"/>
</head>
<body>
    <form id="form1" runat="server">


        <div class="navbar">
            <div class="navbar-left">
                <a href="index.aspx">
                    <img src="/image/logo.png" class="navbar-logo" />
                </a>
                <a href="#">Write</a>
                 <a href="/search.aspx">Search</a>

            </div>


            <div class="navbar-right">
                <asp:HyperLink runat="server" ID="ProfileName" NavigateUrl="/signup.aspx">Signup</asp:HyperLink>
                <asp:ImageButton ID="ProfileButton" runat="server" ImageUrl="/image/profile.png" CssClass="navbar-profile" OnClick="ProfileButton_Click" />
            </div>
        </div>

        <div class="user-form">

            <div>
                <asp:Label ID="UsernameLabel" runat="server" Text="Username :"></asp:Label>
                <asp:TextBox ID="Username" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator
                    CssClass="required-validator"
                    ID="RequireUsername"
                    ControlToValidate="Username"
                    ErrorMessage="Username Required *"
                    runat="server">
                </asp:RequiredFieldValidator>
            </div>



            <div>
                <asp:Label ID="PasswordLabel" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator
                    CssClass="required-validator"
                    ID="RequiredPassword"
                    ControlToValidate="Password"
                    ErrorMessage="Password Required *"
                    runat="server">
                </asp:RequiredFieldValidator>
            </div>


            <div>
                <asp:HyperLink ID="ForgotPassword" runat="server" NavigateUrl="~/signup.aspx">Need an Account? Signup</asp:HyperLink>

                <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" />
            </div>
        </div>
    </form>
</body>
</html>
