using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.DTO;
using ChateauDuPet.BLL;

namespace ChateauDuPet.UI
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             
        }
        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {


            try
            {

                if (cbTermos.Checked == cbPolitica.Checked)
                {

                    if (DLLTipoUSer.SelectedItem.ToString() == "Profissional")
                    {

                        //instanciado obj DTO
                        ProfissionalDTO objDTO = new ProfissionalDTO();
                        ProfissionalBLL objCad = new ProfissionalBLL();

                        objDTO.Nome = txtNome.Text;
                        objDTO.CPF = txtCpf.Text;
                        objDTO.Email = txtEmail.Text;
                        objDTO.Senha = senhaC.Text;
                        objDTO.Telefone = txtTelefone.Text;
                        objDTO.Nascimento = txtData.Text;
                        objDTO.Sexo = DDLSexo.Text;
                        objDTO.User = txtUser.Text;
                        objDTO.Termos = DateTime.Now;
                        objDTO.Privacidade = DateTime.Now;
                        objDTO.FKTipoUser = Convert.ToInt32(DLLTipoUSer.SelectedValue);


                        objCad.CadastrarProfissional(objDTO);

                        Limpar();

                        lblMensagem.Text = "Cadastrado com sucesso!";


                    }
                    if (DLLTipoUSer.SelectedItem.ToString() == "Empresa")
                    {
                        EmpresaDTO objDTO = new EmpresaDTO();
                        EmpresaBLL objCad = new EmpresaBLL();

                        objDTO.Recrutador = txtNome.Text;
                        objDTO.CPF = txtCpf.Text;
                        objDTO.Email = txtEmail.Text;
                        objDTO.SenhaEmpresa = senhaC.Text;
                        objDTO.Telefone = txtTelefone.Text;
                        objDTO.Nascimento = txtData.Text;
                        objDTO.Sexo = DDLSexo.Text;
                        objDTO.User = txtUser.Text;
                        objDTO.Termos = DateTime.Now;
                        objDTO.Privacidade = DateTime.Now;
                        objDTO.FKTipoUser = Convert.ToInt32(DLLTipoUSer.SelectedValue);
                        objCad.CadastrarEmpresa(objDTO);

                        Limpar();
                        lblMensagem.Text = "Cadastrado com sucesso!";

                    }
                }
                else
                {
                    lblMensagem.Text = "Selecione a os campos acima!";

                }
            }
            catch (Exception)
            {
                Limpar();
                lblMensagem.Text = "Erro ao cadastrar!";

            }

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {

            Limpar();
        }

        public void Limpar()
        {
            txtNome.Text = string.Empty;
            txtCpf.Text = string.Empty;
            txtEmail.Text = string.Empty;
            senha.Text = string.Empty;
            senhaC.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtData.Text = string.Empty;
            DDLSexo.Text = string.Empty;
            txtUser.Text = string.Empty;
            DLLTipoUSer.SelectedValue = string.Empty;
            txtNome.Focus();
        }
        protected void BtnCadastrar_Click1(object sender, EventArgs e)
        {

            try
            {

                if (cbTermos.Checked == cbPolitica.Checked)
                {

                    if (DLLTipoUSer.SelectedItem.ToString() == "Profissional")
                    {

                        //instanciado obj DTO
                        ProfissionalDTO objDTO = new ProfissionalDTO();
                        ProfissionalBLL objCad = new ProfissionalBLL();

                        objDTO.Nome = txtNome.Text;
                        objDTO.CPF = txtCpf.Text;
                        objDTO.Email = txtEmail.Text;
                        objDTO.Senha = senhaC.Text;
                        objDTO.Telefone = txtTelefone.Text;
                        objDTO.Nascimento = txtData.Text;
                        objDTO.Sexo = DDLSexo.Text;
                        objDTO.User = txtUser.Text;
                        objDTO.Termos = DateTime.Now;
                        objDTO.Privacidade = DateTime.Now;
                        objDTO.FKTipoUser = Convert.ToInt32(DLLTipoUSer.SelectedValue);


                        objCad.CadastrarProfissional(objDTO);


                        lblMensagem.Text = "Cadastrado com sucesso!";


                    }
                    if (DLLTipoUSer.SelectedItem.ToString() == "Empresa")
                    {
                        EmpresaDTO objDTO = new EmpresaDTO();
                        EmpresaBLL objCad = new EmpresaBLL();

                        objDTO.Recrutador = txtNome.Text;
                        objDTO.CPF = txtCpf.Text;
                        objDTO.Email = txtEmail.Text;
                        objDTO.SenhaEmpresa = senhaC.Text;
                        objDTO.Telefone = txtTelefone.Text;
                        objDTO.Nascimento = txtData.Text;
                        objDTO.Sexo = DDLSexo.Text;
                        objDTO.User = txtUser.Text;
                        objDTO.Termos = DateTime.Now;
                        objDTO.Privacidade = DateTime.Now;
                        objDTO.FKTipoUser = Convert.ToInt32(DLLTipoUSer.SelectedValue);
                        objCad.CadastrarEmpresa(objDTO);

                        Limpar();
                        lblMensagem.Text = "Cadastrado com sucesso!";

                    }
                }
                else
                {
                    lblMensagem.Text = "Selecione a os campos acima!";

                }
            }
            catch (Exception)
            {
                Limpar();
                lblMensagem.Text = "Erro ao cadastrar!";

            }

        }
    }
}