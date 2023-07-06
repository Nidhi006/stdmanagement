using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class Site3 : System.Web.UI.MasterPage
    {
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