using Aspnet3Camadas.DAL;
using Aspnet3Camadas.DAL.MusicaDAO;
using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.BLL.Controler
{
    public class MusicaController
    {

        private IMusica dao;

        public MusicaController()
        {
            dao = DAOFactory.CriarMusica();
        }

        public bool Inserir(Musica cdobj)
        {
            return dao.Inserir(cdobj);
        }

        public List<Musica> Listar()
        {
            return dao.Listar();
        }

        public bool Atualizar(Musica cdobj)
        {
            return dao.Atualizar(cdobj);
        }

        public bool Excluir(int id)
        {
            return dao.Excluir(id);
        }

    }
}

