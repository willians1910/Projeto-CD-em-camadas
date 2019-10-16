using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Aspnet3Camadas.DTO;

namespace Aspnet3Camadas.DAL.MusicaDAO
{
    public class Musica_DAO : IMusica

    {
        conexaoteste banco = new conexaoteste();

        public bool Atualizar(Musica musicaobj)
        {
            banco.ConexaoSQL();
            int i;
            using (SqlCommand command = new SqlCommand("AtualizarMusica", banco._con))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Musica_Id", musicaobj.Musica_Id);
                command.Parameters.AddWithValue("@Nome_Musica", musicaobj.Nome_Musica);
                command.Parameters.AddWithValue("@Cd_IdMusica", musicaobj.Cd_IdMusica);
                command.Parameters.AddWithValue("@Tempo_Segundos", musicaobj.Tempo_Segundos);


                banco._con.Open();
                i = command.ExecuteNonQuery();

            }
            banco._con.Close();
            return i >= 1;
        }

        public bool Excluir(int id)
        {
            banco.ConexaoSQL();
            int i;
            using (SqlCommand command = new SqlCommand("ExcluirMusicaPorID", banco._con))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Musica_Id", id);


                banco._con.Open();
                i = command.ExecuteNonQuery();

            }
            banco._con.Close();
            if (i >= 1)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool Inserir(Musica cdobj)
        {
            banco.ConexaoSQL();


            int i;
            using (SqlCommand command = new SqlCommand("IncluirMusica", banco._con))
            {
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddWithValue("@Cd_IdMusica", cdobj.Cd_IdMusica);
                command.Parameters.AddWithValue("@Nome_Musica", cdobj.Nome_Musica);
                command.Parameters.AddWithValue("@Tempo_Segundos", cdobj.Tempo_Segundos);


                banco._con.Open();
                i = command.ExecuteNonQuery();

            }
            banco._con.Close();
            return i >= 1;
        }

        public List<Musica> Listar()
        {
            banco.ConexaoSQL();
            List<Musica> musicaList = new List<Musica>();

            using (SqlCommand command = new SqlCommand("ObterMusica", banco._con))
            {
                command.CommandType = CommandType.StoredProcedure;

                banco._con.Open();

                SqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    Musica cd = new Musica()
                    {
                        Cd_IdMusica = Convert.ToInt32(reader["Cd_IdMusica"]),
                        Nome_Musica = Convert.ToString(reader["Nome_Musica"]),
                        Tempo_Segundos = Convert.ToString(reader["Tempo_Segundos"]),

                    };

                    musicaList.Add(cd);


                }
                banco._con.Close();
                return musicaList;
            }
        }
    }
}



