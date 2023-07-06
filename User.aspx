<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="StudentManagement.User" %>

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
             top: -29px;
             left: 0px;
             height: 3609px;
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

<asp:Content ID="Content2"  ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <ul>
        <li><a class="active" href="User.aspx">My Profile</a></li>
        <li><a href="Results.aspx">Results</a></li>
        <li><asp:Button runat="server" Text="Logout" ID="Logout" onClick="Logout_Click" Height="40px" Width="225px"></asp:Button></li>
    </ul>
   
    <div class="main" >
          <asp:Panel runat="server">
         <asp:DataList ID="dl1" runat="server"  OnEditCommand="dl1_EditCommand" OnCancelCommand="dl1_CancelCommand" 
             OnUpdateCommand="dl1_updateCommand" style="margin-left: 85px; margin-right: 50px" Height="100%" >
             <ItemTemplate>
                  <asp:Button ID="Btn1" runat="server" CommandName="Edit" Text="Edit" />  
                 <br />
                 Register No &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="RegisterNo" runat="server" Text='<%# Eval(" RegisterNo") %>' />
                <br /> <br />
                <br />  <br />
                First Name &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="First_NameLabel" runat="server" Text='<%# Eval(" First_Name") %>' />
                <br /> <br />
                <br />  <br />
                Last Name &nbsp &nbsp &nbsp &nbsp &nbsp  : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Eval("Last_Name") %>' />
                <br />  <br /> <br /> <br />
                Email &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                <br />  <br /> <br /> <br />
                Mobile &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <asp:label ID="MobileLabel" Enabled="false" runat="server" Text='<%# Eval("Mobile") %>' />
                &nbsp &nbsp   <br />  <br /><br /> <br />
                DOB&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="DOBLabel" runat="server" Text='<%# Eval("DOB") %>' />
                <br />  <br /> <br /> <br />
                Gender &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="GenderLabel" runat="server" Text='<%# Eval("Gender") %>' />
                <br />  <br /> <br /> <br />
                Father Name &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="FatherNameLabel" runat="server" Text='<%# Eval("FatherName") %>' />
                <br />  <br /> <br /> <br />
                Mother Name &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="MotherNameLabel" runat="server" Text='<%# Eval("MotherName") %>' />
                <br /> <br /> <br /> <br /> 
            </ItemTemplate>
             <EditItemTemplate>
                 <asp:Button ID="btn3" runat="server" CommandName="update" Text="update" />   
                 <asp:Button ID="btn4" runat="server" CommandName="cancel" Text="Cancel" />  <br />
                 Register No &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:Label ID="RegisterNo" runat="server" Text='<%# Eval(" RegisterNo") %>' />
                <br /> <br />
                <br />  <br />
                 First Name &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="First_Name" runat="server" Text='<%# Eval(" First_Name") %>' />
                <br /> <br />
                <br />  <br />
                Last Name &nbsp &nbsp &nbsp &nbsp &nbsp  : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="Last_Name" runat="server" Text='<%# Eval("Last_Name") %>' />
                <br />  <br /> <br /> <br />
                Email &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="Email" runat="server" Text='<%# Eval("Email") %>' />
                <br />  <br /> <br /> <br />
                Mobile &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
               <asp:TextBox ID="Mobile"  runat="server" Text='<%# Eval("Mobile") %>' />
                &nbsp &nbsp   <br />  <br /><br /> <br />
                DOB&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="DOB" runat="server" Text='<%# Eval("DOB") %>' />
                <br />  <br /> <br /> <br />
                Gender &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="Gender" runat="server" Text='<%# Eval("Gender") %>' />
                <br />  <br /> <br /> <br />
                Father Name &nbsp &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="FatherName" runat="server" Text='<%# Eval("FatherName") %>' />
                <br />  <br /> <br /> <br />
                Mother Name &nbsp &nbsp &nbsp : &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                <asp:TextBox ID="MotherName" runat="server" Text='<%# Eval("MotherName") %>' />
                <br /> <br /> <br /> <br />    
                                       
             </EditItemTemplate>
        </asp:DataList>
              </asp:Panel> 
    </div>
    <div class="profile">
        <img src="https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png" width="150" height="150">
    </div>
</asp:Content>
