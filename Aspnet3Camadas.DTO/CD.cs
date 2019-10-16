using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Aspnet3Camadas.DTO
{
  public class CD
    {
        public int Cd_Id { get; set; }
        public string Nome { get; set; }
        public string Autor { get; set; }
        public DateTime Data_Criacao { get; set; }
    }
}
