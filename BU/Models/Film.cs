using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;
using BU;

namespace BU
{
    public partial class Film
    {
        private static DataTable dt;

       public static Film GetFilm(string naam)
        {
           using (BUContainer db = new BUContainer())
           {
               var query = (from u in db.FilmSet
                            where u.Naam == naam
                            select u);
               foreach (var item in query)
               {
                   Film record = new Film();
                   record.Naam = item.Naam;
                   record.AndereNaam = item.AndereNaam;
                   record.Versie = item.Versie;
                   record.Taalnaam = item.Taalnaam;
                   record.Verhaal = item.Verhaal;
                   record.IMDBRate = item.IMDBRate;
                   record.Jaar = item.Jaar;
                   record.Land = item.Land;
                   record.Kleur = item.Kleur;
                   record.ZW = item.ZW;
                   record.KleurZW = item.KleurZW;
                   record.Kijkwijzer = item.Kijkwijzer;
                   record.PersRate = item.PersRate;
                   record.Jaar = item.Jaar;
                   record.IMDBNummer = item.IMDBNummer;
                   record.Speelduur = item.Speelduur;
                   record.ToegevoegdDate = item.ToegevoegdDate;
                   return record;
               }
               return null;
           }
        }

       public static void SaveFilm(Film f)
       {
           using (BUContainer db = new BUContainer())
           {
               db.FilmSet.Add(f);
               db.SaveChanges();
           }
       }

        public static Film[] ZoekFilm(string naam)
        {
            using (BUContainer db = new BUContainer())
            {
                IQueryable<Film> film = db.FilmSet;

                Film[] filmarray = (
                    from p in film
                    where p.Naam.Contains(naam)// == naam
                    select p).ToArray();
                if (filmarray.Length == 0)
                {
                    new Exception("Film niet gevonden");
                }
                return filmarray;
            }
        }

        public static DataTable GeefFilm(string naa)// naa = naam om problemen te voorkomen?
        {
            Film[] films = ZoekFilm(naa);
            DataTable dt = new DataTable();
            dt.Columns.Add("naam");
            foreach(Film f in films)
            {
                DataRow dr = dt.NewRow();
                //code voor de datatable te vulen

                dr["naam"] = f.Naam;
                //dr[1] = f.Acteur;
                dt.Rows.Add(dr);
            }
            return dt;
        }

        public static DataTable GeefFilm2(string naam)
        {
            /*
            for(int i=0;i<filmgevonden.Length;i++)
            {
                Dictionary<string, object> dict = DataDictProperties.DictionaryFromType(filmgevonden.GetValue(i));
                if (i == 0)
                {
                    foreach (KeyValuePair<String, object> kvp in dict)  
                    {
                        dt.Columns.Add(kvp.Key); // kolommen benoemen
                    }
                }
                DataRow dr = dt.NewRow();
                foreach (KeyValuePair<String, object> kvp in dict)
                {
                    dr[kvp.Key] = kvp.Value;
                }

                dt.Rows.Add(dr);
            }
            return dt;
             * */
            return null;
        }
    }
}
