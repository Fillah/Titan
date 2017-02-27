<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="NewPassword.aspx.cs" Inherits="WebudviklingProjekt1.NewPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="section-grey admin-section full-page-vh">
        <div class="container">
            <h1 class="section-header text-center">Create new password</h1>
            <div class="login-form">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">New Password</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxPass" CssClass="login-textbox" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFPass" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">Repeat password</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxRepeat" CssClass="login-textbox" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFRepeat" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxRepeat" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <asp:Label ID="LabelError" CssClass="LabelError" runat="server" Text="" ForeColor="Red"></asp:Label>

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
