<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MailConfirmPass.aspx.cs" Inherits="WebudviklingProjekt1.MailConfirmPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="section-grey admin-section full-page-vh">
        <div class="container">
            <h1 class="section-header text-center">Mail confirmation</h1>
            <div class="login-form">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p>
                            You are about to reset your password on www.Project-titan.com<br />
                            Follow the link below to create a new password.<br />
                        </p>
                        <asp:HyperLink ID="link" runat="server"></asp:HyperLink>
                        <asp:HyperLink runat="server" ID="Accepted2" NavigateUrl="#" click="Accepted_Click"></asp:HyperLink>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="server">
</asp:Content>
