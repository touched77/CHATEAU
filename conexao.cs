using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace Chateau.DAL
{
    public class Conexao
    {
        protected SqlConnection conn ;
        protected SqlCommand cmd;
        protected SqlDataReader dr;

        public void Conectar()
        {
            
            try
            {
                conn = new SqlConnection(@"Data Source=DESKTOP-EL9CFDU\SQL;Initial Catalog=ChateauDuPet;Integrated Security=True");
                conn.Open();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }


        public void DesConectar()
        {
            try
            {
                conn.Close();
            }
            catch (Exception ex)
            {


                throw new Exception(ex.Message);
            }

        }


    }
}
