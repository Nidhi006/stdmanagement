<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="StudentManagement.Results" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>

        body {
          margin: 0;
        }
       ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
            width: 205px;
            background-color: #f1f1f1;
            position: fixed;
            height: 99%;
            overflow: auto;
            top: 2px;
            left: 0px;
       }

        li a {
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
        }
        li button{
            display: block;
            color: #000;
            padding: 8px 16px;
            text-decoration: none;
        }
            li a.active {
                background-color: #04AA6D;
                color: white;
            }

            li a:hover:not(.active) {
                background-color: #555;
                color: white;
            }
        .main {
            margin-left: 250px;
            margin-top: 50px;
            position: fixed;
            overflow: auto;
            width: 50%;
            padding: 50px;
        }
        .profile {
            margin-left: 85%;
            margin-top:50px;
            display: inline-block;
            height: 100%;
            border: 1px solid black;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <ul>
        <li><a href="User.aspx">My Profile</a></li>
        <li><a class="active" href="Results.aspx">Results</a></li>
        <li><asp:Button runat="server" Text="Logout" ID="Logout" onClick="Logout_Click" Height="40px" Width="205px"></asp:Button></li>
    </ul>
    <div class="main">
      <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="SID" DataSourceID="SqlDataSource2" style="margin-left: 64px; margin-right: 721px" Width="417px">
            <ItemTemplate>
                
                Student ID &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp&nbsp; : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<asp:Label ID="SIDLabel" runat="server" Text='<%# Eval("SID") %>' />
                <br />
                <br />
                RegisterNo &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <asp:Label ID="RegisterNoLabel" runat="server" Text='<%# Eval("RegisterNo") %>' />
                <br /> <br />
                HighestQualification &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; : &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:Label ID="HighestQualificationLabel" runat="server" Text='<%# Eval("HighestQualification") %>' />
                <br /> <br />
                Stream &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp :  &nbsp &nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="StreamLabel" runat="server" Text='<%# Eval("Stream") %>' />
                <br /> <br />
                InstituteName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="InstituteNameLabel" runat="server" Text='<%# Eval("InstituteName") %>' />
                <br /> <br />
                Duration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="DurationLabel" runat="server" Text='<%# Eval("Duration") %>' />
                <br /> <br />
                 TotalPercentage&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="TotalPercentageLabel" runat="server" Text='<%# Eval("TotalPercentage") %>' />
                <br /> <br />
           </ItemTemplate>
        </asp:DataList> 
         <asp:DataList ID="DataList2" runat="server" DataKeyField="SubID" DataSourceID="SqlDataSource1" style="margin-left: 64px; margin-right: 214px" Width="483px">
              <ItemTemplate> 
                  SubID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="SubIDLabel" runat="server" Text='<%# Eval("SubID") %>' />
    </p>
        <p>
            SubName&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="SubNameLabel" runat="server" Text='<%# Eval("SubName") %>' />
    </p>
        <p>
                  Marks&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Label ID="MarksLabel" runat="server" Text='<%# Eval("Marks") %>' />
                  <br />
              
<br /> </ItemTemplate>
          </asp:DataList>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [SubID], [SubName], [Marks] FROM [SubMarks] WHERE ([RegisterNo] = @RegisterNo)">
              <SelectParameters>
                  <asp:SessionParameter Name="RegisterNo" SessionField="ID" Type="Int64" />
              </SelectParameters>
          </asp:SqlDataSource>
         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT * FROM [AcademicDetails] WHERE ([RegisterNo] = @RegisterNo)">
            <SelectParameters>
                <asp:SessionParameter Name="RegisterNo" SessionField="ID" Type="Int64" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    </div>
    <div class="profile">
        <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" width="150" height="150">
    </div>
    
</asp:Content>
