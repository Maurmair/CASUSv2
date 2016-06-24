using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BU
{
    public partial class Gebruiker
    {

        public static Gebruiker GetUser(string username, string password)
        {
            using(BUContainer db = new BUContainer())
            {
                
                var query = (from u in db.GebruikerSet
                             where u.Username == username && u.Password == password
                             select u);
                foreach (var item in query)
                {
                    Gebruiker gebruiker = new Gebruiker();
                    gebruiker.Username = item.Username;
                    gebruiker.Password = item.Password;
                    return gebruiker;
                }
                return null;
            }
        }
    }
}


