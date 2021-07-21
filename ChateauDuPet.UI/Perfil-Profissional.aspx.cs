using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.DTO;
using ChateauDuPet.BLL;

namespace ChateauDuPet.UI.MainProfissional
{
    public partial class Perfil_Profissional : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int idProfissional = Convert.ToInt32(Request.QueryString["id"]);

            ProfissionalBLL objBLL = new ProfissionalBLL();
            ProfissionalDTO objDTO = new ProfissionalDTO();
            
            ProfissionalDTO profissionalDTO = objBLL.SelecionarPro(idProfissional);

            txtNome.Text = profissionalDTO.Nome;
            lblEmail.Text = profissionalDTO.Email;
            lblTel.Text = profissionalDTO.Telefone;
            lblBiografiaPro.Text = profissionalDTO.Biografia;
            imagePro.ImageUrl = profissionalDTO.UrlImage.Replace("~", ".");
            lblFormacaoEscolar.Text = profissionalDTO.FormacaoEscolar;
            lblSexo.Text = profissionalDTO.Sexo;
            lblEndereco.Text = profissionalDTO.Endereco;
            lblNumero.Text = profissionalDTO.NroEndereco;
            lblComplemento.Text = profissionalDTO.Complemento;
            lblCep.Text = profissionalDTO.CEP;
            lblBairro.Text = profissionalDTO.Bairro;
            lblCidade.Text = profissionalDTO.Cidade;
            lblUF.Text = profissionalDTO.UF;
            lbluser.Text = profissionalDTO.User;
            

            ProfissionalBLL objProPefil = new ProfissionalBLL();

            ProfissionalDTO ListProfissional = new ProfissionalDTO();
            rptPro.DataSource = objProPefil.FiltarP();
            rptPro.DataBind();


            CertificadoDTO objCerDTO = new CertificadoDTO();
            CertificadoBLL objCerBLL = new CertificadoBLL();
            rptCertificados.DataSource = objCerBLL.FiltroC();
            rptCertificados.DataBind();



            //CertificadoDTO objcertificadoDTO = objCerBLL.SelecionarCertificado(idProfissional);  

            //lblCurso.Text = objcertificadoDTO.Curso;
            //lblInstituicao.Text = objcertificadoDTO.Instituicao;
            //lblDataInicio.Text = objcertificadoDTO.DataInicio;
            //lblDataConclusao.Text = objcertificadoDTO.DataConclusao;
            //lblDescricao.Text = objcertificadoDTO.Descricao;

            ExperienciaDTO objExpDTO = new ExperienciaDTO();
            ExperienciaBLL objExpBLL = new ExperienciaBLL();
            rptExperiencias.DataSource = objExpBLL.FiltroExpID(idProfissional);
            rptExperiencias.DataBind();



            //lblCargo.Text = objExpDTO.Cargo;
            //lblEmpresa.Text = objExpDTO.Empresa;
            //lblTipoContrato.Text = objExpDTO.TipoContrato;
            //lblLocalidade.Text = objExpDTO.Localidade;
            //lblDataInicio.Text = objExpDTO.DataInicio;
            //lblDataFinal.Text = objExpDTO.DataFinal;

        }

        protected void BtnAlterar_Click(object sender, EventArgs e)
        {

        }
    }
}