using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace tp1
{
    public class Sql
    {
       public string cnxStr = "server=.;Initial Catalog=ClientInfo;Integrated Security=true";
        public SqlConnection cnx ;
        public SqlCommand cmd ;
        public SqlDataReader dr;

    }
}