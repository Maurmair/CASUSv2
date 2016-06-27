using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CC;

namespace PIT4Casus
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            string zoekterm = TextBoxSearch.Text;
            if (new Movies().FilmNaam(zoekterm))
            {
                //film gevonden
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Gevonden');", true);
                new Movies().FilmVullen(zoekterm);
                
                LabelNaam.Text = zoekterm;     
            }
            else
            {
                // film niet gevonden
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Niet gevonden');", true);
            }
        }
    }
}