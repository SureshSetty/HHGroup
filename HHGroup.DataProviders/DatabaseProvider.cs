using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace HHGroup.DataProviders
{
    public class DatabaseProvider
    {
        public DataTable GetCountry()
        {
            DataTable dataTable = new DataTable();
            try
            {
                using (MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["HHGroup"].ConnectionString))
                {
                    using (MySqlCommand command = new MySqlCommand("Country_GetData", connection))
                    {
                        command.CommandType = CommandType.StoredProcedure;
                        connection.Open();
                        MySqlDataAdapter mysqlDataAdapter = new MySqlDataAdapter(command);
                        mysqlDataAdapter.Fill(dataTable);
                        connection.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return dataTable;
        }
    }
}
