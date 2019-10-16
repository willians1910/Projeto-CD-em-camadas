using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.DTO
{
   public  class Musica
    {
        public int Musica_Id { get; set; }
        public int Cd_IdMusica { get; set; }
        public string Nome_Musica { get; set; }
        public string Tempo_Segundos { get; set; }

    }
}
