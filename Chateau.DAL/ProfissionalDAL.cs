using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Chateau.DTO;

namespace Chateau.DAL
{
     public class ProfissionalDAL : Conexao
    { //cadastro
        public void Cadastrar(CadastroProfDTO  objPro)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("INSERT INTO Profissional (NmProfissional, DsEmail ,NroCPF,SenhaProfissional,NroTelefone,DsBiografia,DtNascimento,FormaçãoEscolar,DsSexo,DsEndereco,NroEndereco,DsComplemento,DsBairro,DsCidade,DsUF,DtTermos,DsPrivacidade,UrlImagem) " +
                    "Values (@NmProfissional, @DsEmail ,@NroCPF,@SenhaProfissional,@NroTelefone,@DsBiografia,@DtNascimento,@FormaçãoEscolar,@DsSexo,@DsEndereco,@NroEndereco,@DsComplemento,@DsBairro,@DsCidade,@DsUF,@DtTermos,@DsPrivacidade,@UrlImagem)", conn);

                cmd.Parameters.AddWithValue("@NmProfissional", objPro.NmProfissional);
                cmd.Parameters.AddWithValue("@DsEmail", objPro.DsEmail);
                cmd.Parameters.AddWithValue("@NroCPF ", objPro.NroCPF); 
                cmd.Parameters.AddWithValue("@SenhaProfissional", objPro.SenhaProfissional);
                cmd.Parameters.AddWithValue("@NroTelefone", objPro.NroTelefone);
                cmd.Parameters.AddWithValue("@DsBiografia", objPro.DsBiografia);
                cmd.Parameters.AddWithValue("@DtNascimento", objPro.DtNascimento);
                cmd.Parameters.AddWithValue("@FormaçãoEscolar", objPro.FormaçãoEscolar);
                cmd.Parameters.AddWithValue("@DsSexo", objPro.DsSexo);
                cmd.Parameters.AddWithValue("@DsEndereco", objPro.DsEndereco);
                cmd.Parameters.AddWithValue("@NroEndereco", objPro.NroEndereco);
                cmd.Parameters.AddWithValue("@DsComplemento", objPro.DsComplemento);
                cmd.Parameters.AddWithValue("@DsBairro", objPro.DsBairro);
                cmd.Parameters.AddWithValue("@DsCidade", objPro.DsCidade);
                cmd.Parameters.AddWithValue("@DsUF", objPro.DsUF);
                cmd.Parameters.AddWithValue("@DtTermos", objPro.DtTermos);
                cmd.Parameters.AddWithValue("@DsPrivacidade", objPro.DsPrivacidade);
                cmd.Parameters.AddWithValue("@UrlImagem", objPro.UrlImagem); 

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
        public CadastroProfDTO Autentica(string objUser, string objSenha)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand ("Select * FROM Prodissional Where DsEmail=@DsEmail AND SenhaProfissional=@SenhaProfissional", conn);
                cmd.Parameters.AddWithValue("@DsEmail", objUser);
                cmd.Parameters.AddWithValue("@SenhaProfissional", objSenha);
                dr = cmd.ExecuteReader();

                CadastroProfDTO obj = null;//ponteiro
                if (dr.Read())
                {
                    obj = new CadastroProfDTO();
                    obj.IdProfissional = Convert.ToInt32(dr["IdProfissional"]);
                    obj.NmProfissional = Convert.ToString(dr["NmProfissional"]); 
                    obj.DsEmail = Convert.ToString(dr["DsEmail"]);
                    obj.NroCPF = Convert.ToString(dr["NroCPF"]);
                    obj.SenhaProfissional = Convert.ToString(dr["SenhaProfissional"]);
                    obj.NroTelefone = Convert.ToString(dr["NroTelefone"]); 
                    obj.DsBiografia = Convert.ToString(dr["DsBiografia"]); 
                    obj.DtNascimento = Convert.ToString(dr["DtNascimento"]); 
                    obj.FormaçãoEscolar = Convert.ToString(dr["FormaçãoEscolar"]); 
                    obj.DsSexo = Convert.ToString(dr["DsSexo"]); 
                    obj.DsEndereco = Convert.ToString(dr["DsEndereco"]); 
                    obj.NroEndereco = Convert.ToString(dr["NroEndereco"]); 
                    obj.DsComplemento = Convert.ToString(dr["DsComplemento"]); 
                    obj.NroEndereco = Convert.ToString(dr["DsCEP"]); 
                    obj.DsBairro = Convert.ToString(dr["DsCidade"]); 
                    obj.DsUF = Convert.ToString(dr["DsUF"]);
                    obj.DtTermos = Convert.ToString(dr["DtTermos"]);
                    obj.DsPrivacidade = Convert.ToString(dr["DsPrivacidade"]);
                    obj.UrlImagem = Convert.ToString(dr["UrlImagem"]);
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

