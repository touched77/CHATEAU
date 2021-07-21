using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Chateau.DTO
{
   public class CadastroProfDTO 
    { 
        public int IdProfissional { get; set; }
        public string NmProfissional { get; set; }
        public string DsEmail { get; set; }
        public string NroCPF { get; set; }
        public string SenhaProfissional { get; set; }
        public string NroTelefone { get; set; }
        public string DsBiografia { get; set; }
        public string DtNascimento { get; set; }
        public string FormaçãoEscolar { get; set; }
        public string DsSexo { get; set; }
        public string DsEndereco { get; set; }
        public string NroEndereco { get; set; }
        public string DsComplemento{ get; set; }
        public string DsCEP { get; set; }
        public string DsBairro { get; set; }
        public string DsCidade { get; set; }
        public string DsUF { get; set; }
        public string DtTermos { get; set; }
        public string DsPrivacidade { get; set; }
        public string UrlImagem { get; set; }
    }
    public class CadastroEmpresaDTO
    {
        public int IdEmpresa { get; set; }
        public string DsEmail { get; set; }
        public string NroTelefone { get; set; }
        public string SenhaEmpresa { get; set; }
        public string DtNascimento { get; set; }
        public string DsSexo { get; set; }
        public string DsEndereco { get; set; }
        public string NroEndereco { get; set; }
        public string DsComplemento { get; set; }
        public string DsCEP { get; set; }
        public string DsBairro { get; set; }
        public string DsCidade { get; set; }
        public string DsUF { get; set; }
        public string NroCNPJ { get; set; }
        public string DsNomeFantasia { get; set; }
        public string DsRazaoSocial { get; set; }
        public string DsDataAbertura { get; set; }
        public DateTime DtTermos { get; set; }
        public string DsPrivacidade { get; set; }
        public string UrlImagem { get; set; }
    }
}

