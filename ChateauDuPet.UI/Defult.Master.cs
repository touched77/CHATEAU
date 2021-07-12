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
    public partial class Defult : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void PopularGV()
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
                        objDTO.Termos = Convert.ToDateTime(cbTermos.Checked);
                        objDTO.Privacidade = Convert.ToDateTime(cbPolitica.Checked);
                        objDTO.FKTipoUser = Convert.ToInt32(DLLTipoUSer.SelectedValue);
                        objCad.CadastrarEmpresa(objDTO);

                        lblMensagem.Text = "Cadastrado com sucesso!";

                    }
                }
                else
                {
                    lblMensagem3.Text = "Selecione a os campos acima!";

                }
            }
            catch (Exception)
            {
                Limpar();
                lblMensagem.Text = "Usuário inválido!";

            }
        }

        private void Show()
        {
            throw new NotImplementedException();
        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }
        
        public void Limpar( )
        {
             txtNome.Text= string.Empty;
            txtCpf.Text = string.Empty;
            txtEmail.Text = string.Empty;
            senhaC.Text = string.Empty;
            txtTelefone.Text = string.Empty;
            txtData.Text = string.Empty;
            DDLSexo.Text = string.Empty;
            txtUser.Text = string.Empty;
            DLLTipoUSer.SelectedValue = string.Empty;
            txtNome.Focus();
        }
        protected void BtnEntrar_Click(object sender, EventArgs e)
        {

            if (DDLList.SelectedItem.ToString() == "Profissional")
            {
                string objEmailP = txtEmailLOGIN.Text.Trim();
                string objSenhaP = txtSenha.Text.Trim();
                //instanciado obj DTO
                ProfissionalDTO objModelo = new ProfissionalDTO();
                ProfissionalBLL objValida = new ProfissionalBLL();

                objModelo = objValida.AutenticarProfissional(objEmailP, objSenhaP);

                if (objModelo != null)
                {


                    Response.Redirect("MainPro.aspx"); 
            }

            }
            if (DDLList.SelectedItem.ToString() == "Empresa")
            {
                string objEmailE = txtEmailLOGIN.Text;
                string objSenhaE = txtSenha.Text;
                EmpresaDTO objModeloExp = new EmpresaDTO();
                EmpresaBLL objValidaExp = new EmpresaBLL();

                objModeloExp = objValidaExp.AutenticarEmpresa(objEmailE, objSenhaE);
                if (objModeloExp != null)
                {

                    Response.Redirect("MainEmpre.aspx");

                }
            }
            if (DDLList.SelectedItem.ToString() == "Selecione uma opção")
            {
                string objEmailA = txtEmailLOGIN.Text;
                string objSenhaA = txtSenha.Text;
                AdministrativoDTO objModeloExp = new AdministrativoDTO();
                AdministrativoBLL objValidaExp = new AdministrativoBLL();

                objModeloExp = objValidaExp.AutenticarAdministrativo(objEmailA, objSenhaA);
                if (objModeloExp != null)
                {
                    Response.Redirect("MainADM.aspx");


                }
            }
            else
            {

                Limpar();
                lblMensagem.Text = "Usuário não cadastrado !!";
            }
        }

    }
}