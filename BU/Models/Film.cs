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
    }
}
