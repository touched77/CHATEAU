<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="Perfil-Profissional.aspx.cs" Inherits="ChateauDuPet.UI.MainProfissional.Perfil_Profissional" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" container-xl">
    <div class="row featurette">
        <div class="col-md-5">
            <asp:Image runat="server" ID="imagePro" class="bd-placeholder-img rounded-circle" Width="240" Height="240" />
        </div>
        <div class="col-md-7">
            <asp:Label runat="server" CssClass="featurette-heading" ID="txtNome"/>
            <asp:Label ID="lblBiografiaPro" runat="server" Text="Biografia :" CssClass=" col-form-label " />
            <asp:label id="lbluser" class="form-label"  runat="server" />
            <asp:Label runat="server" ID="DataAniversario" class="form-label" />
            <asp:label runat="server" ID="lblFormacaoEscolar" class="form-label"/>
            <asp:Label runat="server" ID="lblSexo" class="form-label" />
            
             

        </div> 
    </div> 
    <div class="accordion accordion-flush" id="Dados Para contato.">
        <div class="accordion-item">
          <h2 class="accordion-header" id="headingOne">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
           Dados Para contato.
                </button>
            </h2>
           <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
          <div class="accordion-body">
                    <asp:Label runat="server" ID="txtCpf" class="form-label" />
                    <asp:Label ID="lblTel" runat="server" CssClass=" col-form-label " Text="Telefone:" />
                    <asp:Label ID="lblEmail" runat="server" CssClass=" col-form-label " Text="Email" />


                </div>

            </div>
        </div>

        <div class="accordion-item">
             <h2 class="accordion-header" id="heading1">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse1" aria-expanded="true" aria-controls="collapse1">
            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                        <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                    </svg>
                    Endereço
                </button>
            </h2>
          <div id="collapse1" class="accordion-collapse show collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
          <div class="accordion-body"> 

                    <label class="form-label">Endereço</label>
                    <asp:Label runat="server" CssClass="col-form-label" ID="lblEndereco" />

                    <asp:Label runat="server" CssClass="col-form-label" ID="lblNumero" />
                    <asp:Label runat="server" CssClass="col-form-label" ID="lblCep"></asp:Label>
                    <asp:Label runat="server" CssClass="col-form-label" ID="lblComplemento" />
                    <asp:Label runat="server" CssClass="col-form-label" ID="lblBairro" />
                    <asp:Label runat="server" CssClass="col-form-label" ID="lblCidade" />
                    <asp:Label class="form-label" ID="lblUF" runat="server" />
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-heading2">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse2" aria-expanded="true" aria-controls="collapse2">
           Certificados
                </button>
            </h2> 
           <div id="collapse2" class="accordion-collapse show collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
               <div class="accordion-body">
                    <asp:Repeater ID="rptCertificados" runat="server">
                        <ItemTemplate>
                            <asp:Label runat="server" CssClass="" ID="lblCurso" ><%# DataBinder.Eval(Container.DataItem, "Curso") %></asp:Label>
                            <asp:Label runat="server" CssClass="col-form-label" ID="lblInstituicao"><%# DataBinder.Eval(Container.DataItem, "Instituicao") %> </asp:Label>
                            <asp:Label runat="server" CssClass="col-form-label" ID="lblDataInicio" ><%# DataBinder.Eval(Container.DataItem, "DataInicio") %> </asp:Label>
                            <asp:Label runat="server" CssClass="col-form-label" ID="lblDataConclusao" ><%# DataBinder.Eval(Container.DataItem, "DataConclusao ") %> </asp:Label>
                            <asp:Label runat="server" CssClass="col-form-label" ID="lblDescricao"  Text="Descrição :" ><%# DataBinder.Eval(Container.DataItem, "Descricao ") %> </asp:Label>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>

        <div class="accordion-item">
            <h2 class="accordion-header" id="flush-heading3">
               <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapse3" aria-expanded="true" aria-controls="collapse3">
            Experiencias
                </button>
            </h2>
             <div id="collapse3" class="accordion-collapse show collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
            <div class="accordion-bod">

                    <asp:Repeater ID="rptExperiencias" runat="server">
                        <ItemTemplate>
                            <asp:Label runat="server" CssClass=" " ID="Cargo" ><%# DataBinder.Eval(Container.DataItem, "Cargo") %></asp:Label>
                            <asp:Label runat="server" CssClass="" ID="lblEmpresa" ><%# DataBinder.Eval(Container.DataItem, "Empresa") %> </asp:Label>
                            <asp:Label runat="server" CssClass="" ID="lblTipoContrato" ><%# DataBinder.Eval(Container.DataItem, "TipoContrato") %> </asp:Label>
                            <asp:Label runat="server" CssClass="" ID="lblDataInicio" ><%# DataBinder.Eval(Container.DataItem, "DataInicio") %> </asp:Label>
                            <asp:Label runat="server" CssClass="" ID="lblDataFinal" ><%# DataBinder.Eval(Container.DataItem, "DataFinal") %> </asp:Label>
                            <asp:Label runat="server" CssClass="" ID="lblLocalidade" ><%# DataBinder.Eval(Container.DataItem, "Localidade") %></asp:Label>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </div>
        </div>
     
     <label class="mnA"> <a># Profissionais</a></label>
                    <asp:Repeater ID="rptPro" runat="server"  >
                        <ItemTemplate>
          <div class="row ">
            <div class="col-lg-4 "> 
                  <img src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>"  class="bd-placeholder-img rounded-circle" Width="140" Height="140" />
                        
                        
                                <h5 ><%# DataBinder.Eval(Container.DataItem, "Nome") %></h5>
                         
                            <p  >
                                <%# DataBinder.Eval(Container.DataItem, "Biografia") %>  
                            </p>
                            <span class=" text-body badge-info"><%# DataBinder.Eval(Container.DataItem, "User") %> </span>
                     <a class="btn btn-primary"  href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">Ver mais</a>
                <br />
                  </div>
              </div>
                </ItemTemplate>
                    </asp:Repeater>
           </div>
        <%--
       <asp:Repeater ID="rptAlbuns" runat="server">
                <ItemTemplate>
                   <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">
     <asp:Image runat="server" src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>"  id="imagePro" class="bd-placeholder-img rounded-circle" Width="140" Height="140" /></a>
                    
                             
                   <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>"><asp:Label runat="server" ID="txtNome" ><%# DataBinder.Eval(Container.DataItem, "Nome") %></asp:Label></a>
            <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>"><asp:Label ID="lblBiografiaPro" runat="server" Text="Biografia :" CssClass=" col-form-label " /><%# DataBinder.Eval(Container.DataItem, "Nome") %></a>


                         <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">
            <asp:label ID="lblEmail" runat="server" CssClass=" col-form-label " Text="Email" /></a>
            <br />   <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">
            <asp:label ID="lblTel" runat="server" CssClass=" col-form-label " Text="Telefone:" /></a>
                </ItemTemplate>
            </asp:Repeater>--%>

        <%--  <asp:View  ID="idi" runat="server"> 
                   <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataBind, "IdProfissional") %>">
     <img src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>"  class="bd-placeholder-img rounded-circle" Width="140" Height="140" /></a>
        <br /> 
            
                                <h5 ><%# DataBinder.Eval(Container.DataItem, "Nome") %></h5>
                         
                            <p  >
                                <%# DataBinder.Eval(Container.DataItem, "Biografia") %>  
            <Label runat="server" Text="Email" CssClass="lead " />
            <h2 class="mb-4">@USuario </h2>

            <label ID="txtNome" runat="server" CssClass="col-form-label" />
            <br />
            <label ID="lblEmail" runat="server" CssClass=" col-form-label " Text="Email" />
            <br />
            <Label ID="lblTel" runat="server" CssClass=" col-form-label " Text="Telefone:" />
            <br />
            <Label ID="lblBiografia" runat="server" Text="Biografia :" CssClass=" col-form-label " />
            <br />

            <img src="..." class="rounded float-end" alt="...">
            <h2 class="mb-4">@USuario </h2>

        </asp:View> 

     
        <div class="accordion accordion-flush" id="accordionFlushExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingOne">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="true" aria-controls="flush-collapseOne">
                        Perfil
                    </button>
                </h2>
                <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <label id="lblNome" class="form-label">Seu Nome</label>
                        <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TabIndex="1" />


                        <label id="lbluser" class="form-label">Usuario</label>
                        <div class="input-group has-validation">
                            <span class="input-group-text">@</span>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TextBox2" MaxLength="15" TabIndex="2" />
                        </div>

                        <label for="username" class="form-label">Tipo de Usuario</label>
                        <div class="input-group has-validation">
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select " TabIndex="3">
                                <asp:ListItem Text="Selecione uma opção" />
                                <asp:ListItem Value="1" Text="Empresa" />
                                <asp:ListItem Value="2" Text="Profissional" />
                            </asp:DropDownList>
                        </div>



                        <label class="form-label">Data de Nascimento </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox3" TextMode="Date" TabIndex="4" />


                        <label class="form-label">CPF</label>
                        <asp:TextBox runat="server" CssClass="form-control  Cpf" ID="TextBox4" MaxLength="11" TabIndex="5" />


                        <label class="form-label">Telefone *</label>
                        <asp:TextBox runat="server" CssClass="form-control  " ID="TextBox5" TabIndex="6" />



                        <label id="lblemail" class="form-label">Email *</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="TextBox6" TabIndex="7" />


                        <label for="username" class="form-label">Sexo</label>
                        <div class="input-group has-validation">
                            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select " TabIndex="8">
                                <asp:ListItem Text="Selecione uma opção" />
                                <asp:ListItem Value="Masculino" Text="Masculino" />
                                <asp:ListItem Value="Feminino" Text="Feminino" />
                            </asp:DropDownList>
                        </div>

                    </div>
                </div>
            </div>
            <div class="accordion-item">
                <h2 class="accordion-header" id="flush-headingTwo">
                    <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                        </svg>
                        Endereço
                    </button>
                </h2>
                <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                    <div class="accordion-body">
                        <h2>Endereço <span>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                                <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z" />
                            </svg></span></h2>

                        <label class="form-label">Endereço</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEndereco" />

                        <label class="form-label">Número </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtNumero" />
                        <label class="form-label">CEP </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCep" />


                        <label class="form-label">Complemento <span class="text-muted">(opcional)</span></label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtComplemento" />


                        <label class="form-label">Bairro </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtBairro" />



                        <label class="form-label">Cidade </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtCidade" />

                        <label class="form-label">UF</label>
                        <asp:DropDownList runat="server" CssClass="form-select" ID="txtEstado">
                            <asp:ListItem Value="RO" Text="RO" />
                            <asp:ListItem Value="AC" Text="AC" />
                            <asp:ListItem Value="AM" Text="AM" />
                            <asp:ListItem Value="RR" Text="RR" />
                            <asp:ListItem Value="PA" Text="PA" />
                            <asp:ListItem Value="AP" Text="AP" />
                            <asp:ListItem Value="TO" Text="TO" />
                            <asp:ListItem Value="MA" Text="MA" />
                            <asp:ListItem Value="PI" Text="PI" />
                            <asp:ListItem Value="CE" Text="CE" />
                            <asp:ListItem Value="RN" Text="RN" />
                            <asp:ListItem Value="PB" Text="PB" />
                            <asp:ListItem Value="PE" Text="PE" />
                            <asp:ListItem Value="AL" Text="AL" />
                            <asp:ListItem Value="SE" Text="SE" />
                            <asp:ListItem Value="BA" Text="BA" />
                            <asp:ListItem Value="MG" Text="MG" />
                            <asp:ListItem Value="ES" Text="ES" />
                            <asp:ListItem Value="RJ" Text="RJ" />
                            <asp:ListItem Value="SP" Text="SP" />
                            <asp:ListItem Value="PR" Text="PR" />
                            <asp:ListItem Value="SC" Text="SC" />
                            <asp:ListItem Value="RS" Text="RS" />
                            <asp:ListItem Value="MS" Text="MS" />
                            <asp:ListItem Value="MT" Text="MT" />
                            <asp:ListItem Value="GO" Text="GO" />
                            <asp:ListItem Value="DF" Text="DF" />
                        </asp:DropDownList>
                        <button type="button" class="btn btn-secondary float-end">Example Button floated right</button>
                    </div>
                </div>
            </div>
        </div>--%>
       
</asp:Content>
