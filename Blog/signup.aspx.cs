using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class signup : System.Web.UI.Page
    {

        public bool validateInput()
        {

            if (Username.Text.Length == 0)
                return false;

            if (!Regex.IsMatch(Email.Text, "\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*"))
                return false;

            if (!Regex.IsMatch(Password.Text, "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"))
                return false;

            if (!Password.Text.Equals(ConfirmPassword.Text))
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

        protected void Register_Click(object sender, EventArgs e)
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