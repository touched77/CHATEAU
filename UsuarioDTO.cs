using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chateau.DTO
{
   public class UsuarioDTO
    { 
        public string IdAdm { get; set; }
        public string NomeAdm { get; set; }
        public string SenhaAdm { get; set; }
        public int UrlImage { get; set; }
        public string IdTIpoUsuario { get; set; }
        public int DsEmail { get; set; } 
    }
}
