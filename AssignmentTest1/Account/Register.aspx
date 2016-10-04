<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AssignmentTest1.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>

    <div class="form-horizontal">
        <h4>Create a new account</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterEmail" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterEmail" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterEmail"
                    CssClass="text-danger" ErrorMessage="The email field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="The password field is required." />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Confirm password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The confirm password field is required." />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="The password and confirmation password do not match." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterFirstName" CssClass="col-md-2 control-label">Given Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterFirstName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterFirstName"
                    CssClass="text-danger" ErrorMessage="The given name field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterLastName" CssClass="col-md-2 control-label">Family Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterLastName" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterLastName"
                    CssClass="text-danger" ErrorMessage="The family name field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterAddress" CssClass="col-md-2 control-label">Address</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterAddress" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterAddress"
                    CssClass="text-danger" ErrorMessage="The address field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterSuburb" CssClass="col-md-2 control-label">Suburb</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterSuburb" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterSuburb"
                    CssClass="text-danger" ErrorMessage="The suburb field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="DrpDwnLstDetailsState" CssClass="col-md-2 control-label">State</asp:Label>
            <div class="col-md-3">
                <asp:DropDownList runat="server" ID="DrpDwnLstDetailsState" CssClass="form-control">
                     <asp:ListItem runat="server">NSW</asp:ListItem>
                    <asp:ListItem runat="server">QLD</asp:ListItem>
                    <asp:ListItem runat="server">VIC</asp:ListItem>
                    <asp:ListItem runat="server">NT</asp:ListItem>
                    <asp:ListItem runat="server">WA</asp:ListItem>
                    <asp:ListItem runat="server">SA</asp:ListItem>
                    <asp:ListItem runat="server">TAS</asp:ListItem>
                    <asp:ListItem runat="server">ACT</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="DrpDwnLstDetailsState"
                    CssClass="text-danger" ErrorMessage="The given name field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterPostcode" CssClass="col-md-2 control-label">Postcode</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterPostcode" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterPostcode"
                    CssClass="text-danger" ErrorMessage="The postcode field is required." />
            </div>
        </div>
         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="txtRegisterMobile" CssClass="col-md-2 control-label">Mobile Phone Number</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="txtRegisterMobile" CssClass="form-control"  />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtRegisterMobile"
                    CssClass="text-danger" ErrorMessage="The mobile phone number field is required." />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" />
            </div>
        </div>
    </div>
</asp:Content>
