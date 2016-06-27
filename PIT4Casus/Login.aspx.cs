using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CC;

namespace PIT4Casus
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            string username = TextBoxUserName.Text;
            string password = TextBoxPassword.Text;
            if (new UM().CheckLogin(username, password))
            {
                //login succes
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Aangemeld');", true);
                if (username == "admin")
                {
                    Session["usertype"] = "admin";
                    Session["loggedin"] = "true";
                    LabelDBUser.Text = username;
                }
                if (username == "user")
                {
                    Session["usertype"] = "user";
                    Session["loggedin"] = "true";
                    LabelDBUser.Text = username;
                }
            }
            else 
            {
              // login failed
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Niet aangemeld');", true);
            }
        }
    }
}
