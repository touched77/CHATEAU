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
    public partial class DefultProfissional : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Sessao.EmailUser == null)
            {
                Response.Redirect("~/Login.aspx");

            }

            int IDPro = Convert.ToInt32(Sessao.IdProfissional);

            int idProfissional = Convert.ToInt32(Request.QueryString["id"]);

            ProfissionalBLL objProPefil = new ProfissionalBLL();

            ProfissionalDTO profissionalDTO = new ProfissionalDTO();
            listNav.DataSource = objProPefil.FiltarP();
            listNav.DataBind();

        }

        protected void btnVermais_Click(object sender, EventArgs e)
        {

        }
    }
}