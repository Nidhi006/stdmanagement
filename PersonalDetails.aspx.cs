using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessObjects;
using BussinessLogic;

namespace StudentManagement
{
    public partial class PersonalDetails : System.Web.UI.Page
    {
        BO ObjBO = new BO();
        BL ObjBL = new BL();
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void Next_Click(object sender, EventArgs e)
        {
            ObjBO.FirstName = FirstName.Text;
            ObjBO.LastName = LastName.Text;
            ObjBO.RegisterNo = Regno.Text;
            ObjBO.Email = Email.Text;
            ObjBO.Mobile = Mobile.Text;
            ObjBO.Gender = Gender.Text;
            ObjBO.DOB = Dob.Text;
            ObjBO.FatherName = Father.Text;
            ObjBO.MotherName = Mother.Text;
            if (ObjBL.Personal(ObjBO) != 0)
            {
                lbl1.Text = "Details Saved";
                Response.Redirect("AcademicDetails.aspx");
            }
            else
            {
                lbl1.Text = "Please Enter Correct details";
            }
        }
    }
}