using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;


namespace ChateauDuPet.UI
{
    public partial class MainPro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            ProfissionalBLL SelecionaBLL = new ProfissionalBLL();
            ProfissionalDTO SelecinaDTO = new ProfissionalDTO();
            int idprofissional = Sessao.IdProfissional;
            SelecinaDTO = SelecionaBLL.SelecionarPro(Sessao.IdProfissional);

            txtNome.Text = SelecinaDTO.Nome;



            int idVagaM = Convert.ToInt32(Request.QueryString["id"]);
            VagaBLL objVagaBLL = new VagaBLL();

            VagaDTO objDTO = new VagaDTO();

            rptVaga1.DataSource = objVagaBLL.FiltrarVaga();
            rptVaga1.DataBind();


            //request no parametro da query string
            int idProfissional = Convert.ToInt32(Request.QueryString["id"]);

            ProfissionalBLL objProPefil = new ProfissionalBLL();

            ProfissionalDTO profissionalDTO = new ProfissionalDTO();
            rptPro.DataSource = objProPefil.FiltarP();
            rptPro.DataBind();





        }
    }
}