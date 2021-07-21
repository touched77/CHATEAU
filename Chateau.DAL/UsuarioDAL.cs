using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;//
using Chateau.DTO;

namespace Chateau.DAL
{
    public class UsuarioDAL : Conexao
    {
        //cadastro
        public void Cadastrar(UsuarioDTO objModelo)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("INSERT INTO AdmUser" + "(NomeAdm, SenhaAdm ,UrlImage,IdTIpoUsuario,DsEmail) Values (@NomeAdm,@SenhaAdm,@TipoUser,@ImgUser  ,@Email)", conn);

                cmd.Parameters.AddWithValue("@NomeAdm", objModelo.NomeAdm);
                cmd.Parameters.AddWithValue("@SenhaAdm", objModelo.SenhaAdm);
                cmd.Parameters.AddWithValue("@TipoUser ", objModelo.UrlImage); 
                cmd.Parameters.AddWithValue("@ImgUser", objModelo.IdTIpoUsuario);
                cmd.Parameters.AddWithValue("@Email", objModelo.DsEmail);

                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar " + ex);
            }
            finally
            {
                DesConectar();
            }
        }


        //autenticacao
        public UsuarioDTO Autentica(string objUser, string objSenha)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("Select * FROM AdmUser Where NomeAdm=@NomeAdm AND SenhaAdm=@SenhaAdm", conn);
                cmd.Parameters.AddWithValue("@NomeAdm", objUser);
                cmd.Parameters.AddWithValue("@SenhaAdm", objSenha);
                dr = cmd.ExecuteReader();

                UsuarioDTO obj = null;//ponteiro
                if (dr.Read())
                {
                    obj = new UsuarioDTO();
                    obj.IdAdm = Convert.ToInt32(dr["IdAdm"]);
                    obj.NomeAdm = Convert.ToString(dr["NomeAdm"]); 
                    obj.SenhaAdm = Convert.ToString(dr["SenhaAdm"]);
                    obj.UrlImage = Convert.ToString(dr["UrlImage"]);
                    obj.IdTIpoUsuario = Convert.ToInt32(dr["IdTipoUsuario"]);
                    obj.DsEmail = Convert.ToString(dr["DsEmail"]); 
                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Usuario não cadastrado! " + ex);
            }
            finally
            {
                DesConectar();
            }
        }


        //editar
        public void Editar(UsuarioDTO objEdita)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("UPDATE AdmUser SET IdAdm=@IdAdm ,NomeAdm=@NomeAdm,SenhaAdm=@SenhaAdm,UrlImage=@UrlImage,IdUsuario=@IdUsuario,TipoUsuario=@TIpoUsuario WHERE DsEmail=@IdUser", conn);
                cmd.Parameters.AddWithValue("@IdAdm", objEdita.IdAdm);
                cmd.Parameters.AddWithValue("@NomeAdm", objEdita.NomeAdm);
                cmd.Parameters.AddWithValue("@SenhaAdm", objEdita.SenhaAdm);
                cmd.Parameters.AddWithValue("@UrlImage", objEdita.UrlImage);
                cmd.Parameters.AddWithValue("IdUsuario", objEdita.IdUsuario);
                cmd.Parameters.AddWithValue("@TIpoUsuario", objEdita.IdTipoUsuario);
                cmd.Parameters.AddWithValue("@DsEmail", objEdita.DsEmail);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao editar o usuário! " + ex);
            }
            finally
            {
                DesConectar();
            }

        }

        //Excluir

        public void Excluir(int objExclui)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("DELETE FROM AdmUser WHERE IdUsuario=@idAdm", conn);
                cmd.Parameters.AddWithValue("@IdAdm", objExclui);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Excluir! " + ex);
            }
            finally
            {
                DesConectar();
            }
        }
        
        //listar
        public List<CadastroProfDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdUsuario,NomeUsuario,CpfUsuario,SenhaUsuario,DataNascimento,UrlImgUsuario,DescricaoTipoUsuario FROM Usuario JOIN TipoUsuario ON TipoUsuario=IdTipoUsuario", conn);
                dr = cmd.ExecuteReader();

                //criando uma lista vazia
                List<CadastroProfDTO> Lista = new List<CadastroProfDTO>();

                while (dr.Read())
                {
                    CadastroProfDTO obj = new CadastroProfDTO();
                    obj.IdProfissional = Convert.ToInt32(dr["IdProfissional"]);
                    obj.NmProfissional = dr["NmProfissional"].ToString();
                    obj.DsEmail = dr["DsEmail"].ToString();
                    obj.NroCPF = dr["NroCPF"].ToString();
                    obj.SenhaProfissional = dr["SenhaProfissional"].ToString();
                    obj.NroTelefone = dr["NroTelefone"].ToString();
                    obj.DsBiografia = dr["DsBiografia"].ToString();
                    obj.DtNascimento = dr["DtNascimento"].ToString();
                    obj.FormaçãoEscolar = dr["FormaçãoEscolar"].ToString();
                    obj.DsSexo = dr["DsSexo"].ToString();
                    obj.DsEndereco = dr["DsEndereco"].ToString();
                    obj.NroEndereco = dr["NroEndereco"].ToString();
                    obj.DsComplemento = dr["DsComplemento"].ToString();
                    obj.DsCEP = dr["DsCEP"].ToString();
                    obj.DsBairro = dr["DsBairro"].ToString();
                    obj.DsCidade = dr["DsCidade"].ToString();
                    obj.DsUF = dr["DsUF"].ToString();
                    obj.DtTermos = dr["DtTermos"].ToString();
                    obj.DsPrivacidade = dr["DsPrivacidade"].ToString();
                    obj.UrlImagem = dr["UrlImagem"].ToString();
                    Lista.Add(obj);

                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Listar! " + ex);
            }
            finally
            {
                DesConectar();
            }
        }

        //selecionar
        public List<CadastroProfDTO> Selecionar( int objSeleciona)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdProfissional,NmProfissional,DsEmail,NroCPF,SenhaProfissional,NroTelefone" +
                    ",DsBiografia,DtNascimento,FormacaoEscolar,DsSexo,DsEndereco,NroEndereco,DsComplemento,DsCEP,DsBairro,DsCidade,DsUF,DtTermos,DsPrivacidade,UrlImagem" +
                    " FROM  Profissional and Empresa JOIN IdEmpresa ON IdEmpresa=IdTipoUsuario", conn);
                cmd.Parameters.AddWithValue("@?",objSeleciona);
                dr = cmd.ExecuteReader();

                //criando uma lista vazia
                CadastroProfDTO obj = new CadastroProfDTO();

                while (dr.Read())
                {
                    CadastroProfDTO obj = new CadastroProfDTO();
                    obj.IdProfissional = Convert.ToInt32(dr["IdProfissional"]);
                    obj.NmProfissional = dr["NmProfissional"].ToString();
                    obj.DsEmail = dr["DsEmail"].ToString();
                    obj.NroCPF = dr["NroCPF"].ToString();
                    obj.SenhaProfissional = dr["SenhaProfissional"].ToString();
                    obj.NroTelefone = dr["NroTelefone"].ToString();
                    obj.DsBiografia = dr["DsBiografia"].ToString();
                    obj.DtNascimento = dr["DtNascimento"].ToString();
                    obj.FormaçãoEscolar = dr["FormaçãoEscolar"].ToString();
                    obj.DsSexo = dr["DsSexo"].ToString();
                    obj.DsEndereco = dr["DsEndereco"].ToString();
                    obj.NroEndereco = dr["NroEndereco"].ToString();
                    obj.DsComplemento = dr["DsComplemento"].ToString();
                    obj.DsCEP = dr["DsCEP"].ToString();
                    obj.DsBairro = dr["DsBairro"].ToString();
                    obj.DsCidade = dr["DsCidade"].ToString();
                    obj.DsUF = dr["DsUF"].ToString();
                    obj.DtTermos = dr["DtTermos"].ToString();
                    obj.DsPrivacidade = dr["DsPrivacidade"].ToString();
                    obj.UrlImagem = dr["UrlImagem"].ToString();
                    Lista.Add(obj);

                }
                return Lista;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Listar! " + ex);
            }
            finally
            {
                DesConectar();
            }
        }

        public CadastroProfDTO Selecionar(int objSeleciona)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdUsuario,NomeUsuario,CpfUsuario,SenhaUsuario,DataNascimento,UrlImgUsuario,DescricaoTipoUsuario FROM Usuario JOIN TipoUsuario ON TipoUsuario=IdTipoUsuario WHERE IdUsuario=@IdUser", conn);
                cmd.Parameters.AddWithValue("@IdUser", objSeleciona);
                dr = cmd.ExecuteReader();


                //criando ponteiro
                CadastroProfDTO obj = new CadastroProfDTO();

                if (dr.Read())
                {
                    obj = new CadastroProfDTO(); 
                    obj.IdProfissional = Convert.ToInt32(dr["IdProfissional"]);
                    obj.NmProfissional = dr["NmProfissional"].ToString();
                    obj.DsEmail = dr["DsEmail"].ToString();
                    obj.NroCPF = dr["NroCPF"].ToString();
                    obj.SenhaProfissional = dr["SenhaProfissional"].ToString();
                    obj.NroTelefone = dr["NroTelefone"].ToString();
                    obj.DsBiografia = dr["DsBiografia"].ToString();
                    obj.DtNascimento = dr["DtNascimento"].ToString();
                    obj.FormaçãoEscolar = dr["FormaçãoEscolar"].ToString();
                    obj.DsSexo = dr["DsSexo"].ToString();
                    obj.DsEndereco = dr["DsEndereco"].ToString();
                    obj.NroEndereco = dr["NroEndereco"].ToString();
                    obj.DsComplemento = dr["DsComplemento"].ToString();
                    obj.DsCEP = dr["DsCEP"].ToString();
                    obj.DsBairro = dr["DsBairro"].ToString();
                    obj.DsCidade = dr["DsCidade"].ToString();
                    obj.DsUF = dr["DsUF"].ToString();
                    obj.DtTermos = dr["DtTermos"].ToString();
                    obj.DsPrivacidade = dr["DsPrivacidade"].ToString();
                    obj.UrlImagem = dr["UrlImagem"].ToString();
                

                }
                return obj;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Selecionar! " + ex);
            }
            finally
            {
                DesConectar();
            }
        }
        



    }

}
