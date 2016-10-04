<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AssignmentTest1._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron" Visible="false" runat="server" id="jumbo">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>
    
    <div class="row">
        <asp:LoginView runat="server" ViewStateMode="Disabled">
            <AnonymousTemplate>
                 For anonymous users, this page should display a general introduction of the hotel.
        
            </AnonymousTemplate>
            <RoleGroups>
                <asp:RoleGroup Roles="Administrator">
                    <ContentTemplate>
                        For logged-in administrators, this page should display an introduction to the links administrators see.
                    </ContentTemplate>
                </asp:RoleGroup>
                <asp:RoleGroup Roles="Customer">
                    <ContentTemplate>
                     For logged-in customers, this page should display an introduction to the links customers see. 
                    </ContentTemplate>
                </asp:RoleGroup>
            </RoleGroups>
        </asp:LoginView>
    </div>
</asp:Content>
