<%@ Page Title="Adminpage" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Adminpage.aspx.cs" Inherits="WebudviklingProjekt1.Adminpage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="cd-section visible">
        <div class="adminImageBox">
            <div class="container">
                <div class="imageboxText">
                    <h1 class="imageboxHeader bg-header">Admin page</h1>
                </div>
            </div>
        </div>
    </section>

    <section class="about-section">
        <div class="container">
            <h2 class="section-header text-center">Applications</h2>
            <div class="row row-top">
                <div class="col-md-4">
                    <h4>Choose a profession</h4>
                    <br />
                    <asp:DropDownList ID="DropDownProfession" runat="server" AutoPostBack="true" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="ProfessionID" OnSelectedIndexChanged="DropDownProfession_SelectedIndexChanged" AppendDataBoundItems="True">
                        <asp:ListItem Value="0" Text="---SELECT---"></asp:ListItem>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBO.BistroteketConnectionString2 %>" SelectCommand="SELECT [Name], [ProfessionID] FROM [Profession]"></asp:SqlDataSource>
                </div>
                <div class="col-md-8">
                    <h4>See specific data</h4><br />
                    <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="true">
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
