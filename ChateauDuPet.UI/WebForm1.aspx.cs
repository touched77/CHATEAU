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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnCadastrar_Click(object sender, EventArgs e)
        {


            try
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

                    Response.Redirect("MainPro.aspx");

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

                    Response.Redirect("MainEmpre.aspx");

                }
            }
            catch
            {
                lblMensagem.Text = "Ocorreu um erro ao enviar o cadastro. Tente novamente mais tarde";
            }
        }
    }
}