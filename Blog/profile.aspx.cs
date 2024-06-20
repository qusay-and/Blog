using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProfileName.Text = getUsername();
                Username.Text = getUsername();
                Email.Text = getEmail();
                Gender.Text = getGender();
                ProfileButton.ImageUrl = getProfilePicturePath();
                ProfilePicture.ImageUrl = getProfilePicturePath();

                generateArticle("#",
                    "The Future of AI",
                    "Artificial intelligence (AI) is rapidly transforming our world. This article explores the potential of AI to revolutionize various industries, from healthcare and finance to transportation and entertainment. It also discusses the challenges and ethical considerations surrounding AI development.");

                generateArticle("#",
                    "Taming the Wild West: Cybersecurity",
                    "The digital age has brought immense benefits, but also new security threats. This article delves into the ever-evolving landscape of cybersecurity. It explores common cyberattacks, defense strategies, and the importance of user awareness in protecting our data and systems.");

            }
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
        protected string getGender()
        {
            return "Male";
        }
        protected string getUsername()
        {
            return "myusername";
        }
        protected string getEmail()
        {
            return "me@mail.com";
        }

        protected String getProfilePicturePath()
        {
            return "/image/profile.png";
        }
    }
}