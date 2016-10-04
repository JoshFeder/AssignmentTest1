<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManageRooms.aspx.cs" Inherits="AssignmentTest1.Administrator.ManageRooms" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:ListView ID="lstViewManageRooms" runat="server" InsertItemPosition="LastItem" DataKeyNames="rid" DataSourceID="sqlRoomsData">
        <AlternatingItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="ridLabel" runat="server" Text='<%# Eval("rid") %>' />
                </td>
                <td>
                    <asp:Label ID="levelLabel" runat="server" Text='<%# Bind("level") %>' />
                </td>
                <td>
                    <asp:Label ID="bedsLabel" runat="server" Text='<%# Bind("beds") %>' />
                </td>
                <td>
                    <asp:Label ID="orientationLabel" runat="server" Text='<%# Bind("orientation") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
                <td>
                    <asp:Label ID="ridLabel1" runat="server" Text='<%# Eval("rid") %>' />
                </td>
                <td>
                    <asp:TextBox ID="levelTextBox" runat="server" Text='<%# Bind("level") %>' />
                </td>
                <td>
                    <asp:TextBox ID="bedsTextBox" runat="server" Text='<%# Bind("beds") %>' />
                </td>
                <td>
                    <asp:TextBox ID="orientationTextBox" runat="server" Text='<%# Bind("orientation") %>' />
                </td>
                <td>
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
                <td>
                    <asp:TextBox ID="ridTextBox" runat="server" Text='<%# Bind("rid") %>' />
                </td>
                <td>
                    <asp:TextBox ID="levelTextBox" runat="server" Text='<%# Bind("level") %>' />
                </td>
                <td>
                    <asp:TextBox ID="bedsTextBox" runat="server" Text='<%# Bind("beds") %>' />
                </td>
                <td>
                    <asp:TextBox ID="orientationTextBox" runat="server" Text='<%# Bind("orientation") %>' />
                </td>
                <td>
                    <asp:TextBox ID="priceTextBox" runat="server" Text='<%# Bind("price") %>' />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="ridLabel" runat="server" Text='<%# Eval("rid") %>' />
                </td>
                <td>
                    <asp:Label ID="levelLabel" runat="server" Text='<%# Bind("level") %>' />
                </td>
                <td>
                    <asp:Label ID="bedsLabel" runat="server" Text='<%# Bind("beds") %>' />
                </td>
                <td>
                    <asp:Label ID="orientationLabel" runat="server" Text='<%# Bind("orientation") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                            <tr runat="server" style="">
                                <th runat="server"></th>
                                <th runat="server">rid</th>
                                <th runat="server">level</th>
                                <th runat="server">beds</th>
                                <th runat="server">orientation</th>
                                <th runat="server">price</th>
                            </tr>
                            <tr id="itemPlaceholder" runat="server">
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr runat="server">
                    <td runat="server" style="">
                        <asp:DataPager ID="DataPager1" runat="server">
                            <Fields>
                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                            </Fields>
                        </asp:DataPager>
                    </td>
                </tr>
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="">
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
                <td>
                    <asp:Label ID="ridLabel" runat="server" Text='<%# Eval("rid") %>' />
                </td>
                <td>
                    <asp:Label ID="levelLabel" runat="server" Text='<%# Bind("level") %>' />
                </td>
                <td>
                    <asp:Label ID="bedsLabel" runat="server" Text='<%# Bind("beds") %>' />
                </td>
                <td>
                    <asp:Label ID="orientationLabel" runat="server" Text='<%# Bind("orientation") %>' />
                </td>
                <td>
                    <asp:Label ID="priceLabel" runat="server" Text='<%# Bind("price") %>' />
                </td>
            </tr>
        </SelectedItemTemplate>

    </asp:ListView>
    <asp:SqlDataSource ID="sqlRoomsData" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [rooms] WHERE [rid] = @original_rid AND [level] = @original_level AND [beds] = @original_beds AND [orientation] = @original_orientation AND [price] = @original_price" InsertCommand="INSERT INTO [rooms] ([rid], [level], [beds], [orientation], [price]) VALUES (@rid, @level, @beds, @orientation, @price)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [rooms]" UpdateCommand="UPDATE [rooms] SET [level] = @level, [beds] = @beds, [orientation] = @orientation, [price] = @price WHERE [rid] = @original_rid AND [level] = @original_level AND [beds] = @original_beds AND [orientation] = @original_orientation AND [price] = @original_price">
        <DeleteParameters>
            <asp:Parameter Name="original_rid" Type="String" />
            <asp:Parameter Name="original_level" Type="String" />
            <asp:Parameter Name="original_beds" Type="Byte" />
            <asp:Parameter Name="original_orientation" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="rid" Type="String" />
            <asp:Parameter Name="level" Type="String" />
            <asp:Parameter Name="beds" Type="Byte" />
            <asp:Parameter Name="orientation" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="level" Type="String" />
            <asp:Parameter Name="beds" Type="Byte" />
            <asp:Parameter Name="orientation" Type="String" />
            <asp:Parameter Name="price" Type="Double" />
            <asp:Parameter Name="original_rid" Type="String" />
            <asp:Parameter Name="original_level" Type="String" />
            <asp:Parameter Name="original_beds" Type="Byte" />
            <asp:Parameter Name="original_orientation" Type="String" />
            <asp:Parameter Name="original_price" Type="Double" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
