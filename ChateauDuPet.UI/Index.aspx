<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ChateauDuPet.UI.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <main>
            <div class="Centro container-xxl flex-start    " style=" align-self: flex-start; margin: auto;">
                <img src="Imagens/-1-Recuperado.png" style="max-width:250px ;max-height:250px; float:right ;" class="  d-none d-md-block" />


                <div class="row    " style="max-width:1300px ;max-height:810px;margin-right:10px;margin-left:10px">
                    <div class="col-md-6 mb-md-0  " style="padding:0;  max-width:200px ;max-height:810px;">
                        <img src="Imagens/Medica.png" style=" float:left; width:200px ;height:350px; " class=" d-none d-md-block " />
                    </div>
                    <div class="col-md-6 TxtMedica " style="align-self: flex-end;   max-width: 1400px; max-height: 400px; ">
                        <h3>"MAIS, QUE UM PET-SHOP"</h3>
                        <hr />
                        <p>
                            A Chateua du pet está com novos objetivos,
                            um dos quais é ajudar proficionais a estabelecerem contato com empresas do mercado Pet
                        </p>

                        <label class="menu">
                            <a href="/sobre.html">Nossa Missão</a>
                        </label> <br /><br />
                    </div>

                </div>
            </div>



            <!-- Faixa azul -->



            <div class="Faixa-Azul w3-container">
                <div class="Centro1 container-xxl " style=" margin:auto;max-height:100% ">
                    <div class="col-md-6  TextFaixaAzul" style="min-height:100%;  ">
                        <ul class="menu">#Profissional</ul><br>
                        <p>
                            Estudantes ou profissionais que utilizam nossa plataforma podem visualizar empresas que buscam profissionais
                            em determinadas áreas, como<a>Médico Veterinário</a>,
                            <a> </a>
                            o que você está esperando ? Você pode ter uma empresa próxima que precise de pessoas como você,
                            <a>Faça parte do nosso time.</a>
                        </p>

                        <ul style=" color:white" class="menu">
                            <li>
                                <a class="nav-link p-2" href="index.html">Home</a>
                            </li>
                            <li>
                                <a href="Serviços.html">Serviços</a>
                            </li>
                            <li>
                                <a href="sobre.html">Sobre</a>
                            </li>

                            <li>
                                <a href="#">Login</a>
                            </li>

                            <li class="nav-item col-6 col-md-auto d-md-none d-block">
                                <a class="nav-link p-2" href="#">Cadastrar</a>
                            </li>
                        </ul>

                    </div>

                    <div class=" d-none d-md-block " style="min-height: 300px; float: right;">
                        <img src="Imagens/undraw_emails_6uqr.svg" style="float:right;margin:20px 20px 20px 20px; max-width:270px; max-height:350px; " />
                    </div>

                </div>
            </div>

            <div class="container-xxl" style=" max-height:100%; margin:auto;">

                <div style="max-width:1300px;max-height:100%;">
                    <div id="Empresa" class="tabcontent">
                        <img src="Imagens/undraw_Walking_outside_re_56xo.svg" width="300" height="300" />
                        <h1>Profissionais</h1>
                        <p>
                            Milhares de profissionais do mercado p

                            et em um so lugar
                        </p>
                    </div>
                    <div id="Profissional" class="tabcontent">
                        <h1>Empresa</h1>
                        <p>Empresa is the capital of France.</p>
                    </div>
                    <button class="tablink" onclick="openCity('Empresa', this, ' ')" id="defaultOpen">Empresa</button>
                    <button class="tablink" onclick="openCity('Profissional', this, ' ')">Profissional</button>
                </div>
            </div> 
        </main> 
</asp:Content>
