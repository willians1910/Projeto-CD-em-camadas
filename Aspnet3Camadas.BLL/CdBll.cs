//using Aspnet3Camadas.DAL;
//using Aspnet3Camadas.DTO;
//using System;
//using System.Collections.Generic;
//using System.Configuration;
//using System.Data;
//using System.Data.SqlClient;
//using System.Linq;
//using System.Web;


//namespace teste.Repositorio
//{
//    public class CdBll
//    {
//        conexaoteste banco = new conexaoteste();

//        public bool AdicionarCD(CD cdobj)
//        {

//            CD cd = new CD();
//            banco.ConexaoSQL();


//            int i;
//            using (SqlCommand command = new SqlCommand("IncluirCD", banco._con))
//            {
//                command.CommandType = CommandType.StoredProcedure;
//                command.Parameters.AddWithValue("@Nome", cdobj.Nome);
//                command.Parameters.AddWithValue("@Autor", cdobj.Autor);
//                command.Parameters.AddWithValue("@Data_Criacao", cdobj.Data_Criacao);

//                banco._con.Open();
//                i = command.ExecuteNonQuery();

//            }
//            banco._con.Close();
//            return i >= 1;

//public  List<CD> ObterCD()


//        }

//obter todos CD
//public List<CD> ObterCD()
//{
//  banco.ConexaoSQL();
//  List<CD> cdList = new List<CD>();

//using (SqlCommand command = new SqlCommand("ObterCD", banco._con))
//{
// command.CommandType = CommandType.StoredProcedure;


//banco._con.Open();

//        SqlDataReader reader = command.ExecuteReader();

//      while (reader.Read())
//{
//        CD cd = new CD()
//      {
//      Cd_Id = Convert.ToInt32(reader["Cd_Id"]),
//    Nome = Convert.ToString(reader["Nome"]),
//  Autor = Convert.ToString(reader["Autor"]),
//Data_Criacao = Convert.ToDateTime("Data_Criacao")
//};

//            cdList.Add(cd);
//      }
//    banco._con.Close();
//  return cdList;

//    }
//}

//        //atualizar CD
//        public bool AtualizarCD(CD cdobj)

//        { 
//            banco.ConexaoSQL();
//            int i;
//            using (SqlCommand command = new SqlCommand("AtualizarCD", banco._con))
//            {
//                command.CommandType = CommandType.StoredProcedure;
//                command.Parameters.AddWithValue("@Cd_Id", cdobj.Cd_Id);
//                command.Parameters.AddWithValue("@Nome", cdobj.Nome);
//                command.Parameters.AddWithValue("@Autor", cdobj.Autor);
//                command.Parameters.AddWithValue("@Data_Criacao", cdobj.Data_Criacao);

//                banco._con.Open();
//                i = command.ExecuteNonQuery();

//            }
//            banco._con.Close();
//            return i >= 1;
//        }

////        //EXCLUIR
//public bool ExcluirCD(int id)
//{
//    banco.ConexaoSQL();
//    int i;
//    using (SqlCommand command = new SqlCommand("ExcluirCD", banco._con))
//    {
//        command.CommandType = CommandType.StoredProcedure;
//        command.Parameters.AddWithValue("@Cd_Id", id);


//        banco._con.Open();
//        i = command.ExecuteNonQuery();

//    }
//    banco._con.Close();
//    if (i >= 1)
//    {
//        return true;
//    }
//    else
//    {
//        return false;
//    }
//}

//    }

//}
