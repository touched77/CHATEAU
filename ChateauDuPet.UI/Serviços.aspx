<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Serviços.aspx.cs" Inherits="ChateauDuPet.UI.Serviços" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="Centro container-xxl" style="margin: auto; max-height: 100%;">
       
        
        <div class="row mb-2">
            <div class="col-md-6"> 
                <asp:Image runat="server" ID="pro" ImageUrl="imagens/undraw_mobile_login_ikmv.svg" class="" Width="200" Height="200"></asp:Image>
                <h2>Profissional</h2>

                <ul class=" list-unstyled ">
                    <li class=" list-inline">
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Curriculum vitae
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Inscrição em vagas
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Relatorio de incrições
                        </p>

                    </li>

                </ul>

                <button type="button" class="btn   btn-outline-danger">Plano Grátuito</button>
            </div>
            <!-- /.col-lg-4 -->
            
  
            <div class="col-md-6">
                <asp:Image runat="server" ID="Image1" ImageUrl="~/Imagens/undraw_People_search_re_5rre.svg" class="bd-placeholder-img   bi bi-coin" Width="200" Height="200"></asp:Image>

                <h2>Empresas</h2>
                <ul class=" list-unstyled ">
                    <li class=" list-inline">
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Publicação de  Vagas
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                           Relatorio da candidatos
                        </p>

                    </li>
                    <li>
                        <p>
                            <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25" fill="currentColor" class="bi bi-bookmark-check-fill" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M2 15.5V2a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v13.5a.5.5 0 0 1-.74.439L8 13.069l-5.26 2.87A.5.5 0 0 1 2 15.5zm8.854-9.646a.5.5 0 0 0-.708-.708L7.5 7.793 6.354 6.646a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z" />
                            </svg>
                            Consultar dados para contato
                        </p>

                    </li>
                </ul>
                <button type="button" class="btn  btn-outline-success">Plano Grátuito</button>

            </div>
            <!-- /.col-lg-4 -->
        </div>
            <hr class="featurette-divider">

        <div class="row">
      <div class="col-sm-6 col-md-4 col-xl-3 mb-3"> 
         <img src="Imagens/undraw_Security_on_re_e491 (1).svg" width="280" height="150" />
            <h3 class="h5 mb-1">Headers</h3>
       
        <p class="text-muted">Display your branding, navigation, search, and more with these header components</p>
      </div>
    
  
      <div class="col-sm-6 col-md-4 col-xl-3 mb-3">
      <img src="Imagens/undraw_Wall_post_re_y78d.svg"  width="280" height="150" />
          <h3 class="h5 mb-1">Conecção</h3>
       
        <p class="text-muted">Set the stage on your homepage with heroes that feature clear calls to action.</p>
      </div>
    
  
      <div class="col-sm-6 col-md-4 col-xl-3 mb-3"> 
         <img src="Imagens/undraw_Connected_re_lmq2.svg"  width="280" height="150" />
            <h3 class="h5 mb-1">Features</h3>
   
        <p class="text-muted">Explain the features, benefits, or other details in your marketing content.</p>
      </div>
    
  
      <div class="col-sm-6 col-md-4 col-xl-3 mb-3">
         <img src="Imagens/undraw_Personal_email_re_4lx7.svg"  width="280" height="150" />

          <h3 class="h5 mb-1">Sidebars</h3>
       
        <p class="text-muted"></p>
      </div>
    </div> 
    </div>
</asp:Content>
