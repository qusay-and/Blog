<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Blog.index" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog</title>
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/navbar_style.css"/>
    <link rel="stylesheet" href="css/index_style.css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="navbar">
            <div class="navbar-left">
                <a href="index.aspx">
                    <img src="/image/logo.png" class="navbar-logo" />
                </a>
                <a href="/write.aspx">Write</a>
                 <a href="/search.aspx">Search</a>
            </div>


            <div class="navbar-right">
                <asp:HyperLink runat="server" ID="ProfileName" NavigateUrl="/signup.aspx">Signup</asp:HyperLink>
                <asp:ImageButton ID="ProfileButton" runat="server" ImageUrl="~/image/profile.png" CssClass="navbar-profile" OnClick="ProfileButton_Click" />
            </div>
        </div>
        <div class="main">
            <div class="content">
                <asp:Panel ID="Articles" CssClass="articles" runat="server"></asp:Panel>

                <hr />
                <asp:Button ID="LoadMore" runat="server" CssClass="load-more-button" Text="Load More" OnClick="LoadMore_Click" />
            </div>
            <div class="ads">
                <asp:AdRotator ID="AdRotator" runat="server" CssClass="ad-rotator" AdvertisementFile="/ads/ads.xml" Target="_blank" />
            </div>
        </div>
    </form>
</body>
</html>
