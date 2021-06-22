<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="Perfil-Profissional.aspx.cs" Inherits="ChateauDuPet.UI.MainProfissional.Perfil_Profissional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <img src="..." class="rounded float-end" alt="...">
     <h2 class="mb-4">@USuario </h2>
          
    
    <a  class="img logo rounded-circle mb-5"data-toggle="collapse" style="background-image: url(imagens/pp.png);"></a>
   <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div>
        <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div>
    
    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It’ll blow your mind.</span></h2>
        <p class="lead">Some great placeholder content for the first featurette here. Imagine some exciting prose here.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"></rect><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div>



            <hr /> <div class="accordion accordion-flush" id="accordionFlushExample">
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingOne">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="true" aria-controls="flush-collapseOne">
        Perfil
      </button>
    </h2>
    <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">
           <label id="lblNome" class="form-label">Seu Nome</label>
              <asp:TextBox  Cssclass="form-control" id="TextBox1" runat="server"    TabIndex="1" />
              
        
              <label id="lbluser" class="form-label">Usuario</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <asp:TextBox runat="server" Cssclass="form-control" id="TextBox2" MaxLength="15"   TabIndex="2" />
               </div>
          
              <label for="username" class="form-label">Tipo de Usuario</label>
              <div class="input-group has-validation">  
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select "  TabIndex="3">
            <asp:ListItem     Text="Selecione uma opção" />
            <asp:ListItem    Value="1" Text="Empresa" />
            <asp:ListItem    Value="2" Text="Profissional" />
        </asp:DropDownList>
             </div>
          
            

              <label  class="form-label">Data de Nascimento </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="TextBox3" TextMode="Date" TabIndex="4"  />
                 
                 
              <label  class="form-label">CPF</label>
              <asp:TextBox runat="server" Cssclass="form-control  Cpf" id="TextBox4" MaxLength="11"  TabIndex="5"     />
           
                  
              <label  class="form-label">Telefone *</label>
              <asp:TextBox runat="server" Cssclass="form-control  " id="TextBox5"    TabIndex="6"  />
                    
         
               
              <label id="lblemail" class="form-label">Email *</label>
              <asp:TextBox runat="server" CssClass="form-control" id="TextBox6"  TabIndex="7"/> 
            
            
              <label for="username" class="form-label">Sexo</label>
              <div class="input-group has-validation">  
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select "  TabIndex="8">
            <asp:ListItem     Text="Selecione uma opção" />
            <asp:ListItem    Value="Masculino" Text="Masculino" />
            <asp:ListItem    Value="Feminino" Text="Feminino" />
        </asp:DropDownList>
              </div>
           
      </div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingTwo">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
      <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
          <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
        </svg>  Endereço
      </button>
    </h2>
    <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
      <div class="accordion-body">    <h2 >Endereço <span><svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
          <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
        </svg></span></h2> 
       
              <label  class="form-label">Endereço</label>
              <asp:TextBox runat="server" CssClass="form-control" id="txtEndereco" />
         
              <label  class="form-label">Número </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtNumero"  /> 
                <label  class="form-label">CEP </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtCep"  />
               
        
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
          <button type="button" class="btn btn-secondary float-end">Example Button floated right</button>
</div>
    </div>
  </div>
  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-headingThree">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
       Experiencias
      </button>
    </h2>
    <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      <div class="accordion-bod"> </div>
    </div>
  </div>


  <div class="accordion-item">
    <h2 class="accordion-header" id="flush-heading">
      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
       Certificados
      </button>
    </h2>
    <div id="cx" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
      <div class="accordion-bod"> </div>
    </div>
  </div>
</div>
    
      
</asp:Content>
