<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="StudentManagement.Report" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .gv1 td {
            padding: 1px;
            text-align: center;
            width: 3%;
            border: solid 1px black;
            border-collapse: collapse;
        }
        .gv1 th{
            padding: 2px 4px;
            border-width: 1px;
        }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Button ID="Back" runat="server" Text="Back" OnClick="Back_Click" />
    <br />
    <asp:Panel ID="Pnl1" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" style="margin-left: 130px; margin-top: 26px;" Width="200px" HorizontalAlign="Left">
        <ItemTemplate>
            RegisterNo:
            <asp:Label ID="RegisterNoLabel" runat="server" Text='<%# Eval("RegisterNo") %>' />
            <br /> <br />
            First_Name:
            <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval("First_Name") %>' />
            <br /> <br />
            Last_Name:
            <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
            <br /> <br />
            Email:
            <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
            <br /> <br />
            Mobile:
            <asp:Label ID="MobileLabel" runat="server" Text='<%# Eval("Mobile") %>' />
            <br /> <br />
            DOB:
            <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
            <br /> <br />
        </ItemTemplate>
    </asp:DataList>
        </asp:Panel>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [RegisterNo], [First_Name], [Last_Name], [Email], [Mobile], [DOB] FROM [PersonalDetails] WHERE ([RegisterNo] = @RegisterNo)">
        <SelectParameters>
            <asp:SessionParameter Name="RegisterNo" SessionField="regno" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel runat="server" ID="pnl2">
    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource2" style="margin-left: 130px; margin-top: 26px;" Width="210px" HorizontalAlign="Left">
        <ItemTemplate>
            HighestQualification:
            <asp:Label ID="HighestQualificationLabel" runat="server" Text='<%# Eval("HighestQualification") %>' />
            <br /> <br />
            Stream:
            <asp:Label ID="StreamLabel" runat="server" Text='<%# Eval("Stream") %>' />
            <br /> <br />
            InstituteName:
            <asp:Label ID="InstituteNameLabel" runat="server" Text='<%# Eval("InstituteName") %>' />
            <br /> <br />
            Duration:
            <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
            <br /> <br />
            TotalPercentage:
            <asp:Label ID="TotalPercentageLabel" runat="server" Text='<%# Eval("TotalPercentage") %>' />
        </ItemTemplate>
    </asp:DataList>
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [HighestQualification], [Stream], [InstituteName], [Duration], [TotalPercentage] FROM [AcademicDetails] WHERE ([RegisterNo] = @RegisterNo)">
        <SelectParameters>
            <asp:SessionParameter Name="RegisterNo" SessionField="regno" Type="Int64" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:Panel ID="pnl3" runat="server">

<asp:GridView CssClass="gv1"  runat="server" CellPadding="12" CellSpacing="12" AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Height="135px" Width="225px" style="margin-left: 120px; align-content:center; align-items:center; text-align:center" HorizontalAlign="Left" BackColor="#FFFFCC" BorderColor="Gray"  BorderWidth="2px" Font-Italic="True">
    <Columns>
        <asp:BoundField DataField="SubName" HeaderText="SubName" SortExpression="SubName" />
        <asp:BoundField DataField="Marks" HeaderText="Marks" SortExpression="Marks" />
    </Columns>
    <FooterStyle  />
    <HeaderStyle BackColor="#FFCC66" BorderWidth="2px" />
</asp:GridView> 
    </asp:Panel>
<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT  [SubName], [Marks] FROM [SubMarks] WHERE ([RegisterNo] = @RegisterNo)">
    <SelectParameters>
        <asp:SessionParameter Name="RegisterNo" SessionField="regno" Type="Int64" />
    </SelectParameters>
</asp:SqlDataSource>

</asp:Content>
