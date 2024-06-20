using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class search : System.Web.UI.Page
    {
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

            if (!IsPostBack)
            {
                generateArticle("#",
                "Bridging the Gap: Digital Literacy",
                "The digital world offers endless opportunities, but not everyone has the skills to navigate it effectively. This article explores the concept of digital literacy, the essential knowledge and skills needed to use technology confidently and safely. It emphasizes the importance of digital literacy education for individuals of all ages to bridge the gap and ensure everyone can participate fully in the digital landscape.");
            }
        }
        protected void Search_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/search.aspx?q=" + SearchBox.Text);
        }

        protected void LoadMore_Click(object sender, EventArgs e)
        {

        }

        protected void generateArticle(String link, String title, String paragraph)
        {
            HyperLink hyperLink = new HyperLink();

            hyperLink.CssClass = "article";

            hyperLink.NavigateUrl = link;

            hyperLink.Text = "";

            hyperLink.Text += "<h1>" + title + "</h1>";

            hyperLink.Text += "<br>";

            hyperLink.Text += "<p>" + paragraph + "</p>";

            Articles.Controls.Add(new System.Web.UI.HtmlControls.HtmlGenericControl("hr"));

            Articles.Controls.Add(hyperLink);
        }

        protected void ProfileButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/profile.aspx");
        }
    }


}