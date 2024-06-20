<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Blog.signup" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/navbar_style.css" />
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
                <asp:Label ID="EmailLabel" runat="server" Text="Email :"></asp:Label>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator
                    CssClass="required-validator"
                    ID="RequiredEmail"
                    ControlToValidate="Email"
                    ErrorMessage="Email Required *"
                    runat="server">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="ValidateEmail"
                    runat="server"
                    ErrorMessage="Enter a valid Email"
                    ControlToValidate="Email"
                    CssClass="required-validator"
                    ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>

            <div>
                <asp:Label ID="GenderLabel" runat="server" Text="Gender :"></asp:Label>



                <asp:RadioButtonList ID="Gender" runat="server">
                    <asp:ListItem Value="Male"></asp:ListItem>
                    <asp:ListItem Value="Female"></asp:ListItem>
                </asp:RadioButtonList>


                <asp:RequiredFieldValidator
                    CssClass="required-validator"
                    ID="RequiredGender"
                    ControlToValidate="Gender"
                    ErrorMessage="Gender Required *"
                    runat="server">
                </asp:RequiredFieldValidator>
            </div>

            <div>
                <asp:Label ID="PasswordLabel" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator
                    CssClass="required-validator"
                    ID="RequiredPassword"
                    ControlToValidate="Email"
                    ErrorMessage="Password Required *"
                    runat="server">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="ValidatePassword"
                    runat="server"
                    ErrorMessage="Enter a valid Password (Capital + Small + Number + Special) characters"
                    ControlToValidate="Password"
                    CssClass="required-validator"
                    ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>
            </div>

            <div>
                <asp:Label ID="ConfirmPasswordLabel" runat="server" Text="Confirm Password :"></asp:Label>
                <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator
                    CssClass="required-validator"
                    ID="RequiredConfirmPassword"
                    ControlToValidate="ConfirmPassword"
                    ErrorMessage="Confirm Password Required *"
                    runat="server">
                </asp:RequiredFieldValidator>

                <asp:CompareValidator
                    ID="CompareValidator1"
                    CssClass="required-validator"
                    runat="server"
                    ErrorMessage="Passwords doesn't match"
                    ControlToCompare="Password"
                    ControlToValidate="ConfirmPassword"></asp:CompareValidator>
            </div>


            <div>
                <asp:HyperLink ID="ForgotPassword" runat="server" NavigateUrl="~/login.aspx">Have an Account? Login</asp:HyperLink>

                <asp:Button ID="Register" runat="server" Text="Signup" OnClick="Register_Click" />
            </div>

            <asp:ValidationSummary ID="ValidateLogin" runat="server" />

        </div>
    </form>
</body>
</html>
