<%@ Page Title="" Language="C#" MasterPageFile="~/DefultEmpresa.Master" AutoEventWireup="true" CodeBehind="MainEmpre.aspx.cs" Inherits="ChateauDuPet.UI.MainEmpre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main class="bd-main order-1">
        <div class="bd-intro ps-lg-4">
            <div class="d-md-flex flex-md-row-reverse align-items-center justify-content-between">
                <h1 class="bd-title" id="content" style="vertical-align: inherit;">Profissionais </h1>
            </div>
            <!--Profissionais-->

        </div>


        <div class="bd-toc mt-4 mb-5 my-md-0 ps-xl-3 mb-lg-5 text-muted">
            <label class="d-block h6 my-2 pb-2 border-bottom" style="vertical-align: inherit;">Nesta página strong</label>
            <nav id="TableOfContents">
                <div class="toast" role="alert" aria-live="assertive" aria-atomic="true">
                    <div class="toast-header">
                        <img src="..." class="rounded me-2" alt="...">
                        <strong class="me-auto">Bootstrap</strong>
                        <small>11 mins ago</small>
                        <button type="button" class="btn-close" data-bs-dismiss="toast" aria-label="Close"></button>
                    </div>
                    <div class="toast-body">
                        Hello, world! This is a toast message.
                    </div>
                </div>
            </nav>
        </div>


        <div class="bd-content ps-lg-4">
        </div>

    </main>
</asp:Content>
