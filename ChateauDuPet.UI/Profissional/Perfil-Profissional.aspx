<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="Perfil-Profissional.aspx.cs" Inherits="ChateauDuPet.UI.MainProfissional.Perfil_Profissional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
     <h2 class="mb-4">Perfil </h2>
                    <a  class="img logo rounded-circle mb-5"data-toggle="collapse" style="background-image: url(imagens/pp.png);"></a>
   
       
            <br />
              <label id="lblNome" class="form-label">Seu Nome</label>
              <asp:TextBox  Cssclass="form-control" id="txtNome" runat="server"    TabIndex="1" />
              
        
              <label id="lbluser" class="form-label">Usuario</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <asp:TextBox runat="server" Cssclass="form-control" id="txtUser" MaxLength="15"   TabIndex="2" />
               </div>
          
              <label for="username" class="form-label">Tipo de Usuario</label>
              <div class="input-group has-validation">  
        <asp:DropDownList ID="DLLTipoUSer" runat="server" CssClass="form-select "  TabIndex="3">
            <asp:ListItem     Text="Selecione uma opção" />
            <asp:ListItem    Value="1" Text="Empresa" />
            <asp:ListItem    Value="2" Text="Profissional" />
        </asp:DropDownList>
             </div>
          
            

              <label  class="form-label">Data de Nascimento </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtData" TextMode="Date" TabIndex="4"  />
                 
                 
              <label  class="form-label">CPF</label>
              <asp:TextBox runat="server" Cssclass="form-control  Cpf" id="txtCpf" MaxLength="11"  TabIndex="5"     />
           
                  
              <label  class="form-label">Telefone *</label>
              <asp:TextBox runat="server" Cssclass="form-control  " id="txtTelefone"   TabIndex="6"  />
                    
         
               
              <label id="lblemail" class="form-label">Email *</label>
              <asp:TextBox runat="server" CssClass="form-control" id="txtEmail"  TabIndex="7"/> 
            
            
              <label for="username" class="form-label">Sexo</label>
              <div class="input-group has-validation">  
        <asp:DropDownList ID="DDLSexo" runat="server" CssClass="form-select "  TabIndex="8">
            <asp:ListItem     Text="Selecione uma opção" />
            <asp:ListItem    Value="Masculino" Text="Masculino" />
            <asp:ListItem    Value="Feminino" Text="Feminino" />
        </asp:DropDownList>
              </div>
           
            
              <label id="lblSenha" class="form-label">Senha *</label>
              <asp:TextBox runat="server" CssClass="form-control" name="senha" id="senha"   placeholder="Senha"   TabIndex="9" TextMode="Password"/>
                 
              
             <label id="lblSenhaa" class="form-label">Confirmar Senha *</label>
              <asp:TextBox runat="server" CssClass="form-control" name="senhaC" id="senhaC" placeholder="Confirmar Senha"   TabIndex="10" TextMode="Password"/>
       
            
            <hr />
           <h2 >Endereço <span><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
          <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
        </svg></span></h2> 
       
              <label  class="form-label">Endereço</label>
              <asp:TextBox runat="server" CssClass="form-control" id="txtEndereco" />
         
              <label  class="form-label">Número </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtNumero"  />
               
        
              <label  class="form-label">Complemento <span class="text-muted">(opcional)</span></label>
              <asp:TextBox runat="server" CssClass="form-control" id="txtComplemento" />
        
             
              <label  class="form-label">Bairro </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtBairro"  />
                
          
             
              <label  class="form-label">Cidade </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtCidade"  />
                
              <label  class="form-label">UF</label>
              <asp:DropDownList Runat="server" CssClass="form-select" id="txtEstado">
                    <asp:ListItem   Value="RO" Text="RO" />
                <asp:ListItem  Value="AC" Text="AC" />
            <asp:ListItem    Value="AM" Text="AM" />
            <asp:ListItem    Value="RR" Text="RR" />
            <asp:ListItem    Value="PA" Text="PA" />
            <asp:ListItem    Value="AP" Text="AP" />
            <asp:ListItem    Value="TO" Text="TO" />
            <asp:ListItem    Value="MA" Text="MA" />
            <asp:ListItem    Value="PI" Text="PI" />
            <asp:ListItem    Value="CE" Text="CE" />
            <asp:ListItem    Value="RN" Text="RN" />
            <asp:ListItem    Value="PB" Text="PB" />
            <asp:ListItem    Value="PE" Text="PE" />
            <asp:ListItem    Value="AL" Text="AL" />
            <asp:ListItem    Value="SE" Text="SE" />
            <asp:ListItem    Value="BA" Text="BA" />
            <asp:ListItem    Value="MG" Text="MG" />
            <asp:ListItem    Value="ES" Text="ES" />
            <asp:ListItem    Value="RJ" Text="RJ" />
            <asp:ListItem    Value="SP" Text="SP" />
            <asp:ListItem    Value="PR" Text="PR" />
            <asp:ListItem    Value="SC" Text="SC" />
            <asp:ListItem    Value="RS" Text="RS" />
            <asp:ListItem    Value="MS" Text="MS" />
            <asp:ListItem    Value="MT" Text="MT" />
            <asp:ListItem    Value="GO" Text="GO" />
            <asp:ListItem    Value="DF" Text="DF" />
              </asp:DropDownList>

               
         <asp:ListBox runat="server" ></asp:ListBox>
    
       
              
                    <asp:Image ImageUrl='<%#Eval("UrlImagemAlbum")%>' Width="100" Height="100" runat="server" />
            
         
    
      
</asp:Content>
