using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using BussinessObjects;
using BussinessLogic;

namespace StudentManagement
{
    public partial class AcademicDetails : System.Web.UI.Page
    {
        BO ObjBO = new BO();
        BL ObjBL = new BL();
        protected void add_Click(object sender, EventArgs e)
        {
            int index = subjects.Controls.OfType<TextBox>().ToList().Count + 1;
            this.CreateTextBox("txtDynamic" + index);
        }

        public void CreateTextBox(string id)
        {
            int i;
            for (i = 0; i < Convert.ToInt32(subNo.Text); i++)
            {
                TextBox tb = new TextBox();
                tb.ID = "SubName" + i;
                subjects.Controls.Add(tb);
                tb.Attributes.Add("PlaceHolder", "SubName");
                TextBox txt = new TextBox();
                txt.ID = "Marks" + i;
                subjects.Controls.Add(txt);
                txt.Attributes.Add("PlaceHolder", "Marks");
                subjects.Controls.Add(new LiteralControl("<br>"));
            }
        }



        private void getValue(string Marks,string SubName, string ctrlType)
        {
            string[] ctrls = Request.Form.ToString().Split('&');
            int cnt = FindOccurence(Marks);
            if (cnt > 0)
            {
                for (int k = 0; k <= cnt; k++)
                {
                    for (int i = 0; i < ctrls.Length; i++)
                    {
                        if (ctrls[i].Contains(SubName + k.ToString() + "="))
                        {
                            if (ctrls[i+1].Contains(Marks + k.ToString() + "="))
                            {
                                string marks = ctrls[i+1].Split('=')[1];
                                string Subname = ctrls[i].Split('=')[1];
                                ObjBO.RegisterNo = Regno.Text;
                                ObjBO.SubName = Subname;
                                ObjBO.SubMarks = marks;
                                ObjBL.marks(ObjBO);
                                break;
                            }
                        }
                         

                    }
                }
            }
        }
        private int FindOccurence(string substr)
        {
            string reqstr = Request.Form.ToString();
            return ((reqstr.Length - reqstr.Replace(substr, "").Length));
        }
        

        protected void next_Click(object sender, EventArgs e)
        {
            ObjBO.Qualification = Qualificaton.Text;
            ObjBO.Stream = Streams.Text;
            ObjBO.RegisterNo = Regno.Text;
            ObjBO.Institute = Institute.Text;
            ObjBO.Duration = Duration.Text;
            ObjBO.Total = Total.Text;
           getValue("Marks","SubName", "TextBox");
            
            if (ObjBL.Academic(ObjBO) != 0)
            {
                Session["StudID"] = Regno.Text;
                ObjBO.StudID = this.Session["StudID"];
                Response.Redirect("OtherDetails.aspx");
            }
        }
    }
}