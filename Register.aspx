<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebudviklingProjekt1.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolderNav" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="section-grey admin-section full-page">
        <div class="container">
            <h1 class="section-header text-center">Register now</h1>
            <div class="login-form">
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">First name</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxFname" CssClass="login-textbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFFname" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxFname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">Last name</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxLname" CssClass="login-textbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFLname" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxLname" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">Number</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxNumber" TextMode="Number" CssClass="login-textbox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFNumber" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxNumber" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>
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
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <p class="login-text">Password</p>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 no-padding">
                        <asp:TextBox ID="TextBoxPassword" CssClass="login-textbox" TextMode="Password" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RFPassword" runat="server" ErrorMessage="Required" ControlToValidate="TextBoxPassword" ForeColor="Red"></asp:RequiredFieldValidator>
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
