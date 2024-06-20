<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="Blog.profile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/navbar_style.css"/>
    <link rel="stylesheet" href="css/profile_style.css"/>
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
                <asp:ImageButton ID="ProfileButton" runat="server" ImageUrl="~/image/profile.png" CssClass="navbar-profile" />
            </div>
        </div>

        <div class="profile-main">
            <div class="profile-info">
                <center>
                    <asp:Image CssClass="profile-picture" ID="ProfilePicture" runat="server" />
                </center>
                <asp:Label ID="Username" runat="server" Text=""></asp:Label>
                <asp:Label ID="Email" runat="server" Text=""></asp:Label>
                <asp:Label ID="Gender" runat="server" Text=""></asp:Label>
                <hr />
                <div class="password-reset">
                    <asp:Label ID="OldPasswordLabel" runat="server" Text="Old Password:"></asp:Label>
                    <asp:TextBox ID="OldPassword" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator
                        CssClass="required-validator"
                        ID="RequiredFieldValidator1"
                        ControlToValidate="OldPassword"
                        ErrorMessage="Old Password Required *"
                        runat="server">
                    </asp:RequiredFieldValidator>


                    <asp:Label ID="NewPasswordLabel" runat="server" Text="New Password:"></asp:Label>
                    <asp:TextBox ID="NewPassword" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator
                        CssClass="required-validator"
                        ID="RequiredPassword"
                        ControlToValidate="NewPassword"
                        ErrorMessage="New Password Required *"
                        runat="server">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="ValidatePassword"
                        runat="server"
                        ErrorMessage="Enter a valid Password (Capital + Small + Number + Special) characters"
                        ControlToValidate="NewPassword"
                        CssClass="required-validator"
                        ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>

                    <asp:Label ID="ConfirmNewPasswordLabel" runat="server" Text="Confirm Password:"></asp:Label>
                    <asp:TextBox ID="ConfirmNewPassword" runat="server"></asp:TextBox>

                    <asp:RequiredFieldValidator
                        CssClass="required-validator"
                        ID="RequiredConfirmPassword"
                        ControlToValidate="ConfirmNewPassword"
                        ErrorMessage="Confirm Password Required *"
                        runat="server">
                    </asp:RequiredFieldValidator>

                    <asp:CompareValidator
                        ID="CompareValidator1"
                        CssClass="required-validator"
                        runat="server"
                        ErrorMessage="Passwords doesn't match"
                        ControlToCompare="NewPassword"
                        ControlToValidate="ConfirmNewPassword"></asp:CompareValidator>

                    <asp:Button ID="ChangePasswordButton" runat="server" Text="Change" />
                </div>
            </div>
            <div class="profile-articles">
                <h1>Articles</h1>
                <asp:Panel ID="Articles" CssClass="articles" runat="server"></asp:Panel>
            </div>
        </div>
    </form>
</body>
</html>
