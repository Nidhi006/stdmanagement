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
    public partial class User : System.Web.UI.Page
    {
        DataTable dt;
        BO bo = new BO();
        BL bl = new BL();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else
            {
                if (!IsPostBack)
                {
                    Bind();
                }
            }
        }
        protected void dl1_CancelCommand(object sender, DataListCommandEventArgs e)
        {
            dl1.EditItemIndex = -1;
            Bind();
        }
        protected void dl1_EditCommand(object sender, DataListCommandEventArgs e)
        {
            dl1.EditItemIndex = e.Item.ItemIndex;
            Bind();
        }
        public void Bind()
        {
           bo.RegisterNo = Session["id"].ToString();
            dt = new DataTable();
            dt = bl.bind(bo);
            if (dt.Rows.Count > 0)
            {
                dl1.DataSource = dt;
                dl1.DataBind();
            }
        }
        protected void dl1_updateCommand(object sender, DataListCommandEventArgs e)
        {
            int index = e.Item.ItemIndex;
            TextBox FirstName = dl1.Items[index].FindControl("First_Name") as TextBox;
            TextBox LastName = dl1.Items[index].FindControl("Last_Name") as TextBox;
            TextBox Email = dl1.Items[index].FindControl("Email") as TextBox;
            TextBox Mobile = dl1.Items[index].FindControl("Mobile") as TextBox;
            TextBox Gender = dl1.Items[index].FindControl("Gender") as TextBox;
            TextBox DOB = dl1.Items[index].FindControl("DOB") as TextBox;
            Label RegisterNo = dl1.Items[index].FindControl("RegisterNo") as Label;
           
            bo.FirstName = FirstName.Text;
            bo.LastName = LastName.Text;
            bo.Email = Email.Text;
            bo.Mobile = Mobile.Text;
            bo.Gender = Gender.Text;
            bo.RegisterNo = RegisterNo.Text;
            bl.Updte(bo);
            dl1.EditItemIndex = -1;
            Bind();
            
        }
            protected void Logout_Click(object sender, EventArgs e)
            {
             Session["id"] = null;
             Response.Cache.SetNoStore();
             Response.CacheControl = "no-cache";
             Session.Abandon();
             Session.Clear();
             Response.Cookies.Clear();
             Response.Redirect("login.aspx");
            }

        
    }
}