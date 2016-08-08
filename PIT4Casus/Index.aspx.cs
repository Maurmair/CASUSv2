using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using CC;
using System.Data;


namespace PIT4Casus
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["dataavailable"] != null)
            {
                //tekstbox vullen
            }

            if (Session["loggedin"] != null)
            {
                LogStatus.Text = "Log out";
                //LabelDBUsername.Text = Session["username"];
                Session.Clear();
            }
        }

        protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            string naam;
            naam = TextBoxSearch.Text;
            //DataTable dt = CCFilm.GeefFilm(naam);
            Dictionary<string, object> dict = CCFilm.GeefFilm2(naam);
            TextBoxNaam.Text = dict["Naam"].ToString();

          
        }

        protected void btn_save_Click(object sender, EventArgs e)
        {
            Dictionary<string, object> dict = new Dictionary<string, object>();
            dict.Add("Naam", "Wes Maurmair");
            CCFilm.SaveFilm(dict);
        }

        /*
         * protected void ButtonSearch_Click(object sender, EventArgs e)
        {
            string zoekterm = TextBoxSearch.Text;
            if (new FilmNaam(zoekterm))
            {
                string naam;
                naam = TextBoxSearch.Text;
                //TextBoxNaam.Text = CCFilm.GeefFilm(naam);
                GridView1.DataSource = CCFilm.GeefFilm(naam);
                GridView1.DataBind();
                //TextBoxNaam.Text =
                //film gevonden
                //ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Gevonden');", true);
                //Movies movie = new FilmNaam(zoekterm);
                //FilmVullen(zoekterm);
                // LabelNaam.Text = zoekterm;     
            }
            else
            {
                // film niet gevonden
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", "alert('Niet gevonden');", true);
            }
        }*/
    }
}