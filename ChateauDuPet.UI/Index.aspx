<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ChateauDuPet.UI.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-xxl" style="max-height: 100%; margin: auto;">

        <div class="row featurett">
            <div class="col-md-7">
                <h2 class="featurette-heading">Mais, Que um Pet-shop  </h2>
                <p class="lead">
                    O Chateau está com novos objetivos, um dos quais é ajudar profissionais a estabelecerem contato com empresas do mercado Pet
                </p>
                <br />
                <br />
                <a href="Sobre.aspx.cs" type="button" class="btn btn-outline-danger">Nossa Missão</a>

                <br />
                <br />
            </div>
            <div class="col-md-5">
                <img src="Imagens/close-up-portrait-of-pleased-girl-with-short-brown-hair-embracing-funny-beagle-dog-with-eyes-closed.jpg" class="  d-none d-md-block  bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" style="float: right; margin: 10px 0 0 10px" width="500" height="500" />
            </div>
        </div>



        <!-- Faixa azul -->


    </div>
    <div class="Faixa-Azul w3-container ">
        <div class="Centro1 container-xxl overflow-hidden " style="margin: auto; max-height: 100%; color: whitesmoke;">
            <br />


            <div class="row mb-2">
                <div class="col-md-6">
                    <div class="row g-0  rounded overflow-hidden flex-md-row mb-4    h-md-250 position-relative">
                        <div class="col p-4 d-flex flex-column position-static">
                            <strong class="d-inline-block mb-2 text-primary"># Profissional</strong>
                            <h3 class="mb-0">objetivo</h3>
                            <p class="card-text mb-auto">Temos como objtivo simplificar, por isso elaboramos um sistema capaz de enviar novas  vagas que surgirem perto da sua cidade ou barro, para isso faça o cadastro completo.  </p>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Goals_re_lu76.svg" class="bd-placeholder-img" Width="200" Height="250" />

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row g-0   rounded overflow-hidden flex-md-row mb-4   h-md-250 position-relative">
                        <div class="col p-4 d-flex flex-column position-static">
                            <strong class="d-inline-block mb-2 text-success"># Empresa</strong>
                            <h3 class="mb-0">Conexões</h3>
                            <p class="mb-auto">
                                Além de anunciar vagas de emprego, a empresa também pode visualizar projetos, ações,<br />
                                Ao pagar o valor mínimo, você pode consultar telefone, email e endereço dos profissionais da plataforma
                            </p>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                            <asp:Image runat="server" ImageUrl="~/Imagens/undraw_real_time_collaboration_c62i.svg" class="bd-placeholder-img" Width="200" Height="250" />

                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="container-xxl" style="max-height: 100%; margin: auto;">



        <div class="container-xxl" style="max-height: 100%; margin: auto;">

            <h1 class="d-inline-block mb-2 text-primary"># Profissional</h1>
            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
                    <p class="lead">Another featurette? .</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Dog_walking_re_l61p (1).svg" class="bd-placeholder-img" Width="200" Height="250" />


                </div>
            </div>

            <div class="row featurette">
                <div class="col-md-7 order-md-2">
                    <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">Na paltaforma é possivel Compartilhar projetos e muito mais.</span></h2>
                    <p class="lead">Na paltaforma é possivel Compartilhar projetos e muito mais.</p>
                </div>
                <div class="col-md-5 order-md-1">
                    <asp:Image runat="server" ImageUrl="~/Imagens/undraw_Co_workers_re_1i6i.svg" class="bd-placeholder-img" Width="250" Height="250" />
                </div>
            </div>


        </div>
<%--        <hr class="featurette-divider">--%>

       
       <br />
        <br />
        <h1 class="text-success" style="float: right; margin: -50px  50px 0  0"># Empresa</h1>
        <br />
        <br />


        <div class="row featurette">
            <div class="col-md-7 ">
                <h2 class="featurette-heading">Encont<span class="text-muted">Relatorio</span></h2>
                <p class="lead">Visualize  perfil,projetos,trabalhos de profissionais de forma simples,  </p>
            </div>
            <div class="col-md-5">
                <img src="Imagens/undraw_Swipe_profiles_re_tvqm (1).svg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="250" height="250" />

            </div>
        </div>
       <br />
       <br />


        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">compatilhe </h2>
                <p class="lead">Compartilhe suas v-agas,  </p>
            </div>
            <div class="col-md-5"> 
                <img src="Imagens/undraw_Push_notifications_re_t84m (1).svg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="250" height="250" />

            </div>
        </div>
       <br />
       <br />
       <br />
        <div class="row featurette">
            <div class="col-md-7">
                <h2 class="featurette-heading">Empresas tem acesso a milhares de ideias e projetos.</h2>
                <p class="lead">Os profissionais que utilizam essa plataforma podem agregar suas ideias, projetos e ações à indústria pet.</p>
            </div>
            <div class="col-md-5">
                <img src="Imagens/undraw_ideas_s70l.svg" class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="250" height="250" />

            </div>
        </div>
    </div>

</asp:Content>
