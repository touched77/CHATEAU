<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="MainPro.aspx.cs" Inherits="ChateauDuPet.UI.MainPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:Repeater ID="CardVaga" runat="server" >  
        <ItemTemplate> 
    <div class="card" style="width: 18rem;">
  <div class="card-body">
      <asp:Label runat="server" ID="txtVaga" CssClass="card-title" ><%# DataBinder.Eval(Container.DataItem, "Vaga") %></asp:Label>
    <asp:Label runat="server" ID="txtUser" class="card-subtitle mb-2 text-muted"><%# DataBinder.Eval(Container.DataItem, "Validade") %></asp:Label>
    <asp:Label runat="server" ID="txtSobre" class="card-text"><%# DataBinder.Eval(Container.DataItem, "Descricao") %></asp:Label>
  
<a   class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"> <%# DataBinder.Eval(Container.DataItem, "IdVaga")%>  Ver mais</a>
  </div>
</div>

        </ItemTemplate>
        </asp:Repeater>
    <asp:Repeater ID="rptPro" runat="server">
                <ItemTemplate>

                    <div class="card" style="width: 18rem;">
                        <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">
                            <img class="card-img-top" src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>" alt="Card image cap">
                        </a>
                        <div class="card-body">
                            <a href="Album.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">
                                <h5 class="card-title"><%# DataBinder.Eval(Container.DataItem, "Nome") %></h5>
                            </a>
                            <p class="card-text">
                                <%# DataBinder.Eval(Container.DataItem, "Biografia") %>  
                                -  <%# DataBinder.Eval(Container.DataItem, "FormacaoEscolar") %>
                            </p>
                            <span class="badge badge-info"><%# DataBinder.Eval(Container.DataItem, "User") %></span>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
    <!-- Button trigger modal -->
<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-fullscreen-sm-down" >
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div><div class="modal-body">
  <div class="modal-lg">
    <div class="row">
      <div class="col-md-4">.col-md-4</div>
      <div class="col-md-4 ms-auto">.col-md-4 .ms-auto</div>
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
        Level 1: .col-sm-9
        <div class="row">
          <div class="col-8 col-sm-6">
            Level 2: .col-8 .col-sm-6
          </div>
          <div class="col-4 col-sm-6">
            Level 2: .col-4 .col-sm-6
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>
</asp:Content>
