using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BussinessObjects;
using BussinessLogic;
using System.Data.SqlClient;
using System.Configuration;


namespace StudentManagement
{
    public partial class login : System.Web.UI.Page
    {
        BO objbo = new BO();
        BL objbl = new BL();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void log_Click(object sender, EventArgs e)
        {
            objbo.Email=StudID.Text;
            objbo.DOB = Password.Text;
            DataTable dt = new DataTable();
            DataTable Adt = new DataTable();
            Adt = objbl.ALogin(objbo);
            dt = objbl.Login(objbo);
            if (Adt.Rows.Count > 0)
            {
                Response.Redirect("Admin.aspx");
            }
            else if (dt.Rows.Count > 0)
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
                SqlCommand cmd = new SqlCommand("select RegisterNo from PersonalDetails where Email = @Email", con);
                cmd.Parameters.AddWithValue("@Email", StudID.Text);
                con.Open();
                cmd.CommandType = System.Data.CommandType.Text;
                string id=cmd.ExecuteScalar().ToString();
                Session["ID"] = id;
                Response.Redirect("User.aspx");
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}