<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ChateauDuPet.UI.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
      <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class="active" aria-current="true"></button>
    </div>
    <div class="carousel-inner">
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption text-start">
            <h1>Example headline.</h1>
            <p>Some representative placeholder content for the first slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Sign up today</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption">
            <h1>Another example headline.</h1>
            <p>Some representative placeholder content for the second slide of the carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Learn more</a></p>
          </div>
        </div>
      </div>
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect></svg>

        <div class="container">
          <div class="carousel-caption text-end">
            <h1>One more for good measure.</h1>
            <p>Some representative placeholder content for the third slide of this carousel.</p>
            <p><a class="btn btn-lg btn-primary" href="#">Browse gallery</a></p>
          </div>
        </div>
      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="visually-hidden">Next</span>
    </button>
  </div>
            <div class="container-xxl" style=" max-height:100%; margin:auto;">
       
                    <div class="p-4 p-md-5 mb-4   rounded  ">
                    <div class="col-md-6 px-0">
                      <h1 class="display-4 fst-italic">"MAIS, QUE UM PET-SHOP"</h1>
                      <p class="lead my-3">
                                            O Chateau  está com novos objetivos,
                                            um dos quais é ajudar profissionais a estabelecerem contato com empresas do mercado Pet</p>
                      <p class="lead mb-0"><a  class="menu"  href="/sobre.aspx">Nossa Missão </a></p>
                    </div>

                            </div>
               

            <!-- Faixa azul -->


                </div>
            <div class="Faixa-Azul w3-container ">
                <div class="Centro1 container-xxl " style=" margin:auto;max-height:100%;color:whitesmoke;"><br />
                   <div class="row">
      <div class="col-lg-4">
                                             <asp:Image runat="server" ImageUrl="~/Imagens/undraw_female_avatar_w3jk.svg" class="bd-placeholder-img rounded-circle"   width="140" height="140"/>

        <h2>@Renata Silva </h2>
        <p>Começei a pouco tempo na plataforma mas já estou tendo retorno, realmente Munto bom!</p>
      </div><!-- /.col-lg-4 -->
      <div class="col-lg-4">
         <asp:Image runat="server" ImageUrl="~/Imagens/undraw_male_avatar_323b.svg" class="bd-placeholder-img rounded-circle"   width="140" height="140"/>
        <h2>@Carlos Souza</h2>
        <p> Sem palavras Sistema Top!!</p>
      </div> 
      <div class="col-lg-4"> <asp:Image runat="server" ImageUrl="~/Imagens/undraw_female_avatar_w3jk.svg" class="bd-placeholder-img rounded-circle"   width="140" height="140"/>

        <h2>@Ricardo</h2>
        <p>  Após o cadastro, recebi ligações de várias empresas solicitando minha participação no processo Seletivo, obrigado Chateau! </p>
         
      </div>
    </div> 
      
          <br /><br />
                  </div> 
            </div> 
     <div class="container-xxl" style=" max-height:100%; margin:auto;">

         <div class="row mb-2">
                                <div class="col-md-6">
                                  <div class="row g-0  rounded overflow-hidden flex-md-row mb-4    h-md-250 position-relative">
                                    <div class="col p-4 d-flex flex-column position-static">
                                      <strong class="d-inline-block mb-2 text-primary"># Profissional</strong>
                                      <h3 class="mb-0">objetivo</h3>
                                      <p class="card-text mb-auto"> Temos como objtivo simplificar, por isso elaboramos um sistema capaz de enviar novas  vagas que surgirem perto da sua cidade ou barro, para isso faça o cadastro completo.  </p>
                                    </div>
                                    <div class="col-auto d-none d-lg-block">
                                      <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Goals_re_lu76.svg" class="bd-placeholder-img"  width="200" height="250"/>
                                        
                                    </div>
                                  </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="row g-0   rounded overflow-hidden flex-md-row mb-4   h-md-250 position-relative">
                                    <div class="col p-4 d-flex flex-column position-static">
                                      <strong class="d-inline-block mb-2 text-success"># Empresa</strong>
                                      <h3 class="mb-0">Conexões</h3>
                                      <p class="mb-auto">Além de anunciar vagas de emprego, a empresa também pode visualizar projetos, ações,<br /> Ao pagar o valor mínimo, você pode consultar telefone, email e endereço dos profissionais da plataforma</p>                                    </div>
                                    <div class="col-auto d-none d-lg-block">
                                      <asp:Image runat="server" ImageUrl="~/Imagens/undraw_real_time_collaboration_c62i.svg" class="bd-placeholder-img"  width="200" height="250"/>
                                     
                                    </div>
                                  </div>
                                </div>
                              </div>
            <div class="container-xxl" style=" max-height:100%; margin:auto;">
     
                  <h1 class="d-inline-block mb-2 text-primary"># Profissional</h1>
                      <div class="row featurette">
                  <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
                    <p class="lead">Another featurette? .</p>
                  </div>
                  <div class="col-md-5 order-md-1"> 
                                      <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Dog_walking_re_l61p (1).svg" class="bd-placeholder-img"  width="200" height="250"/>


                  </div>
                </div> 
                
                      <div class="row featurette">
                  <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">Na paltaforma é possivel Compartilhar projetos e muito mais.</span></h2>
                    <p class="lead">Na paltaforma é possivel Compartilhar projetos e muito mais.</p>
                  </div>
                  <div class="col-md-5 order-md-1">
                              <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Co_workers_re_1i6i.svg" class="bd-placeholder-img"  width="250" height="250"/>
                  </div>
                </div> 


            </div>  
                              </div>
        
</asp:Content>
