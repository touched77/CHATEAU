<%@ Page Title="" Language="C#" MasterPageFile="~/DefultProfissional.Master" AutoEventWireup="true" CodeBehind="MainPro.aspx.cs" Inherits="ChateauDuPet.UI.MainPro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <h2 class="mb-4">Feed  </h2>
      
    
            <asp:Repeater ID="rptVagas" runat="server">
                <ItemTemplate>
                    <div class="container " >
                                    <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                        <div class="col p-4 d-flex flex-column position-static">
                          <strong class="d-inline-block mb-2 text-primary"><%# DataBinder.Eval(Container.DataItem, "Vaga").ToString().Replace("~", ".") %>"</strong>
                          <h3 class="mb-0">Featured post</h3>
                          <div class="mb-1 text-muted">Nov 12</div>
                          <p class="card-text mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
                          <a href="#" class="stretched-link">Continue reading</a>
                        </div>
                        <div class="col-auto d-none d-lg-block">
                             <img class="card-img-top" src="<%# DataBinder.Eval(Container.DataItem, "UrlImagemAlbum").ToString().Replace("~", ".") %>" alt="Card image cap">
                        </div>
                      </div>
               
                </ItemTemplate>
            </asp:Repeater>
    

</asp:Content>
