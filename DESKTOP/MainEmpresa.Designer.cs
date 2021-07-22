
namespace ChateauBanco.UI
{
    partial class MainEmpresa
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.label1 = new System.Windows.Forms.Label();
            this.gbCadastroV = new System.Windows.Forms.GroupBox();
            this.lblDescricao = new System.Windows.Forms.Label();
            this.lblValidade = new System.Windows.Forms.Label();
            this.lblRegistro = new System.Windows.Forms.Label();
            this.lblTitulo = new System.Windows.Forms.Label();
            this.btnCadastrar = new System.Windows.Forms.Button();
            this.btnCadastrarVagas = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.button5 = new System.Windows.Forms.Button();
            this.cbRegistro = new System.Windows.Forms.ComboBox();
            this.txtTitulo = new System.Windows.Forms.TextBox();
            this.txtdescricao = new System.Windows.Forms.TextBox();
            this.cbValidade = new System.Windows.Forms.ComboBox();
            this.cbSexo = new System.Windows.Forms.ComboBox();
            this.lblSexo = new System.Windows.Forms.Label();
            this.lblExperiencia = new System.Windows.Forms.Label();
            this.cbExperiencia = new System.Windows.Forms.ComboBox();
            this.btnCancelar = new System.Windows.Forms.Button();
            this.gbCadastroV.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(128, 9);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(0, 13);
            this.label1.TabIndex = 0;
            // 
            // gbCadastroV
            // 
            this.gbCadastroV.Controls.Add(this.btnCancelar);
            this.gbCadastroV.Controls.Add(this.cbExperiencia);
            this.gbCadastroV.Controls.Add(this.lblExperiencia);
            this.gbCadastroV.Controls.Add(this.lblSexo);
            this.gbCadastroV.Controls.Add(this.cbSexo);
            this.gbCadastroV.Controls.Add(this.cbValidade);
            this.gbCadastroV.Controls.Add(this.txtdescricao);
            this.gbCadastroV.Controls.Add(this.txtTitulo);
            this.gbCadastroV.Controls.Add(this.cbRegistro);
            this.gbCadastroV.Controls.Add(this.lblDescricao);
            this.gbCadastroV.Controls.Add(this.lblValidade);
            this.gbCadastroV.Controls.Add(this.lblRegistro);
            this.gbCadastroV.Controls.Add(this.lblTitulo);
            this.gbCadastroV.Controls.Add(this.btnCadastrar);
            this.gbCadastroV.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.gbCadastroV.Location = new System.Drawing.Point(117, 12);
            this.gbCadastroV.Name = "gbCadastroV";
            this.gbCadastroV.Size = new System.Drawing.Size(668, 384);
            this.gbCadastroV.TabIndex = 2;
            this.gbCadastroV.TabStop = false;
            this.gbCadastroV.Visible = false;
            // 
            // lblDescricao
            // 
            this.lblDescricao.AutoSize = true;
            this.lblDescricao.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDescricao.Location = new System.Drawing.Point(8, 140);
            this.lblDescricao.Name = "lblDescricao";
            this.lblDescricao.Size = new System.Drawing.Size(80, 20);
            this.lblDescricao.TabIndex = 12;
            this.lblDescricao.Text = "Descrição";
            this.lblDescricao.Visible = false;
            this.lblDescricao.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            this.lblDescricao.Click += new System.EventHandler(this.label7_Click);
            // 
            // lblValidade
            // 
            this.lblValidade.AutoSize = true;
            this.lblValidade.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblValidade.Location = new System.Drawing.Point(395, 82);
            this.lblValidade.Name = "lblValidade";
            this.lblValidade.Size = new System.Drawing.Size(71, 20);
            this.lblValidade.TabIndex = 11;
            this.lblValidade.Text = "Validade";
            this.lblValidade.Visible = false;
            this.lblValidade.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // lblRegistro
            // 
            this.lblRegistro.AutoSize = true;
            this.lblRegistro.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblRegistro.Location = new System.Drawing.Point(320, 18);
            this.lblRegistro.Name = "lblRegistro";
            this.lblRegistro.Size = new System.Drawing.Size(125, 20);
            this.lblRegistro.TabIndex = 9;
            this.lblRegistro.Text = "Tipo de Registro";
            this.lblRegistro.Visible = false;
            this.lblRegistro.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // lblTitulo
            // 
            this.lblTitulo.AutoSize = true;
            this.lblTitulo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitulo.Location = new System.Drawing.Point(8, 18);
            this.lblTitulo.Name = "lblTitulo";
            this.lblTitulo.Size = new System.Drawing.Size(47, 20);
            this.lblTitulo.TabIndex = 7;
            this.lblTitulo.Text = "Titulo";
            this.lblTitulo.Visible = false;
            this.lblTitulo.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // btnCadastrar
            // 
            this.btnCadastrar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(13)))), ((int)(((byte)(41)))), ((int)(((byte)(78)))));
            this.btnCadastrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCadastrar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCadastrar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnCadastrar.Location = new System.Drawing.Point(563, 329);
            this.btnCadastrar.Name = "btnCadastrar";
            this.btnCadastrar.Size = new System.Drawing.Size(99, 33);
            this.btnCadastrar.TabIndex = 6;
            this.btnCadastrar.Text = "Cadastrar";
            this.btnCadastrar.UseVisualStyleBackColor = false;
            this.btnCadastrar.Visible = false;
            this.btnCadastrar.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            this.btnCadastrar.Click += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // btnCadastrarVagas
            // 
            this.btnCadastrarVagas.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(13)))), ((int)(((byte)(41)))), ((int)(((byte)(78)))));
            this.btnCadastrarVagas.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCadastrarVagas.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCadastrarVagas.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnCadastrarVagas.Location = new System.Drawing.Point(9, 99);
            this.btnCadastrarVagas.Name = "btnCadastrarVagas";
            this.btnCadastrarVagas.Size = new System.Drawing.Size(102, 30);
            this.btnCadastrarVagas.TabIndex = 3;
            this.btnCadastrarVagas.Text = "Cadastrar vagas";
            this.btnCadastrarVagas.UseVisualStyleBackColor = false;
            this.btnCadastrarVagas.Click += new System.EventHandler(this.btnCadastrarVagas_Click);
            // 
            // button3
            // 
            this.button3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(13)))), ((int)(((byte)(41)))), ((int)(((byte)(78)))));
            this.button3.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button3.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button3.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.button3.Location = new System.Drawing.Point(12, 63);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(99, 30);
            this.button3.TabIndex = 3;
            this.button3.Text = "Candidatos";
            this.button3.UseVisualStyleBackColor = false;
            // 
            // button4
            // 
            this.button4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(13)))), ((int)(((byte)(41)))), ((int)(((byte)(78)))));
            this.button4.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button4.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button4.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.button4.Location = new System.Drawing.Point(12, 23);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(99, 30);
            this.button4.TabIndex = 4;
            this.button4.Text = "Perfil";
            this.button4.UseVisualStyleBackColor = false;
            // 
            // button5
            // 
            this.button5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(13)))), ((int)(((byte)(41)))), ((int)(((byte)(78)))));
            this.button5.Cursor = System.Windows.Forms.Cursors.Hand;
            this.button5.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.button5.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.button5.Location = new System.Drawing.Point(683, 415);
            this.button5.Name = "button5";
            this.button5.Size = new System.Drawing.Size(99, 33);
            this.button5.TabIndex = 5;
            this.button5.Text = "Fechar";
            this.button5.UseVisualStyleBackColor = false;
            this.button5.Click += new System.EventHandler(this.btnFechar_Click);
            // 
            // cbRegistro
            // 
            this.cbRegistro.FormattingEnabled = true;
            this.cbRegistro.Items.AddRange(new object[] {
            "PJ",
            "CLT",
            "Freelancer",
            "Temporário"});
            this.cbRegistro.Location = new System.Drawing.Point(324, 41);
            this.cbRegistro.Name = "cbRegistro";
            this.cbRegistro.Size = new System.Drawing.Size(166, 28);
            this.cbRegistro.TabIndex = 13;
            this.cbRegistro.Visible = false;
            this.cbRegistro.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // txtTitulo
            // 
            this.txtTitulo.Location = new System.Drawing.Point(12, 41);
            this.txtTitulo.MaxLength = 100;
            this.txtTitulo.Name = "txtTitulo";
            this.txtTitulo.Size = new System.Drawing.Size(277, 26);
            this.txtTitulo.TabIndex = 14;
            this.txtTitulo.Visible = false;
            this.txtTitulo.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // txtdescricao
            // 
            this.txtdescricao.BackColor = System.Drawing.SystemColors.Window;
            this.txtdescricao.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtdescricao.Location = new System.Drawing.Point(11, 168);
            this.txtdescricao.MaxLength = 3000;
            this.txtdescricao.Multiline = true;
            this.txtdescricao.Name = "txtdescricao";
            this.txtdescricao.Size = new System.Drawing.Size(651, 155);
            this.txtdescricao.TabIndex = 15;
            this.txtdescricao.Visible = false;
            this.txtdescricao.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // cbValidade
            // 
            this.cbValidade.BackColor = System.Drawing.SystemColors.Window;
            this.cbValidade.FormattingEnabled = true;
            this.cbValidade.Items.AddRange(new object[] {
            "7 Dias",
            "15 Dias",
            "30 Dias"});
            this.cbValidade.Location = new System.Drawing.Point(399, 109);
            this.cbValidade.Name = "cbValidade";
            this.cbValidade.Size = new System.Drawing.Size(166, 28);
            this.cbValidade.TabIndex = 16;
            this.cbValidade.Visible = false;
            this.cbValidade.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // cbSexo
            // 
            this.cbSexo.FormattingEnabled = true;
            this.cbSexo.Items.AddRange(new object[] {
            "Masculino",
            "Feminino",
            "Indiferente"});
            this.cbSexo.Location = new System.Drawing.Point(11, 109);
            this.cbSexo.Name = "cbSexo";
            this.cbSexo.Size = new System.Drawing.Size(166, 28);
            this.cbSexo.TabIndex = 17;
            this.cbSexo.Visible = false;
            this.cbSexo.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // lblSexo
            // 
            this.lblSexo.AutoSize = true;
            this.lblSexo.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblSexo.Location = new System.Drawing.Point(8, 85);
            this.lblSexo.Name = "lblSexo";
            this.lblSexo.Size = new System.Drawing.Size(45, 20);
            this.lblSexo.TabIndex = 18;
            this.lblSexo.Text = "Sexo";
            this.lblSexo.Visible = false;
            this.lblSexo.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // lblExperiencia
            // 
            this.lblExperiencia.AutoSize = true;
            this.lblExperiencia.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblExperiencia.Location = new System.Drawing.Point(197, 85);
            this.lblExperiencia.Name = "lblExperiencia";
            this.lblExperiencia.Size = new System.Drawing.Size(150, 20);
            this.lblExperiencia.TabIndex = 19;
            this.lblExperiencia.Text = "Nível de Experiência";
            this.lblExperiencia.Visible = false;
            this.lblExperiencia.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // cbExperiencia
            // 
            this.cbExperiencia.FormattingEnabled = true;
            this.cbExperiencia.Items.AddRange(new object[] {
            "Até 1 Ano",
            "De 1 a 4 Anos",
            "Mais de 5 Anos"});
            this.cbExperiencia.Location = new System.Drawing.Point(201, 108);
            this.cbExperiencia.Name = "cbExperiencia";
            this.cbExperiencia.Size = new System.Drawing.Size(166, 28);
            this.cbExperiencia.TabIndex = 20;
            this.cbExperiencia.Visible = false;
            this.cbExperiencia.VisibleChanged += new System.EventHandler(this.btnCadastrar_Click);
            // 
            // btnCancelar
            // 
            this.btnCancelar.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(13)))), ((int)(((byte)(41)))), ((int)(((byte)(78)))));
            this.btnCancelar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnCancelar.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnCancelar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btnCancelar.Location = new System.Drawing.Point(443, 330);
            this.btnCancelar.Name = "btnCancelar";
            this.btnCancelar.Size = new System.Drawing.Size(99, 33);
            this.btnCancelar.TabIndex = 6;
            this.btnCancelar.Text = "Cancelar";
            this.btnCancelar.UseVisualStyleBackColor = false;
            this.btnCancelar.Click += new System.EventHandler(this.btnCancelar_Click);
            // 
            // MainEmpresa
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(236)))), ((int)(((byte)(242)))), ((int)(((byte)(252)))));
            this.ClientSize = new System.Drawing.Size(800, 450);
            this.Controls.Add(this.button5);
            this.Controls.Add(this.button4);
            this.Controls.Add(this.button3);
            this.Controls.Add(this.btnCadastrarVagas);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.gbCadastroV);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "MainEmpresa";
            this.Text = "CHATEAU DU PET";
            this.gbCadastroV.ResumeLayout(false);
            this.gbCadastroV.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox gbCadastroV;
        private System.Windows.Forms.Button btnCadastrarVagas;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.Label lblDescricao;
        private System.Windows.Forms.Label lblValidade;
        private System.Windows.Forms.Label lblRegistro;
        private System.Windows.Forms.Label lblTitulo;
        private System.Windows.Forms.Button btnCadastrar;
        private System.Windows.Forms.Button button5;
        private System.Windows.Forms.Label lblExperiencia;
        private System.Windows.Forms.Label lblSexo;
        private System.Windows.Forms.ComboBox cbSexo;
        private System.Windows.Forms.ComboBox cbValidade;
        private System.Windows.Forms.TextBox txtdescricao;
        private System.Windows.Forms.TextBox txtTitulo;
        private System.Windows.Forms.ComboBox cbRegistro;
        private System.Windows.Forms.ComboBox cbExperiencia;
        private System.Windows.Forms.Button btnCancelar;
    }
}