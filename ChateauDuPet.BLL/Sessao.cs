using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ChateauDuPet.DTO;
using ChateauDuPet.BLL;


namespace ChateauDuPet.BLL
{
    public static class Sessao
    {
        private static string _NomeUsuario;
        public static string NomeUsuario
        {
            get { return Sessao._NomeUsuario; }
            set { Sessao._NomeUsuario = value; }
        }

        private static int _IdProfissional;
        public static int IdProfissional
        {
            get { return Sessao._IdProfissional; }
            set { Sessao._IdProfissional = value; }
        }
        private static int _IdEmpresa;
        public static int IdEmpresa
        {
            get { return Sessao._IdEmpresa; }
            set { Sessao._IdEmpresa = value; }
        }
       
    }
}
