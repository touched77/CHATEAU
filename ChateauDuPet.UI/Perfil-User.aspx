<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="Perfil-User.aspx.cs" Inherits="ChateauDuPet.UI.Perfil_User" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
            <asp:Label runat="server" ID="DataAniversario" class="form-label" />
            <asp:label runat="server" ID="lblFormacaoEscolar" class="form-label"/>
            <asp:Label runat="server" ID="lblSexo" class="form-label" />


<div class="row">
      <div class="col-md-4">.col-md-4</div>
      <div class="col-md-4 ms-auto"> 
            <asp:Image runat="server" ID="imagePro" class="bd-placeholder-img rounded-circle" Width="240" Height="240" />

            <asp:Label runat="server" CssClass="featurette-heading" ID="txtNome"/>
          
            <asp:label id="lbluser" class="form-label"  runat="server" />

      </div>
    </div>
    <div class="row">
      <div class="col-md-3 ms-auto">.col-md-3 .ms-auto</div>
      <div class="col-md-2 ms-auto">.col-md-2 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-md-6 ms-auto">.col-md-6 .ms-auto</div>
    </div>
    <div class="row">
      <div class="col-sm-9">
            <asp:Label  ID="lblBiografiaPro" runat="server" Text="Biografia :" CssClass=" col-form-label " />
       
            
      </div>
    </div>
</asp:Content>
