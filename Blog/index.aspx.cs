using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Blog
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ProfileName.Text = getUsername();
                ProfileButton.ImageUrl = getProfilePicturePath();
            }

            if (!IsPostBack)
            {
                generateArticle("#",
                    "The Future of AI",
                    "Artificial intelligence (AI) is rapidly transforming our world. This article explores the potential of AI to revolutionize various industries, from healthcare and finance to transportation and entertainment. It also discusses the challenges and ethical considerations surrounding AI development.");

                generateArticle("#",
                    "Taming the Wild West: Cybersecurity",
                    "The digital age has brought immense benefits, but also new security threats. This article delves into the ever-evolving landscape of cybersecurity. It explores common cyberattacks, defense strategies, and the importance of user awareness in protecting our data and systems.");

                generateArticle("#",
                    "The Unsung Heroes: IT Infrastructure",
                    "Every click, scroll, and online interaction relies on a complex network of IT infrastructure. This article explores the unseen foundation that powers the digital world, from data centers and networks to hardware and software systems. It highlights the critical role of IT professionals in keeping everything running smoothly.");

                generateArticle("#",
                    "Demystifying the Web: All About Networks",
                    "We connect and communicate through a vast network of networks. This article explores the fundamentals of computer networks, from how data travels through cables and satellites to different network types and protocols. It provides a basic understanding of the intricate web that connects us all.");

                generateArticle("#",
                    "The Power of Cloud Computing",
                    "Cloud computing has transformed how we store, access, and manage data. This article explores the benefits of cloud computing, such as scalability, flexibility, and cost-efficiency. It discusses how cloud computing is changing the way businesses operate and individuals utilize technology.");
            }
        }
        protected String getUsername()
        {
            return "Profile";
        }
        protected String getProfilePicturePath()
        {
            return "/image/profile_default.png";
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
        protected void LoadMore_Click(object sender, EventArgs e)
        {
            generateArticle("#",
                "Bridging the Gap: Digital Literacy",
                "The digital world offers endless opportunities, but not everyone has the skills to navigate it effectively. This article explores the concept of digital literacy, the essential knowledge and skills needed to use technology confidently and safely. It emphasizes the importance of digital literacy education for individuals of all ages to bridge the gap and ensure everyone can participate fully in the digital landscape.");
        }

        protected void ProfileButton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/profile.aspx");
        }
    }
}