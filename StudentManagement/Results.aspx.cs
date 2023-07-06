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
    public partial class Results : System.Web.UI.Page
    {
        DataTable dt;
        BO bo = new BO();
        BL bl = new BL();
        protected void Page_Load(object sender, EventArgs e)
        {
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