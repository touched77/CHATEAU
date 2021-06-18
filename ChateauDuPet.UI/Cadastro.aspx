﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="ChateauDuPet.UI.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
      <link href="/bootstrapPag/bootstrap.min.css" rel="stylesheet" />
    <link href="css/w3.css" rel="stylesheet" />
    <link href="css/Animações.css" rel="stylesheet" />
    <link href="css/Padrao.css" rel="stylesheet" />
    <link href="css/home.css" rel="stylesheet" />
    <link href="Imagens/pp.png" rel="icon"/>
    <title>Cadastro</title>
    



<script type="text/javascript">

    $(document).ready(function () {
        $(".date").mask("00/00/0000");
                  $(".time").mask("00:00:00");
                  $(".date_time").mask("00/00/0000 00:00:00");
                  $(".cep").mask("00000-000");
                  $(".phone").mask("0000-0000");
                  $(".phone_with_ddd").mask("(00) 00000-0000");
                  $(".phone_us").mask("(000) 000-0000");
                  $(".cpf").mask("000.000.000-00", {reverse: true });
                  $(".cnpj").mask("00.000.000/0000-00", {reverse: true });
                  $(".placeholderDate").mask("00/00/0000", {placeholder: "__/__/____" });
              });
</script>
</head>
<body  class="container-fluid ">  
    <div >
        <header>
            <nav class="navbar navbar-expand-md navbar-light     container-xxl ">
                <div class="container-lg">
                    <img src="Imagens/pp.png" width="100"style=" max-height:500px"; class="d-block my-1" />
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav menu    ">
                            <li class="nav-item col-6 col-md-auto">
                                <a class="nav-link p-2" href="index.html">Home</a>
                            </li>
                            <li class="nav-item col-6 col-md-auto">
                                <a class="nav-link p-2" href="Serviços.html">Serviços</a>
                            </li>
                            <li class="nav-item col-6 col-md-auto">
                                <a class="nav-link p-2" href="sobre.html">Sobre</a>
                            </li>

                            <li class="nav-item col-6 col-md-auto d-md-none d-block">
                                <a class="nav-link p-2" href="/Login.aspx">Login</a>
                            </li>

                            <li class="nav-item col-6 col-md-auto d-md-none d-block">
                                <a class="nav-link p-2" href="Cadastrar.aspx">Cadastrar</a>
                            </li>
                        </ul>
                    </div>
                </div><a type="button" class="btn btn-outline-danger d-none d-md-block" href="Login.aspx" style="  float:right;margin:10px 0 0 10px">Login</a>
                <a type="button" class="btn btn-outline-danger d-none d-md-block" href="Cadastro.aspx" style="  float:right;margin:10px 0 0 10px">Cadastrar</a>
            </nav>
        </header>
            <main  class=" container">
              
                    <form id="form1" runat="server" >    
                        <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
          <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
        </svg> 
        <span class="mb-3" >Cadastro</span>
            <br />
         <div class="row g-1"> 
            <div class="col-md-6">
              <label id="lblNome" class="form-label">Seu Nome</label>
              <asp:TextBox  Cssclass="form-control" id="txtNome" runat="server"    TabIndex="1" MaxLength="100" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo Nome é obrigatório" ForeColor="red" />
              
            </div>   
               
        
            <div class="col-md-5">
              <label id="lbluser" class="form-label">Usuario</label>
              <div class="input-group has-validation">
                <span class="input-group-text">@</span>
                <asp:TextBox runat="server" Cssclass="form-control" id="txtUser" MaxLength="15"   TabIndex="2" />
               </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser" ErrorMessage="Campo Usuario é obrigatório" ForeColor="red" />

            </div> 
            
            <div class="col-md-5">
              <label for="username" class="form-label">Tipo de Usuario</label>
              <div class="input-group has-validation">  
        <asp:DropDownList ID="DLLTipoUSer" runat="server" CssClass="form-select "  TabIndex="3">
            <asp:ListItem     Text="Selecione uma opção" />
            <asp:ListItem    Value="1" Text="Empresa" />
            <asp:ListItem    Value="2" Text="Profissional" />
        </asp:DropDownList>
              </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DLLTipoUSer"  ErrorMessage="Campo Tipo Usuario é obrigatório" ForeColor="red" />

            </div> 
            
                  <div class="col-md-6">
              <label  class="form-label">Data de Nascimento </label>
              <asp:TextBox runat="server" Cssclass="form-control" id="txtData" TextMode="Date" TabIndex="4"  />
        <asp:RequiredFieldValidator ID="rfvDataN" runat="server" ControlToValidate="txtData" ErrorMessage="Campo Data é obrigatório" ForeColor="red" />

                      </div>
                  <div class="col-md-6">
              <label  class="form-label">CPF</label>
              <asp:TextBox runat="server" Cssclass=" cpf form-control"  ID="txtCpf" MaxLength="11"  TabIndex="5"     />
        <asp:RequiredFieldValidator ID="rfvCpf" runat="server" ControlToValidate="txtCpf" ErrorMessage="Campo CPF é obrigatório" ForeColor="red" />
                      
                  </div>
                  <div class="col-md-5">
              <label  class="form-label">Telefone </label>
              <asp:TextBox runat="server" Cssclass="form-control  " id="txtTelefone"   TabIndex="6" MaxLength="11"  />
        <asp:RequiredFieldValidator ID="rfvTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo Telefone é obrigatório" ForeColor="red" />

                      </div>
         
               
            <div class="col-5">
              <label id="lblemail" class="form-label">Email </label>
              <asp:TextBox runat="server" CssClass="form-control" id="txtEmail"  TabIndex="7" MaxLength="100" TextMode="Email"/> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo Email é obrigatório" ForeColor="red" />

               </div>
             <div class="col-md-6">
              <label for="username" class="form-label">Sexo</label>
              <div class="input-group has-validation">  
        <asp:DropDownList ID="DDLSexo" runat="server" CssClass="form-select "  TabIndex="8">
            <asp:ListItem     Text="Selecione uma opção" />
            <asp:ListItem    Value="Masculino" Text="Masculino" />
            <asp:ListItem    Value="Feminino" Text="Feminino" />
        </asp:DropDownList>

              </div>
            </div> 
            
            <div class="col-md-5">
              <label id="lblSenha" class="form-label">Senha *</label>
              <asp:TextBox runat="server" CssClass="form-control senha" id="senha"       TabIndex="6" TextMode="Password"/>
                 
                </div> 
             <div class="col-md-6">
             <label id="lblSenhaa" class="form-label">Confirmar Senha *</label>
              <asp:TextBox runat="server" CssClass="form-control senhaC" id="senhaC"   TabIndex="6" TextMode="Password"/>
                </div>
          
         </div>
            
            <hr />
              
                  
          <div class="form-check">
            <asp:CheckBox  runat="server"  id="cbOfertas" />
            <label class="form-check-label" id=""> <a href="#" > Aceito</a> receber ofertas em meu Email</label>
         
              <br />
            <asp:CheckBox runat="server"   id="cbTermos"/>
            <asp:Label runat="server" CSsclass="form-check-label" id="txtTermos"><a href="#" > Aceito</a>  os termos </asp:Label>
              <br />
          <asp:button runat="server" ID="btnCadastrar" OnClick="BtnCadastrar_Click" Cssclass=" btn btn-primary btn-sm   w3-margin-right"  Text="Cadastrar"     Width="100px"  />
          <br />
        <asp:Label ID="lblMensagem" runat="server" CssClass="text-light lead" />
          </div>
                 <br />
        </form>
  
  </main>
         
        <br />
       <div class="custom-shape-divider-bottom-1618516495">
                <svg   ="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
                    <path d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z" opacity=".25" class="shape-fill"></path>
                    <path d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z" opacity=".5" class="shape-fill"></path>
                    <path d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z" class="shape-fill"></path>
                </svg>
            </div>
   
        <footer>

            <div class="FaixaF ">
                <div class=" CentroF " style=" margin:auto;">
                    <div class="bd-example container-xxl " style="min-height:100px;   padding: 0 20px 0 20px">

                        <div class="row">
                            <div class="">

                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-tags" viewBox="0 0 16 16">
                                    <path d="M3 2v4.586l7 7L14.586 9l-7-7H3zM2 2a1 1 0 0 1 1-1h4.586a1 1 0 0 1 .707.293l7 7a1 1 0 0 1 0 1.414l-4.586 4.586a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 2 6.586V2z" />
                                    <path d="M5.5 5a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1zm0 1a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3zM1 7.086a1 1 0 0 0 .293.707L8.75 15.25l-.043.043a1 1 0 0 1-1.414 0l-7-7A1 1 0 0 1 0 7.586V3a1 1 0 0 1 1-1v5.086z" />
                                </svg>
                                <label class="menu" id="Contato"> <a>Contato</a></label>
                                <hr />
                                <label>
                                    <label style="margin: 10px 10px 10px 10px">
                                        <a type="button" class="btn btn-success" target="_blank" href="https://api.whatsapp.com/send?phone=5511991770311&text=Ol%C3%A1!%20Estou%20entrando%20em%20contato%20atrav%C3%A9s%20do%20site%20da%20Chateau%20du%20Pet" style="  ">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-whatsapp" viewBox="0 0 16 16">
                                                <path d="M13.601 2.326A7.854 7.854 0 0 0 7.994 0C3.627 0 .068 3.558.064 7.926c0 1.399.366 2.76 1.057 3.965L0 16l4.204-1.102a7.933 7.933 0 0 0 3.79.965h.004c4.368 0 7.926-3.558 7.93-7.93A7.898 7.898 0 0 0 13.6 2.326zM7.994 14.521a6.573 6.573 0 0 1-3.356-.92l-.24-.144-2.494.654.666-2.433-.156-.251a6.56 6.56 0 0 1-1.007-3.505c0-3.626 2.957-6.584 6.591-6.584a6.56 6.56 0 0 1 4.66 1.931 6.557 6.557 0 0 1 1.928 4.66c-.004 3.639-2.961 6.592-6.592 6.592zm3.615-4.934c-.197-.099-1.17-.578-1.353-.646-.182-.065-.315-.099-.445.099-.133.197-.513.646-.627.775-.114.133-.232.148-.43.05-.197-.1-.836-.308-1.592-.985-.59-.525-.985-1.175-1.103-1.372-.114-.198-.011-.304.088-.403.087-.088.197-.232.296-.346.1-.114.133-.198.198-.33.065-.134.034-.248-.015-.347-.05-.099-.445-1.076-.612-1.47-.16-.389-.323-.335-.445-.34-.114-.007-.247-.007-.38-.007a.729.729 0 0 0-.529.247c-.182.198-.691.677-.691 1.654 0 .977.71 1.916.81 2.049.098.133 1.394 2.132 3.383 2.992.47.205.84.326 1.129.418.475.152.904.129 1.246.08.38-.058 1.171-.48 1.338-.943.164-.464.164-.86.114-.943-.049-.084-.182-.133-.38-.232z"></path>
                                            </svg>
                                            Iniciar Conversa
                                        </a>

                                    </label>
                                    <label style="margin: 10px 10px 10px 10px">
                                        <a class=" text-decoration-none" href="https://www.facebook.com/Chateau-Du-Pet-113685650407870" target="_blank" rel="noopener">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z" />
                                            </svg>  Facebook
                                        </a>
                                    </label>
                                    <label style="margin: 10px 10px 10px 10px">
                                        <a class="text-decoration-none " href="https://www.instagram.com/chateaudupet/?hl=pt-br" target="_blank" rel="noopener">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                                                <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z" />
                                            </svg> Instagram
                                        </a>
                                    </label>
                                    <label>
                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-telephone" viewBox="0 0 16 16">
                                            <path d="M3.654 1.328a.678.678 0 0 0-1.015-.063L1.605 2.3c-.483.484-.661 1.169-.45 1.77a17.568 17.568 0 0 0 4.168 6.608 17.569 17.569 0 0 0 6.608 4.168c.601.211 1.286.033 1.77-.45l1.034-1.034a.678.678 0 0 0-.063-1.015l-2.307-1.794a.678.678 0 0 0-.58-.122l-2.19.547a1.745 1.745 0 0 1-1.657-.459L5.482 8.062a1.745 1.745 0 0 1-.46-1.657l.548-2.19a.678.678 0 0 0-.122-.58L3.654 1.328zM1.884.511a1.745 1.745 0 0 1 2.612.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511z" />
                                        </svg>
                                        (11) 2619-5637
                                    </label>

                                    <label style="margin: 10px 10px 10px 10px">
                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-envelope" viewBox="0 0 16 16">
                                            <path d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V4zm2-1a1 1 0 0 0-1 1v.217l7 4.2 7-4.2V4a1 1 0 0 0-1-1H2zm13 2.383-4.758 2.855L15 11.114v-5.73zm-.034 6.878L9.271 8.82 8 9.583 6.728 8.82l-5.694 3.44A1 1 0 0 0 2 13h12a1 1 0 0 0 .966-.739zM1 11.114l4.758-2.876L1 5.383v5.73z"></path>
                                        </svg>
                                        sac@chateaudupet.com.br
                                    </label>
                                </label>

                            </div>
                            <div class="bd-example" style=" margin:auto; ">
                                <br />
                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                    <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                                    <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
                                </svg>
                                <label class="menu"> <a style="color:white;">Endereço</a></label>
                                <br /><br />
                                <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14629.541702315722!2d-46.600461!3d-23.554597!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce594b95eddcef%3A0xcafbdac5346df73!2sR.%20do%20Orat%C3%B3rio%2C%20426%20-%20Mooca%2C%20S%C3%A3o%20Paulo%20-%20SP%2C%2003116-000%2C%20Brasil!5e0!3m2!1spt-BR!2sus!4v1618190538335!5m2!1spt-BR!2sus"
                                        class=" container-fluid " height="300" style="border:0;"  >
                                </iframe>

                            </div>
                        </div>

                        <h4 style="text-align:center; font-size:10px;"> © 2021 Copyright</h4>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    
    <!--script -->

    <script src="../BootstrapJs/bootstrap.min.js"></script>
    <script src="../jquery-3.6.0.min.js"></script>
    <script src="JavaScript.js"></script>
    <script src="ADM-css-js/CadastroClienteJS.js"></script>
</body>
</html>
