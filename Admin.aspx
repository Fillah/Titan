<%@ Page Title="Login site" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebudviklingProjekt1.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="section-grey admin-section full-page">
        <div class="container">
            <img class="center-logo" src="https://upload.wikimedia.org/wikipedia/en/thumb/e/e1/Crocs_logo.svg/1024px-Crocs_logo.svg.png" alt="logo" />
            <div class="login-form">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">Username</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxUsername" CssClass="login-textbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFUsername" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxUsername" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">Password</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxPassword" TextMode="Password" CssClass="login-textbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFPassword" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-1 no-padding">
                        <asp:CheckBox ID="CheckBox" Checked="true" runat="server" />
                    </div>
                    <div class="col-md-11 no-padding">
                        <p class="adminTextTop">&nbsp; Remember me</p>
                    </div>
                </div>
                    <asp:Label ID="LabelError" CssClass="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:Button ID="ButtonSubmit" runat="server" CssClass="btn btn-info" Text="Button" OnClick="ButtonSubmit_Click" />
                    </div>
                </div>
            </div>
            <p class="text-center">
                <a href="Register.aspx">Create user</a> | <a href="LostPassword.aspx">Forgot password?</a> 
            </p>
            <p class="text-center">
                <a href="Default.aspx">&larr; Back to front page</a>
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="server">
</asp:Content>
