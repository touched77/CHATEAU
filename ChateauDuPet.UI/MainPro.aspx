<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="MainPro.aspx.cs" Inherits="ChateauDuPet.UI.MainPro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Repeater ID="rptVaga1" runat="server" >  
        <ItemTemplate> 
  <div class="col-sm-6">
    <div class="card">
      <div class="card-body"> <a runat="server" id="A1" href="Vagas.aspx" class="btn btn-primary"> <%# DataBinder.Eval(Container.DataItem, "IdVaga")%>
     <asp:Label runat="server" ID="txtVaga" CssClass="card-title"><%# DataBinder.Eval(Container.DataItem, "Vaga") %></asp:label>
     <asp:Label runat="server" ID="txtSobre"  CssClass="card-text"><%# DataBinder.Eval(Container.DataItem, "Descricao") %></asp:label>
        <a runat="server" id="idvaga" href="Vagas.aspx" class="btn btn-primary"> <%# DataBinder.Eval(Container.DataItem, "IdVaga")%>Ver mais</a></a>
      </div>
    </div>
  </div>
            

        </ItemTemplate>
        </asp:Repeater>
    <hr class="featurette-divider">
    
    <asp:Label runat="server" ID="txtNome">esse</asp:Label>
    <br /><br />
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
    <hr class="featurette-divider">
    
    <asp:Repeater ID="rptPro" runat="server">
                <ItemTemplate>
                    
          <div class="row">
            <div class="col-lg-4 ">
                        <a href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>"> 
                            <img src="<%# DataBinder.Eval(Container.DataItem, "UrlImage").ToString().Replace("~", ".") %>"  class="bd-placeholder-img rounded-circle" Width="140" Height="140" />
                                <h5 ><%# DataBinder.Eval(Container.DataItem, "Nome") %></h5>
                           <p><%# DataBinder.Eval(Container.DataItem, "Biografia") %></p>
                            <p class="badge badge-info"><%# DataBinder.Eval(Container.DataItem, "User") %> </p>
                     <a class="btn btn-primary"  href="Perfil-Profissional.aspx?id=<%# DataBinder.Eval(Container.DataItem, "IdProfissional") %>">Ver mais</a>
                 </a>
                        </div>
                    </div>

                </ItemTemplate>
            </asp:Repeater>
</asp:Content>
