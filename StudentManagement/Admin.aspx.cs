using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BussinessLogic;
using BussinessObjects;
namespace StudentManagement
{
    public partial class Admin : System.Web.UI.Page
    {
        DataTable dt;
        DataTable dc;
        BO bo = new BO();
        BL bl = new BL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                ShowData();
            }
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            ShowData(); 
        }
        protected void GridView1_RowCancelingEdit(object sender, System.Web.UI.WebControls.GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            ShowData();
        }

        protected void GridView1_RowDeleting(object sender, System.Web.UI.WebControls.GridViewDeleteEventArgs e)
        {
            Label RegisterNo = GridView1.Rows[e.RowIndex].FindControl("RegisterNo") as Label;
            bo.RegisterNo = RegisterNo.Text;
            bl.Delete(bo);
            GridView1.EditIndex = -1;
            ShowData();
        }
        protected void GridView1_RowUpdating(object sender, System.Web.UI.WebControls.GridViewUpdateEventArgs e)
        {
            Label RegisterNo = GridView1.Rows[e.RowIndex].FindControl("RegisterNo") as Label;
            TextBox FirstName = GridView1.Rows[e.RowIndex].FindControl("txt_FirstName") as TextBox;
            TextBox LastName = GridView1.Rows[e.RowIndex].FindControl("txt_LastName") as TextBox;
            TextBox Email = GridView1.Rows[e.RowIndex].FindControl("txt_Email") as TextBox;
            TextBox Mobile = GridView1.Rows[e.RowIndex].FindControl("txt_Mobile") as TextBox;
            TextBox Gender = GridView1.Rows[e.RowIndex].FindControl("txt_Gender") as TextBox;
            TextBox DOB = GridView1.Rows[e.RowIndex].FindControl("txt_DOB") as TextBox;
           TextBox HighestQualification = GridView1.Rows[e.RowIndex].FindControl("txt_HighestQualification") as TextBox;
            TextBox Stream = GridView1.Rows[e.RowIndex].FindControl("txt_Stream") as TextBox;
            TextBox TotalPercentage = GridView1.Rows[e.RowIndex].FindControl("txt_TotalPercentage") as TextBox;

            bo.FirstName = FirstName.Text;
            bo.LastName = LastName.Text;
            bo.Qualification = HighestQualification.Text;
            bo.Stream = Stream.Text;
            bo.Total = TotalPercentage.Text;
            bo.Email = Email.Text;
            bo.Mobile = Mobile.Text;
            bo.Gender = Gender.Text;
            bo.RegisterNo = RegisterNo.Text;
            bl.Update(bo);
            GridView1.EditIndex = -1;
            ShowData();
        }
        protected void GridView1_RowEditing(object sender, System.Web.UI.WebControls.GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            ShowData();
        }
        protected void ShowData()
          {
            dt = new DataTable();
            dt = bl.ShowData();
            dc = new DataTable();
            dc = bl.chartdata();
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Chart1.DataSource = dc;
                Chart1.DataBind();
                
            }

        }

        protected void Search_Click(object sender, ImageClickEventArgs e)
        {
           
            bo.TxtSearch = txtSearch.Text;
            dt = new DataTable();
            dt = bl.Search(bo);
            dc = new DataTable();
            dc = bl.SearchChart(bo);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Chart1.DataSource = dc;
                Chart1.DataBind();
            }
            
        }

        protected void filapply_Click(object sender, EventArgs e)
        {
            bo.Qualification = Qualificaton.Text;
            bo.Gender = Gender.Text;
            bo.Stream = Streams.Text;
            dt = new DataTable();
            dt = bl.Fil(bo);
            dc = new DataTable();
            dc = bl.Filchart(bo);
            if (dt.Rows.Count > 0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
                Chart1.DataSource = dc;
                Chart1.DataBind();
            }
        }

        protected void GridView1_RowCommand(object sender, System.Web.UI.WebControls.GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Report")
            {
             Label RegisterNo = GridView1.Rows[Convert.ToInt32(e.CommandArgument)].FindControl("RegisterNo") as Label;
             bo.RegisterNo = RegisterNo.Text;
             Session["regno"] = RegisterNo.Text;
             Response.Redirect("Report.aspx");
            }
        }

        
    }
}