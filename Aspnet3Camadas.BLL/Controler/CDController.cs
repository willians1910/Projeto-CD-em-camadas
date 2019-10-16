using Aspnet3Camadas.DAL;
using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.BLL.Controler
{
   public  class CDController
    {

        private ICD dao;

        public CDController()
        {
            dao = DAOFactory.CriarCD_DAO();
        }

        public bool Inserir(CD cdobj)
        {
            return dao.Inserir(cdobj);
        }

        public List<CD> Listar()
        {
            return dao.Listar();
        }

        public bool Atualizar(CD cdobj)
        {
            return dao.Atualizar(cdobj);
        }

        public bool Excluir(int id)
        {
            return dao.Excluir(id);
        }

    }
}

