using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.DAL
{
   public  class conexaoteste
    {
        // objeto de conexão com o SQL
        public static SqlConnection conexao;

        public void  ConexaoSQL()
        {
            //Inicializar()
             Connection();
        }


        public SqlConnection _con;
        public void Connection()
        {
            string constr = ConfigurationManager.ConnectionStrings["conexao"].ToString();

            _con = new SqlConnection(constr);
        }

        public bool AbrirConexao()
        {
            try
            {
                if (conexao.State != ConnectionState.Open)
                {
                    conexao.Open();
                }
                return true;
            }
            catch (SqlException e)
            {
                Console.Write("Erro de Conexao SQL: " + e);
            }
            return false;
        }

        public bool FecharConexao()
        {
            try
            {
                conexao.Close();
                return true;
            }
            catch (SqlException e)
            {
                Console.WriteLine("Erro ao fechar Conexao SQL: " + e);
                Console.WriteLine(e);
            }
            return false;
        }
        public void ExecutarSemConsulta(string sql)
        {
            if (AbrirConexao() == true)
            {
                // cria um objeto SqlCommand
                SqlCommand cmd = new SqlCommand();
                // define a conexao com o SQL que será utilizada
                cmd.Connection = conexao;
                // define o texto do comando SQL que será executado
                cmd.CommandText = sql;
                // executa o comando de INSERT / UPDATE / DELETE
                cmd.ExecuteNonQuery();
                FecharConexao();
            }
        }

        public SqlDataReader ExecutarConsulta(string sql)
        {
            if (AbrirConexao() == true)
            {
                // cria um objeto SqlCommand
                SqlCommand cmd = new SqlCommand();
                // define a conexao com o SQL que será utilizada
                cmd.Connection = conexao;
                // define o texto do comando SQL que será executado
                cmd.CommandText = sql;
                // executa o comando de SELECT e retorna um objeto MySqlDataReader
                return cmd.ExecuteReader();
            }
            return null;
        }
    }
}