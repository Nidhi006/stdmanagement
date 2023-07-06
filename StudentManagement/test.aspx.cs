using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagement
{
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
       
    
        protected void Button1_Click(object sender, EventArgs e)
        {
            localhost.WebService1 age = new localhost.WebService1();
            int day = int.Parse(TextBox1.Text.ToString());
            int month = int.Parse(TextBox2.Text.ToString());
            int year = int.Parse(TextBox3.Text.ToString());
            int a = age.converttodaysweb(day, month, year);
            Label1.Text = a.ToString() + " " + "days old";
        }
    }
}