﻿using System;
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
            int idProfissional = Convert.ToInt32(Request.QueryString["id"]);
            ProfissionalDTO profissionalDTO = new ProfissionalDTO();

            ProfissionalDTO profissionalDTO = objBLL.SelecionarPro(idProfissional);

            VagaBLL objBLL = new VagaBLL();

            VagaDTO objDTO = new VagaDTO();
            



        }
    }
}