using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Chateau.DAL;
using Chateau.DTO;

namespace Chateau.BLL
{
    public class UsuarioBLL
    {
        UsuarioDAL objBLL = new UsuarioDAL();
        //cadastrar
        public void CadastrarUser(UsuarioDTO objModelo)
        {
            objBLL.Cadastrar(objModelo);
        }

        //autenticar

        public UsuarioDTO AutenticaUser(string objUser, string objSenha)
        {
            UsuarioDTO user = objBLL.Autentica(objUser, objSenha);
            if (user != null)
            {
                return user;
            }
            else
            {
                throw new Exception("Erro ao autenticar usuário !");
            }


        }

        //editar

        public void EditarUsuario(UsuarioDTO objEdita)
        {
            objBLL.Editar(objEdita);
        }

        //excluir

        public void ExcluirUsuario(int objExclui)
        {
            objBLL.Excluir(objExclui);
        }
        
        //listar

        public List<CadastroProfDTO> ListarUsuario()
        {
            return objBLL.Listar();
        }

        //selecionar

        public CadastroProfDTO SelecionarUser(int ObjSeleciona)
        {
            return objBLL.Selecionar(ObjSeleciona);
        }
    }

}
