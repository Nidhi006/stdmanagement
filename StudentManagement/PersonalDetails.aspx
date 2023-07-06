<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PersonalDetails.aspx.cs" Inherits="StudentManagement.PersonalDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <center> <h3> PERSONAL DETAILS </h3> </center>
      <div align="center">
      <asp:Table runat="server">
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
             First Name &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="FirstName" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Last Name &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="LastName" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </asp:TableCell>
             <asp:TableCell>
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Register Number &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Regno" runat="server"></asp:TextBox>&nbsp&nbsp
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>  <p></p><p></p><p></p></asp:TableCell>
        </asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p> <p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
      
         <asp:TableRow>
            <asp:TableCell>
             Email &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Email" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Mobile Number &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Mobile" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </asp:TableCell>
        </asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>  <p></p><p></p><p></p> </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
         <asp:TableRow>
            <asp:TableCell>
             Gender &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:RadioButtonList ID="Gender" runat="server" ><asp:ListItem Value="Male">&nbsp&nbsp Male &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</asp:ListItem>
               <asp:ListItem Value="Female">&nbsp&nbsp Female &nbsp&nbsp&nbsp&nbsp&nbsp</asp:ListItem> </asp:RadioButtonList>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </asp:TableCell>
             <asp:TableCell>
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp DOB 
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Dob" runat="server" TextMode="Date"></asp:TextBox>
               &nbsp&nbsp
            </asp:TableCell>
             </asp:TableRow>
         <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
             <asp:TableRow>
            <asp:TableCell>
            Father's Name &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Father" runat="server"></asp:TextBox>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
            </asp:TableCell>
             <asp:TableCell>
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Mother's Name &nbsp&nbsp
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox ID="Mother" runat="server"></asp:TextBox>&nbsp&nbsp
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
        <asp:TableRow> <asp:TableCell> <p></p><p></p><p></p><p></p> </asp:TableCell></asp:TableRow>
             <asp:TableRow>
            <asp:TableCell></asp:TableCell>
                 <asp:TableCell></asp:TableCell>
                 <asp:TableCell HorizontalAlign="Left">
                     <asp:Button ID="Next" runat="server" Text="NEXT" OnClick="Next_Click" />
                 </asp:TableCell>
                 </asp:TableRow>
    </asp:Table>
        <asp:Label ID="lbl1" runat="server"></asp:Label>
    </div>
</asp:Content>
