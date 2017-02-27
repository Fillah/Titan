<%@ Page Title="Front page" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebudviklingProjekt1.Defaults" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderMain" runat="server">
    <section class="cd-section visible">
        <div class="imagebox">
            <div class="container">
                <div class="imageboxText">
                    <h1 class="imageboxHeader">Project: Titan</h1>
                    <p class="imageboxParagraph">
                        Attention to costumers wishes is our top priority.<br />
                        We don't just develop websites, we offer a comprehensive solution covering all stages of your project, from planning to launch, promotion and maintenance
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="about-section" id="about">
        <div class="container">
            <h2 class="section-header text-center">About us</h2>
            <div class="row row-top showmenu" data-isshown="false">
                <div class="col-md-6">
                    <img class="fit" src="Image/preview_COLOURBOX12573631.jpg" alt="Company image" />
                </div>
                <div class="col-md-6">
                    <p class="lead top-space">
                        <i>Founded in 2006, PROJECT: TITAN is a small web design & development agency based in Kopenhagen, DK. Over the last few years we've made a reputation for building websites that look great and are easy-to-use. 
                        </i>
                    </p>
                    <p>
                        We will give you a chance to work on some great projects and develop your skills in exchange for dedication in doing what you love. You will join a culture that doesn't obsess about how many days holiday you have left and rewards people for their efforts.
                    </p>
                    <p>
                        Fresh fruit, regular lunches, soft drinks and great Small Batch Coffee are provided on demand. We have an ongoing Ping Pong league, organise decent field trips and set aside time so you can develop personal projects.
                    </p>
                    <p>
                        We also provide things like a Mac, nice Aeron chair, iPhone and anything else you need to do the job. We use Macs, but you'll be free to use whatever you want to get the job done.
                    </p>
                </div>
            </div>
        </div>
    </section>

    <section class="section-grey about-section" id="purpose">
        <div class="container">
            <h2 class="section-header text-center">The purpose</h2>
        </div>
    </section>

    <section class="about-section" id="signup">
        <div class="container">
            <h2 class="section-header text-center">Sign up today</h2>
            <div class="row-top row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelProfession" CssClass="LabelText" runat="server" Text="Profession"></asp:Label></div>
                        <div class="col-md-4">
                            <asp:DropDownList ID="DropDownProfession" CssClass="dropdownList" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceProfession" DataTextField="Name" DataValueField="ProfessionID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AppendDataBoundItems="True">
                                <asp:ListItem Value="0" Text="---SELECT---"></asp:ListItem>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceProfession" runat="server" ConnectionString="<%$ ConnectionStrings:DBO.BistroteketConnectionString2 %>" SelectCommand="SELECT [Name], [ProfessionID] FROM [Profession] WHERE [Value] != 0"></asp:SqlDataSource>
                        </div>
                        <div class="col-md-6">
                            <asp:RequiredFieldValidator ID="RFDropDown" runat="server" ControlToValidate="DropDownProfession" CssClass="LabelError" Display="Dynamic" ErrorMessage="Required" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            <asp:Label ID="LabelSpots" runat="server" CssClass="LabelTextTop" Text=""></asp:Label>
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelFirstname" CssClass="LabelText" runat="server" Text="Firstname"></asp:Label></div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBoxFirstname" runat="server"></asp:TextBox></div>
                        <div class="col-md-2">
                            <asp:RequiredFieldValidator ID="RFFirstname" runat="server" ControlToValidate="TextBoxFirstname" CssClass="LabelError" Display="Dynamic" ErrorMessage="Required" SetFocusOnError="true"></asp:RequiredFieldValidator></div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelLastname" CssClass="LabelText" runat="server" Text="Lastname"></asp:Label></div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBoxLastname" runat="server"></asp:TextBox></div>
                        <div class="col-md-2">
                            <asp:RequiredFieldValidator ID="RFLastname" runat="server" ControlToValidate="TextBoxLastname" CssClass="LabelError" Display="Dynamic" ErrorMessage="Required" SetFocusOnError="true"></asp:RequiredFieldValidator></div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelPhone" CssClass="LabelText" runat="server" Text="Number"></asp:Label></div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBoxPhone" TextMode="Number" runat="server"></asp:TextBox></div>
                        <div class="col-md-2">
                            <asp:RequiredFieldValidator ID="RFPhone" runat="server" ControlToValidate="TextBoxPhone" CssClass="LabelError" Display="Dynamic" ErrorMessage="Required" SetFocusOnError="true"></asp:RequiredFieldValidator></div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelEmail" CssClass="LabelText" runat="server" Text="Email"></asp:Label></div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox></div>
                        <div class="col-md-2">
                            <asp:RequiredFieldValidator ID="RFEmail" runat="server" ControlToValidate="TextBoxEmail" CssClass="LabelError" Display="Dynamic" ErrorMessage="Required" SetFocusOnError="true"></asp:RequiredFieldValidator></div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                            <asp:Label ID="LabelColor" CssClass="LabelText" runat="server" Text="Color"></asp:Label></div>
                        <div class="col-md-4">
                            <asp:TextBox ID="TextBoxColor" runat="server"></asp:TextBox></div>
                        <div class="col-md-2">
                            <asp:RequiredFieldValidator ID="RFColor" runat="server" ControlToValidate="TextBoxColor" CssClass="LabelError" Display="Dynamic" ErrorMessage="Required" SetFocusOnError="true"></asp:RequiredFieldValidator></div>
                    </div>
                    <asp:Button ID="ButtonSubmit" CssClass="green-sea-flat-button" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
                </div>
                <div class="col-md-4"></div>
                <p class="lead">
                    <i>We need you!
                    </i>
                </p>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed feugiat arcu ut orci porta, eget porttitor 
                            felis suscipit. Sed a nisl ullamcorper, tempus augue at, rutrum lacus. Duis et turpis eros. Duis ex metus.
                </p>
                <p>
                    facilisis nec porta non, accumsan vel turpis. Proin euismod, sem a mollis vestibulum, ligula elit faucibus 
                            erat, in dignissim sapien leo eget quam.
                </p>
            </div>
        </div>
    </section>

    <section class="section-grey about-section contactImage" id="contact">
        <h2 class="section-header text-center">Contact us</h2>
        <div class="container">
            <div class="row-top row">
                <div class="col-md-9">
                </div>
                <div class="col-md-3">
                    <h2 class="section-header">Sites</h2>
                    <p class="text-uppercase"><a href="#"><img class="smallImage" src="Image/Facebook.png" alt="Facebook" /></a>&nbsp; &nbsp; <a href="#">Facebook</a></p>
                    <p class="text-uppercase"><a href="#"><img class="smallImage" src="Image/LinkedIn.png" alt="Linked in" /></a>&nbsp; &nbsp; <a href="#">Linked in</a></p>
                    <p class="text-uppercase"><a href="#"><img class="smallImage" src="Image/Instagram.png" alt="Instagram" /></a>&nbsp; &nbsp; <a href="#">Instagram</a></p>
                    <p class="text-uppercase"><a href="#"><img class="smallImage" src="Image/Twitter.png" alt="Twitter" /></a>&nbsp; &nbsp; <a href="#">Twitter</a></p>
                    <p class="text-uppercase"><a href="#"><img class="smallImage" src="Image/Youtube.png" alt="Youtube" /></a>&nbsp; &nbsp; <a href="#">Youtube</a></p>
                    <p class="text-uppercase"><a href="#"><img class="smallImage" src="Image/GooglePlus.png" alt="Google Plus" /></a>&nbsp; &nbsp; <a href="#">Google+</a></p>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolderFooter" runat="server">
    <footer id="footer">
        <div class="container">
            <p class="footer-text">&copy; 2015 &raquo; Jonas Christensen &laquo; Alle rettigheder forbeholdt &#8226; <a class="footer-link" href="mailto:jonas_chr@hotmail.com" target="_top">jonas_chr@hotmail.com </a>&#8226; Ditlev Bergs vej 31.1-25 &#8226; DK-9000 Aalborg</p>
        </div>
    </footer>
</asp:Content>
