using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessLogic;
using BussinessObjects;
namespace StudentManagement
{
    public partial class OtherDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            BO objbo = new BO();
            BL objbl = new BL();
            objbo.Tech = tech.Text;
            objbo.NonTech = NonTech.Text;
            objbo.AOI = AOI.Text;
            objbo.StudID = this.Session["StudID"];
            if (objbl.Other(objbo) != 0)
            {
                Label3.Text = "Successfully Saved";


            }
        }
    }
}