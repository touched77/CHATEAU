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
        { //
            VagaBLL objBLL = new VagaBLL();


            rptVagas.DataSource = objBLL.ListarVaga();
            rptVagas.DataBind();
             
             


        }

        protected void btnVermais_Click(object sender, EventArgs e)
        {

        }
    }
}