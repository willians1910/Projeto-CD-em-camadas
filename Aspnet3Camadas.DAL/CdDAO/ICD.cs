using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.DAL
{
    public interface ICD
    {
        bool Inserir(CD cdobj);

        List<CD> Listar();

        bool Atualizar(CD cdobj);

        bool Excluir(int id);
    }
}
