using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ChateauDuPet.BLL;
using ChateauDuPet.DTO;

namespace ChateauBanco.UI
{
    public partial class MainEmpresa : Form
    {
        public MainEmpresa()
        {
            InitializeComponent();
            EmpresaDTO objDTO = new EmpresaDTO();
            EmpresaBLL objBLL = new EmpresaBLL();

            //Sessao.IdProfissional  = objBLL.SelecionarID(int IdEmpresa);
            

        }

        private void label7_Click(object sender, EventArgs e)
        {

        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        { 

            VagaBLL objCadastrarVaga = new VagaBLL();
            VagaDTO objDTO = new VagaDTO();

            objDTO.Vaga = txtTitulo.Text;
            objDTO.Experiencia = cbExperiencia.SelectedItem.ToString();
            objDTO.Registro = cbRegistro.SelectedItem.ToString();
            objDTO.Descricao = txtdescricao.Text;
            objDTO.Sexo = cbSexo.SelectedItem.ToString();
            objDTO.Validade = cbValidade.Text;
            objDTO.DataPublicacao = DateTime.Now;
            //objDTO.FKEmpresa = Convert.ToInt32(Sessao.IdProfissional());



            objCadastrarVaga.CadastrarVaga(objDTO);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            Limpar();
        }

        public void Limpar()
        {
            txtTitulo.Text = string.Empty;
            txtdescricao.Text = string.Empty;
            cbExperiencia.SelectedItem = null;
            cbRegistro.SelectedItem = null;
            cbSexo.SelectedItem = null;
            cbValidade.SelectedItem = null;
        }

        private void btnCadastrarVagas_Click(object sender, EventArgs e)
        {
            Limpar();
            gbCadastroV.Visible = true;
            txtTitulo.Focus();

            txtTitulo.Visible = true;
            txtdescricao.Visible = true;
            cbExperiencia.Visible = true;
            cbRegistro.Visible = true;
            cbSexo.Visible = true;
            cbValidade.Visible = true;

        }
    }
}
