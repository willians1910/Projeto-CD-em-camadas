using Aspnet3Camadas.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.DAL.MusicaDAO
{
    public interface IMusica
    {
        bool Inserir(Musica cdobj);

        List<Musica> Listar();

        bool Atualizar(Musica cdobj);

        bool Excluir(int id);
    }
}
