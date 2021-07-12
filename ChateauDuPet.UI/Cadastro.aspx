<%@ Page Title="" Language="C#" MasterPageFile="~/Defult.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="ChateauDuPet.UI.Cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <main class="Centro container-xxl " style="margin: auto;">

        <div class="row mb-2">


            <div class="col-md-6">
                <div class="row g-0  rounded overflow-hidden flex-md-row mb-4  h-md-250 position-relative">


                    <div class="CentroContato container-xxl" style="width: 80%;">
                        <span class="mb-3">
                            <svg xmlns="http://www.w3.org/2000/svg" width="50" height="50" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                                <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z" />
                            </svg>
                            Cadastro</span>
                        <br />


                        <label id="lblNome" class="form-label">Seu Nome</label>
                        <asp:TextBox CssClass="form-control" ID="txtNome" runat="server" TabIndex="1" MaxLength="100" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo Nome é obrigatório" ForeColor="red" />
                        <br />

                        <label id="lbluser" class="form-label">Usuario</label>
                        <div class="input-group has-validation">
                            <span class="input-group-text">@</span>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtUser" MaxLength="15" TabIndex="2" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser" ErrorMessage="Campo Usuario é obrigatório" ForeColor="red" />


                        </div>
                        <br />
                        <label for="username" class="form-label">Tipo de Usuario</label>
                        <div class="input-group has-validation">
                            <asp:DropDownList ID="DLLTipoUSer" runat="server" CssClass="form-select" TabIndex="3">
                                <asp:ListItem Text="Selecione uma opção" />
                                <asp:ListItem Value="1" Text="Empresa" />
                                <asp:ListItem Value="2" Text="Profissional" />
                            </asp:DropDownList>

                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="DLLTipoUSer" ErrorMessage="Campo Tipo Usuario é obrigatório" ForeColor="red" />
                        </div>
                        <br />



                        <label class="form-label">Data de Nascimento </label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtData" TextMode="Date" TabIndex="4" />
                        <asp:RequiredFieldValidator ID="rfvDataN" runat="server" ControlToValidate="txtData" ErrorMessage="Campo Data é obrigatório" ForeColor="red" />
                        <br />
                        <label class="form-label">CPF</label>
                        <asp:TextBox runat="server" CssClass="form-control cpf" ID="txtCpf" MaxLength="11" TabIndex="5" />
                        <asp:RequiredFieldValidator ID="rfvCpf" runat="server" ControlToValidate="txtCpf" Enabled="false" ErrorMessage="Campo CPF é obrigatório" ForeColor="red" />
                        <br />


                        <label id="lblTelefone" class="form-label">Telefone </label>
                        <asp:TextBox runat="server" CssClass="form-control  " ID="txtTelefone" AutoCompleteType="Office" TabIndex="6" MaxLength="11" />
                        <asp:RequiredFieldValidator ID="rfvTelefone" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo Telefone é obrigatório" ForeColor="red" />
                        <br />

                        <label id="lblEmail" class="form-label">Email</label>
                        <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail" TabIndex="7" MaxLength="100" TextMode="Email" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo Email é obrigatório" ForeColor="red" />
                        <asp:RegularExpressionValidator ID="gevEmailValido" runat="server" ControlToValidate="txtEmail"
                            ErrorMessage="O E-mail é inválido!" ForeColor="red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" />
                        <br />

                        <label for="username" class="form-label">Sexo</label>
                        <div class="input-group has-validation">
                            <asp:DropDownList ID="DDLSexo" runat="server" CssClass="form-select " TabIndex="8">
                                <asp:ListItem Text="Selecione uma opção" />
                                <asp:ListItem Value="Masculino" Text="Masculino" />
                                <asp:ListItem Value="Feminino" Text="Feminino" />
                            </asp:DropDownList>

                        </div>


                        <label id="lblSenha" class="form-label">Senha *</label>
                        <asp:TextBox runat="server" CssClass="form-control senha" ID="senha" TabIndex="6" TextMode="Password" />


                        <label id="lblSenhaa" class="form-label">Confirmar Senha *</label>
                        <asp:TextBox runat="server" CssClass="form-control senhaC" ID="senhaC" TabIndex="6" TextMode="Password" />
                        <br />


                        <div class="form-check">
                            <asp:CheckBox runat="server" ID="cbOfertas" />
                            <label class="form-check-label" id=""><a href="#">Aceito</a> receber ofertas em meu Email</label>

                            <br />
                            <asp:CheckBox runat="server" ID="cbTermos" />
                            <asp:Label runat="server" CssClass="form-check-label" ID="txtTermos"><a href="#" > Aceito</a>  os termos </asp:Label>
                            <br />
                            <br />

                            <asp:Label runat="server" ID="lblMensagem" ForeColor="Red" />
                            <br />
                            <asp:Button runat="server" ID="BtnCadastrar" CssClass="btn menu" OnClick="BtnCadastrar_Click1" />
                            <asp:Button runat="server" ID="BtnCancelar" CssClass="btn" />
                            <br />


                        </div>

                        <br />

                    </div>
                </div>
            </div>


            <div class="col-md-6">
                <div class="row g-0 rounded overflow-hidden flex-md-row mb-4 h-md-250 position-relative">
                    <div class="row g-0  rounded overflow-hidden flex-md-row mb-4  h-md-250 position-relative">

                        <div class="CentroContato container-xxl" style="width: 90%;">
                            <div class="position-sticky" style="top: 2rem;">
                                <div class="p-4 mb-3 bg-light rounded">
                                    <h4 class="fst-italic"></h4>
                                    <p class="mb-0">Apos esse cadastro simples voce será redirecionado para uma nova pag</p>
                                </div>

                                <div class="p-4">
                                    <h4 class="fst-italic"></h4>
                                    <ol class="list-unstyled mb-0">
                                        <li><a href="#"></a></li>
                                        <li><a href="#">February 2021</a></li>
                                        <li><a href="#">January 2021</a></li>
                                    </ol>
                                </div>

                                <div class="p-4">
                                    <h4 class="fst-italic">Rede-Sociais</h4>
                                    <ol class="list-unstyled">
                                        <li><a href="#">Instagram</a></li>
                                        <li><a href="#">Facebook</a></li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>

    </main>

</asp:Content>
