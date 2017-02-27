<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="LostPassword.aspx.cs" Inherits="WebudviklingProjekt1.LostPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="section-grey admin-section full-page-vh">
        <div class="container">
            <h1 class="section-header text-center">Lost password</h1>
            <div class="login-form">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">E-mail</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxEmail" CssClass="login-textbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFEmail" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Label ID="LabelError" CssClass="Error" runat="server" Text=""></asp:Label>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:Button ID="ButtonSubmit" runat="server" CssClass="btn btn-info" Text="Button" OnClick="ButtonSubmit_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="server">
</asp:Content>
