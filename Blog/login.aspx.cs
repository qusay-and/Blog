using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class login : System.Web.UI.Page
    {
        protected bool validateInput()
        {
            if (Username.Text.Length == 0)
                return false;

            if (Password.Text.Length == 0)
                return false;

            return true;
        }
        protected String getUsername()
        {
            return "Profile";
        }
        protected String getProfilePicturePath()
        {
            return "/image/profile_default.png";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProfileName.Text = getUsername();
                ProfileButton.ImageUrl = getProfilePicturePath();
            }
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            if (!validateInput())
                return;

            Response.Redirect("~/index.aspx");
        }

        protected void ProfileButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/profile.aspx");
        }
    }
}