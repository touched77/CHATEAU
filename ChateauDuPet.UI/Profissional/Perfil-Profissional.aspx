<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="Perfil-Profissional.aspx.cs" Inherits="ChateauDuPet.UI.MainProfissional.Perfil_Profissional" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 
     <h2 class="mb-4">Perfil </h2>
                    <a  class="img logo rounded-circle mb-5"data-toggle="collapse" style="background-image: url(imagens/pp.png);"></a>
    <asp:DataGrid runat="server" id="dgImage"  AutoGenerateColumns="false"  ShowFooter="true" DataKeyField="" ></asp:DataGrid>

    
            <asp:TemplateField HeaderText="Imagem">
                <ItemTemplate>
                    <asp:Image ImageUrl='<%#Eval("UrlImagemAlbum")%>' Width="100" Height="100" runat="server" />
                </ItemTemplate>
                <EditItemTemplate>
                    <asp:FileUpload ID="fUp1" runat="server" Text="Selecione a Imagem" />
                </EditItemTemplate>
                <FooterTemplate>
                    <asp:FileUpload ID="FileUpload1" runat="server" Text="Selecione a Imagem" />
                </FooterTemplate>
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:TemplateField>
      
</asp:Content>
