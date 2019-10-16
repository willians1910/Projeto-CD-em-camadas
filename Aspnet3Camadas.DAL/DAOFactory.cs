using Aspnet3Camadas.DAL.MusicaDAO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.DAL
{
   public  class DAOFactory
    {

        public static CD_DAO CriarCD_DAO()
        {
            // return ProdutoDAOMemoria.Instancia();
            return new CD_DAO();

        }


        public static Musica_DAO CriarMusica()
        {
            // return ProdutoDAOMemoria.Instancia();
            return new Musica_DAO();

        }


    }
}
