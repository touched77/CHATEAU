using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Chateau.BLL;
using Chateau.DTO;

namespace ChateauBanco.UI
{
    public partial class LoginEP : Form
    {
        public LoginEP()
        {
            InitializeComponent();
        }

        private void LoginEP_Load(object sender, EventArgs e)
        {
            txtEmail.Focus(); 
            
            
            //pegando informação digitada pelo usuario
            string objUser = txtEmail.Text;
            string objSenha = txtSenha.Text;
            string objTipo = BoxTipo.Text;

            //instanciado obj DTO
            CadastroProfDTO objModelo = new CadastroProfDTO();
            CadastroEmpresaDTO objValida = new CadastroEmpresaDTO();
            objModelo = objValida.AutenticaUser(objUser, objSenha,objTipo);

            if (objTipo != null)
            {
                switch (objModelo.IdProfissional)
                {
                    case 1:
                        Session.nomeUsuario = txtEmail.Text.Trim();
                        MainProfissional obj = new MainProfissional();
                        obj.Show();
                        this.Visible = false;
                        break;

                    case 2:
                        Session.nomeUsuario = txtEmail.Text.Trim();
                        MainEmpresa obj2 = new MainEmpresa();
                        obj2.Show();
                        this.Visible = false;
                        break;




                }
            }
            else
            {
                MessageBox.Show("Selecione uma opção!");
            }

 
            catch (Exception ex)
            {

                MessageBox.Show("Usuario não cadastrado !! " + ex.Message);
            }
}
    }
}*/
