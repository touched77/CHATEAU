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

           //txtNome.Text = profissionalDTO.Nome;
           // lblEmail.Text = profissionalDTO.Email;
           //lblTel.Text = profissionalDTO.Telefone;
           // lblBiografia.Text = profissionalDTO.Biografia;
           // img_pro.ImageUrl = profissionalDTO.UrlImage.Replace("~",".");

            CertificadoDTO objCerDTO = new CertificadoDTO();
            CertificadoBLL objCerBLL = new CertificadoBLL();



            ExperienciaDTO objExpDTO = new ExperienciaDTO();
            ExperienciaBLL objExpBLL = new ExperienciaBLL();


        }

        protected void BtnAlterar_Click(object sender, EventArgs e)
        {

        }
    }
}