<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="statistics.aspx.cs" Inherits="AssignmentTest1.Administrator.statistics" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:UpdatePanel ID="updatePnlDrpDwn" runat="server">
        <ContentTemplate>
            <div class="row">
                <asp:DropDownList ID="drpDownChartType" runat="server" AutoPostBack="true">
                    <asp:ListItem>Column</asp:ListItem>
                    <asp:ListItem>Pie</asp:ListItem>
                    <asp:ListItem>Line</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="drpDownChart3d" runat="server" AutoPostBack="true">
                    <asp:ListItem>Show 2d</asp:ListItem>
                    <asp:ListItem>Show 3d</asp:ListItem>
                </asp:DropDownList>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">Bookings Per Month</h4>
                </div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="updatePnlCharts" runat="server">
                        <ContentTemplate>

                            <div class="col-md-4">
                                <asp:Chart ID="chartBookingsPerRoom" runat="server" DataSourceID="SqlRoomBookings" Height="300px" Width="600px">
                                    <Series>
                                        <asp:Series Name="Series1" ChartType="Column" XValueMember="Room" YValueMembers="bookings"></asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>

                                <asp:SqlDataSource ID="SqlRoomBookings" runat="server" ConnectionString="<%$ ConnectionStrings:WesternHotelDatabase %>" SelectCommand="SELECT rid as Room, Count(*) as bookings from bookings group by rid"></asp:SqlDataSource>
                            </div>
                            
                        </ContentTemplate>
                    </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">Bookings Per Room</h4>
                </div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>

                            <div class="col-md-4">
                                <asp:Chart ID="chartBookingsPerMonth" runat="server" DataSourceID="SqlMonthBookings" Height="300px" Width="600px">
                                    <Series>
                                        <asp:Series Name="Series1" ChartType="Column" XValueMember="MonthName" YValueMembers="Bookings"></asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>

                                <asp:SqlDataSource ID="SqlMonthBookings" runat="server" ConnectionString="<%$ ConnectionStrings:WesternHotelDatabase %>" SelectCommand="SELECT MONTH(checkIn) AS Month, COUNT(*) AS Bookings, DATENAME(month, checkIn) AS MonthName FROM bookings GROUP BY MONTH(checkIn), DATENAME(month, checkIn) ORDER BY Month"></asp:SqlDataSource>
                            </div>
                            
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
            </div>
        <div class="row">
        <div class="col-md-12">
            <div class="panel panel-primary">
                <div class="panel-heading">
                    <h4 class="panel-title">Registrations Per State</h4>
                </div>
                <div class="panel-body">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>

                            <div class="col-md-4">
                                <asp:Chart ID="chartCustomersPerState" runat="server" DataSourceID="SqlUsersPerState" Height="300px" Width="600px">
                                    <Series>
                                        <asp:Series Name="Series1" ChartType="Column" XValueMember="State" YValueMembers="Customers"></asp:Series>
                                    </Series>
                                    <ChartAreas>
                                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                                    </ChartAreas>
                                </asp:Chart>

                                <asp:SqlDataSource ID="SqlUsersPerState" runat="server" ConnectionString="<%$ ConnectionStrings:WesternHotelDatabase %>" SelectCommand="SELECT state as State, Count(*) as Customers from CUSTOMERS GROUP BY State"></asp:SqlDataSource>
                            </div>
                            
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>

                </div>
        </div>
</asp:Content>
