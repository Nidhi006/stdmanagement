<%@ Page Title="" Language="C#" MasterPageFile="~/Site3.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="StudentManagement.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
    .dd{
        height: 100%;
        color: black;
        cursor: pointer;
        border: 1px solid black;
        border-radius: 15px;
        height:20px;
    }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel runat="server" BackColor="WhiteSmoke"  ID="Fil">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label2" runat="server" Text="Highest Qualification"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="dd" ID="Qualificaton" Width="150px" runat="server"  DataSourceID="SqlDataSource1" DataTextField="Qualifications" DataValueField="Qualifications">
       
            </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Stream"></asp:Label>
        &nbsp;&nbsp;
        <asp:DropDownList CssClass="dd" ID="Streams" runat="server" DataSourceID="SqlDataSource2" DataTextField="Stream" DataValueField="Stream">

        </asp:DropDownList>
          &nbsp;&nbsp;&nbsp;&nbsp; Gender&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList CssClass="dd" ID="Gender"  runat="server">
            <asp:ListItem  Text="All" Value=""></asp:ListItem>
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="filapply" runat="server" Text="Apply" OnClick="filapply_Click" />
        <br /> <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp; &nbsp;&nbsp; &nbsp; Search&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:TextBox CssClass="dd" ID="txtSearch" runat="server"></asp:TextBox>
        &nbsp;<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [Stream] FROM [Stream]"></asp:SqlDataSource>
         
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyConnection %>" SelectCommand="SELECT [Qualifications] FROM [Qualifications]"></asp:SqlDataSource>
        <asp:ImageButton ID="Search" runat="server" OnClick="Search_Click" ImageUrl="https://static.vecteezy.com/system/resources/previews/001/591/517/non_2x/free-search-icon-free-vector.jpg" Height="25px" Width="36px" />
        <br />
        <br />
        <br />
       
    </asp:Panel>

    <asp:Panel runat="server" scrollBars="Horizontal">
  <asp:GridView ID="GridView1" RowStyle-BorderStyle="Double" Width="100%" runat="server" AutoGenerateColumns="False" AllowPaging="true" OnPageIndexChanging="GridView1_PageIndexChanging" AllowSorting="true" CellPadding="6" OnRowCancelingEdit="GridView1_RowCancelingEdit"
OnRowEditing="GridView1_RowEditing" OnRowCommand="GridView1_RowCommand" PageSize="2" OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" BorderStyle="Double" CellSpacing="10">  
              <Columns >
             <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="btn_Edit" runat="server" Text="Edit" CommandName="Edit" />
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:Button ID="btn_Update" runat="server" Text="Update" CommandName="Update"/>  
                        <asp:Button ID="btn_Cancel" runat="server" Text="Cancel" CommandName="Cancel"/> 
                        <asp:Button ID="btn_Delete" runat="server" Text="Delete" CommandName="Delete" />
                    </EditItemTemplate>  
                </asp:TemplateField>  
             <asp:TemplateField HeaderText="RegisterNo">  
                    <ItemTemplate>  
                        <asp:Label ID="RegisterNo" runat="server" Text='<%#Eval("RegisterNo") %>'></asp:Label>  
                    </ItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="FirstName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_FirstName" runat="server" Text='<%#Eval("First_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_FirstName" runat="server" Text='<%#Eval("First_Name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                   <asp:TemplateField HeaderText="LastName">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_LastName" runat="server" Text='<%#Eval("Last_Name") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_LastName" runat="server" Text='<%#Eval("Last_Name") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Email">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Email" runat="server" Text='<%#Eval("Email") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Email" runat="server" Text='<%#Eval("Email") %>'></asp:TextBox>  
                    </EditItemTemplate> 
                    
                </asp:TemplateField> 
                <asp:TemplateField HeaderText="Mobile">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Mobile" runat="server" Text='<%#Eval("Mobile") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Mobile" runat="server" Text='<%#Eval("Mobile") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Gender">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Gender" runat="server" Text='<%#Eval("Gender") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Gender" runat="server" Text='<%#Eval("Gender") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="DOB">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_DOB" runat="server" Text='<%#Eval("DOB") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_DOB" runat="server" Text='<%#Eval("DOB") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="HighestQualification">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_HighestQualification" runat="server" Text='<%#Eval("HighestQualification") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_HighestQualification" runat="server" Text='<%#Eval("HighestQualification") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Stream">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_Stream" runat="server" Text='<%#Eval("Stream") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_Stream" runat="server" Text='<%#Eval("Stream") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                   <asp:TemplateField HeaderText="TotalPercentage">  
                    <ItemTemplate>  
                        <asp:Label ID="lbl_TotalPercentage" runat="server" Text='<%#Eval("TotalPercentage") %>'></asp:Label>  
                    </ItemTemplate>  
                    <EditItemTemplate>  
                        <asp:TextBox ID="txt_TotalPercentage" runat="server" Text='<%#Eval("TotalPercentage") %>'></asp:TextBox>  
                    </EditItemTemplate>  
                </asp:TemplateField>  
                  <asp:TemplateField>  
                    <ItemTemplate>  
                        <asp:Button ID="Report" runat="server" Text="View Report" CommandName="Report" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"  />
                    </ItemTemplate>  
                      </asp:TemplateField>
        </Columns>
              <EditRowStyle BorderStyle="Double" />
              <FooterStyle BorderStyle="Double" />
       <HeaderStyle BackColor="#669999" ForeColor="#ffffff" BorderStyle="Double"/>  
              <PagerStyle BorderStyle="Double" />
            <RowStyle BackColor="#FFFFCC" BorderStyle="Double"/> 
    </asp:GridView>
        </asp:Panel>
        <br />
        <br />
        <asp:Chart ID="Chart1" runat="server" Width="955px" >  
            <series>  
                <asp:Series Name="Series1" XValueMember="First_Name" YValueMembers="TotalPercentage" Palette="Chocolate" YAxisType="Primary" IsXValueIndexed="True" XValueType="String" YValueType="Int64" IsValueShownAsLabel="True">  
                </asp:Series>  
            </series>  
            <chartareas>  
                <asp:ChartArea Name="ChartArea1" AlignmentStyle="Position, PlotPosition"> 
                    <axisy>
                         <MajorGrid Enabled ="False" />
                     </axisy>
                     <axisx>
                          <MajorGrid Enabled="false"/>
                     </axisx>
                </asp:ChartArea>  
            </chartareas>  
        </asp:Chart> 
        
</asp:Content>
