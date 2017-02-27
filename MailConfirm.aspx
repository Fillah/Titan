<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="MailConfirm.aspx.cs" Inherits="WebudviklingProjekt1.MailConfirm" %>
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
                            You are about to create a user on www.Project-titan.com<br />
                            Before you can use your login, you have to activate your user. Click on the following link:<br />
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
