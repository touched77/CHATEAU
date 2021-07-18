using ChateauDuPet.DAL;
using ChateauDuPet.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChateauDuPet.BLL
{
   public class ProfissionalBLL
    {
        ProfissionalDAL objDAL = new ProfissionalDAL();

        //Cadastrar Profissional - Insert
        public void CadastrarProfissional(ProfissionalDTO objCad)
        {
            objDAL.Cadastrar(objCad);
        }

        //Listar
        public List<ProfissionalDTO> ListaProfissional()
        {
            return objDAL.Listar();
        }

        //Delete
        public void ExcluirProfissional(int objExclui)
        {
            objDAL.Excluir(objExclui);
        }
        
        //autentica
        public ProfissionalDTO AutenticarProfissional(string objEmailP, string objSenhaP)
        {
            return objDAL.Autenticar(objEmailP, objSenhaP);
        }

        //selecionar
        public ProfissionalDTO SelecionarPro(int objSeleciona)
        {
            return objDAL.Selecionar(objSeleciona);
        }


        public void EditarPro (ProfissionalDTO objEdita)
        {
            objDAL.Editar(objEdita);
        }

        public List<ProfissionalDTO> FiltarP()
        {
            return objDAL.Filtrar();
        }
    
        public List<ProfissionalDTO> FiltrarID(int idprofissional)
        {
           return objDAL.FiltrarPro(idprofissional);
        }
    }
}

