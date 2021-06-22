using ChateauDuPet.DTO;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChateauDuPet.DAL
{
   public class ProfissionalDAL:Conexao
    {
        //inserir - create
        public void Cadastrar(ProfissionalDTO objCad)
        {
            try
            {
                Conectar(); cmd = new SqlCommand("  INSERT INTO Profissional(NmProfissional,DsEmail,NroCPF,SenhaProfissional,NroTelefone,FKTipoUser,DsUser,DtNascimento,DsSexo,DtTermos,DsPrivacidade) " +
                    " VALUES(@Nome, @Email, @CPF, @Senha, @Tel, @TipoUSer, @User, @DtNascimento, @Sexo,@Termos,@Privacidade ); ", conn);
                cmd.Parameters.AddWithValue("@Nome", objCad.Nome);
                cmd.Parameters.AddWithValue("@Email", objCad.Email);
                cmd.Parameters.AddWithValue("@CPF", objCad.CPF);
                cmd.Parameters.AddWithValue("@Senha", objCad.Senha);
                cmd.Parameters.AddWithValue("@Tel", objCad.Telefone);
                cmd.Parameters.AddWithValue("@TipoUser", objCad.FKTipoUser);
                cmd.Parameters.AddWithValue("@User", objCad.User);
                cmd.Parameters.AddWithValue("@DtNascimento", objCad.Nascimento); 
                cmd.Parameters.AddWithValue("@Sexo", objCad.Sexo);
                cmd.Parameters.AddWithValue("@Termos", objCad.Termos);
                cmd.Parameters.AddWithValue("@Privacidade", objCad.Privacidade); 

                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao cadastrar!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Listar
        public List<ProfissionalDTO> Listar()
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT IdProfissional, NmProfissional, DsEmail, NroCPF, SenhaProfissional, NroTelefone, DsBiografia, DtNascimento, FormacaoEscolar, DsSexo, DsEndereco, DsComplemento, DsCEP , DsBairro, DsCidade, DsUF, DtTermos, DsPrivacidade, UrlImage, FKTipoUser FROM Profissional JOIN TipoUser ON FKTipoUser=IdProfissional", conn);
                dr = cmd.ExecuteReader();

                List<ProfissionalDTO> Lista = new List<ProfissionalDTO>();
                //criando lista vazia

                while (dr.Read())
                {
                    ProfissionalDTO obj = new ProfissionalDTO();
                    obj.IdProfissional = Convert.ToInt32(dr["IdProfissional"]);
                    obj.Nome = dr["NmProfissional"].ToString();
                    obj.Email = dr["DsEmail"].ToString();
                    obj.CPF = dr["NroCPF"].ToString();
                    obj.Senha = dr["SenhaProfissional"].ToString();
                    obj.Telefone = dr["NroTelefone"].ToString();
                    obj.Biografia = dr["DsBiografia"].ToString();
                    obj.Nascimento = dr["DtNascimento"].ToString();
                    obj.FormacaoEscolar = dr["FormacaoEscolar"].ToString();
                    obj.Sexo = dr["DsSexo"].ToString();
                    obj.Endereco = dr["DsEndereco"].ToString();
                    obj.Complemento = dr["DsComplemento"].ToString();
                    obj.CEP = dr["DsCEP"].ToString();
                    obj.Bairro = dr["DsBairro"].ToString();
                    obj.Cidade = dr["DsCidade"].ToString();
                    obj.UF = dr["DsUF"].ToString(); 
                    obj.Termos = Convert.ToDateTime(dr["DtTermos"]);
                    obj.Privacidade = Convert.ToDateTime(dr["DsPrivacidade"]);
                    obj.UrlImage = dr["UrlImage"].ToString();
                    obj.FKTipoUser = Convert.ToInt32(dr["FKTipoUser"]);

                    Lista.Add(obj);
                }
                return Lista;
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao Listar Profissional!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Delete
        public void Excluir(int objExclui)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("DELETE FROM Profissional WHERE IdProfissional=@v10", conn);
                cmd.Parameters.AddWithValue("@v20", objExclui);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao Excluir Profissional!" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }

        //Autenticar
        public ProfissionalDTO Autenticar(string objEmailP, string objSenhaP)
        {
            try
            {
                Conectar();
                cmd = new SqlCommand("SELECT DsEmail, SenhaProfissional, FKTipoUser FROM Profissional WHERE DsEmail=@v2 AND SenhaProfissional=@v4", conn);
                cmd.Parameters.AddWithValue("@v2", objEmailP);
                cmd.Parameters.AddWithValue("@v4", objSenhaP);
                dr = cmd.ExecuteReader();

                ProfissionalDTO obj = null;
                if (dr.Read())
                {
                    obj = new ProfissionalDTO();
                    obj.Email = dr["DsEmail"].ToString();
                    obj.Senha = dr["SenhaProfissional"].ToString();
                    obj.FKTipoUser = Convert.ToInt32(dr["FKTipoUser"]);
                }
                return obj;
            }
            catch (Exception ex)
            {
                throw new Exception("Erro ao Autenticar Profissional !" + ex.Message);
            }
            finally
            {
                Desconectar();
            }
        }


    }
}
