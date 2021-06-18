using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauDuPet.UI.MainProfissional
{
    public partial class VagaProfissional : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            VagaBLL objBLL = new VagaBLL();

            //associar a lista retornada ao repeater
            rptVaga.DataSource = objBLL.ListarVaga();
            rptVaga.DataBind();

        }
    }
}