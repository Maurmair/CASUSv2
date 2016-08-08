using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace BU
{
    class DataDictProperties
    {

        public static Dictionary<string, object> DictionaryFromType(object a)
        {
            if (a == null) return new Dictionary<string,object>();
            Type t = a.GetType();
            PropertyInfo[] props = t.GetProperties();
            Dictionary<string, object> dict = new Dictionary<string,object>();
            foreach (PropertyInfo prp in props)
            {
                object value = null;
                if (prp.PropertyType.Name ==  "ICollection'1")
                    continue;
                value =prp.GetValue(a, new object[] { });
                dict.Add(prp.Name, value);
            }
            return dict;
        }
    }
}
