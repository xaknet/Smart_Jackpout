using System;
using MySql;
using MySql.Data.MySqlClient; 


namespace Smart_Jackpout
{
	public class DB
	{
		public DB ()
		{
			
		}

		using (MySqlConnection dbConn = new MySqlConnection(ConfigurationManager.ConnectionStrings["ApplicationServices"].ConnectionString)) 
		{ 
			// Database work done here 
		}
	}
}

