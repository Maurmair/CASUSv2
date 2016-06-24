using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BU
{
    public partial class Film
    {
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
                   return record;
               }
               return null;
           }
        }
    }
}
