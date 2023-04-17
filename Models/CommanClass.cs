using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace pramodAPI.Models
{
    public class CommanClass
    {
        static SqlConnection con;
        public static SqlConnection setSqlConnection()
        {
          try
          {
              con = new SqlConnection();
              con = new SqlConnection(ConfigurationManager.ConnectionStrings["ShareConn"].ConnectionString);
              if (con.State == ConnectionState.Closed)
              {
                  con.Open();
              }
              return con;
          }
            catch(Exception ex)
          {
              con.Close();
              return con;
          }
        }
    }
}