<%@ Page Title="" Language="C#" MasterPageFile="~/DefultADM.Master" AutoEventWireup="true" CodeBehind="Clientes.aspx.cs" Inherits="ChateauDuPet.UI.Clientes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
    <asp:Label ID="lblSessionMsg" runat="server" class="lead"/>
    <br /><hr /><br />

    <asp:GridView runat="server" ID="gv1" AutoGenerateColumns="false" ShowFooter="true" DataKeyNames="IdUsuario" OnRowCommand="gv1_RowCommand"
        OnRowUpdating="gv1_RowUpdating"
        OnRowDeleting="gv1_RowDeleting"
        OnRowEditing="gv1_RowEditing" OnRowCancelingEdit="gv1_RowCancelingEdit" CssClass="table table-responsive table-striped">
        <Columns>

            <asp:TemplateField HeaderText="Nome">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("NomeUsuario") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtNomeUsuario" runat="server" MaxLength="50" Text='<%#Eval("NomeUsuario") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtNomeUsuarioFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Senha">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("SenhaUsuario") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtSenhaUsuario" runat="server" MaxLength="6" Text='<%#Eval("SenhaUsuario") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtSenhaUsuarioFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("EmailUsuario") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEmailUsuario" runat="server" MaxLength="50" Text='<%#Eval("EmailUsuario") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtEmailUsuarioFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>


            <%--radio buttons--%>
            <asp:TemplateField HeaderText="Tipo Usuario">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("FKTpUsuario") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:RadioButtonList ID="rbl1" runat="server">
                        <asp:ListItem Value="1" Text="Administrador" />
                        <asp:ListItem Value="2" Text="Outros" />
                    </asp:RadioButtonList>
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                        <asp:ListItem Value="1" Text="Administrador" />
                        <asp:ListItem Value="2" Text="Outros" />
                    </asp:RadioButtonList>
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Logradouro">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("LogradouroEndereco") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtLogradouroEndereco" runat="server" MaxLength="50" Text='<%#Eval("LogradouroEndereco") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtLogradouroEnderecoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Numero">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("NumeroEndereco") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtNumeroEndereco" runat="server" MaxLength="50" Text='<%#Eval("NumeroEndereco") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtNumeroEnderecoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Bairro">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("BairroEndereco") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtBairroEndereco" runat="server" MaxLength="50" Text='<%#Eval("BairroEndereco") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtBairroEnderecoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Cidade">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("CidadeEndereco") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtCidadeEndereco" runat="server" MaxLength="50" Text='<%#Eval("CidadeEndereco") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtCidadeEnderecoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Estado">
                <ItemTemplate>
                    <asp:Label runat="server" Text='<%#Eval("EstadoEndereco") %>' />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:TextBox ID="txtEstadoEndereco" runat="server" MaxLength="50" Text='<%#Eval("EstadoEndereco") %>' />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:TextBox ID="txtEstadoEnderecoFooter" runat="server" />
                </FooterTemplate>
            </asp:TemplateField>

            <asp:TemplateField HeaderText="Opções">
                <ItemTemplate>
                    <asp:ImageButton ID="btnEditar" runat="server" ImageUrl="~/Images/edit.png" ToolTip="Editar" Width="30" Height="30" CommandName="Edit" />
                    <asp:ImageButton ID="btnExcluir" runat="server" ImageUrl="~/Images/delete.png" ToolTip="Excluir" Width="30" Height="30" CommandName="Delete" OnClientClick="if (!confirm('Deseja relmente eliminar este registro??'))return false"/>
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:ImageButton ID="btnSalvar" runat="server" ImageUrl="~/Images/save.png" ToolTip="Salvar" Width="30" Height="30" CommandName="Update" />
                    <asp:ImageButton ID="btnCancelar" runat="server" ImageUrl="~/Images/cancel.png" ToolTip="Cancelar" Width="30" Height="30" CommandName="Cancel" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:ImageButton ID="btnAdicionar" runat="server" ImageUrl="~/Images/add.png" ToolTip="Adicionar" Width="30" Height="30" CommandName="Add" />
                </FooterTemplate>
            </asp:TemplateField>


        </Columns>
    </asp:GridView>
    <br />
    <asp:Label ID="lblMessage" runat="server" Text="Label" />
</asp:Content>
