<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="write.aspx.cs" Inherits="Blog.write" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/navbar_style.css" />
    <link rel="stylesheet" href="css/index_style.css" />
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
                <asp:ImageButton ID="ProfileButton" runat="server" ImageUrl="~/image/profile.png" CssClass="navbar-profile" OnClick="ProfileButton_Click" />
            </div>
        </div>
        <div class="write-main">
            <asp:Label ID="TitleLabel" runat="server" Text="Title:"></asp:Label>
            <asp:TextBox ID="Title" runat="server"></asp:TextBox><br />

            <asp:Label ID="ImageLabel" runat="server" Text="Thumpnail:"></asp:Label>
            <asp:FileUpload ID="ImageUpload" runat="server" /><br />

            <asp:Label ID="GenreLabel" runat="server" Text="Genre:"></asp:Label>
            <asp:CheckBoxList ID="Genre" runat="server" RepeatDirection="Horizontal">
                <asp:ListItem Value="Algorithm"></asp:ListItem>
                <asp:ListItem Value="AI"></asp:ListItem>
                <asp:ListItem Value="Web"></asp:ListItem>
                <asp:ListItem Value="Security"></asp:ListItem>
                <asp:ListItem Value="OOP"></asp:ListItem>
            </asp:CheckBoxList>
            
            <br />

            <asp:Label ID="ContentLabel" runat="server" Text="Content:"></asp:Label>
            <asp:TextBox ID="Content" runat="server" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:Button ID="Publish" runat="server" Text="Publish" />
        </div>
    </form>
</body>
</html>
