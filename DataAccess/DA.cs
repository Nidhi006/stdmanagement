using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using System.Configuration;
using BussinessObjects;
using System.Web;



namespace DataAccess
{
    public class DA
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ToString());
        public int InsertData(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spInsert", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FirstName", ObjBO.FirstName);
                cmd.Parameters.AddWithValue("@LastName", ObjBO.LastName);
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                cmd.Parameters.AddWithValue("@Email", ObjBO.Email);
                cmd.Parameters.AddWithValue("@Mobile", ObjBO.Mobile);
                cmd.Parameters.AddWithValue("@Gender", ObjBO.Gender);
                cmd.Parameters.AddWithValue("@DOB", ObjBO.DOB);
                cmd.Parameters.AddWithValue("@FatherName", ObjBO.FatherName);
                cmd.Parameters.AddWithValue("@MotherName", ObjBO.MotherName);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Dispose();
                return result;
            }
            catch
            {
                throw;
            }
        }
        public int AcademicDetails(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spAcademic", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Qualification", ObjBO.Qualification);
                cmd.Parameters.AddWithValue("@Stream", ObjBO.Stream);
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                cmd.Parameters.AddWithValue("@Institute", ObjBO.Institute);
                cmd.Parameters.AddWithValue("@Duration", ObjBO.Duration);
                cmd.Parameters.AddWithValue("@Total", ObjBO.Total);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Dispose();
                return result;
            }
            catch
            {
                throw;
            }
        }

        public int Marks(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spMarks", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                cmd.Parameters.AddWithValue("@SubName", ObjBO.SubName);
                cmd.Parameters.AddWithValue("@SubMarks", ObjBO.SubMarks);
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Dispose();
                return result;
            }
            catch
            {
                throw;
            }
        }

        public int OtherDetails(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spOther", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@StudID", ObjBO.StudID);
                cmd.Parameters.AddWithValue("@Tech", ObjBO.Tech);
                cmd.Parameters.AddWithValue("@NonTech", ObjBO.NonTech);
                cmd.Parameters.AddWithValue("@AOI", ObjBO.AOI);
                
                con.Open();
                int result = cmd.ExecuteNonQuery();
                con.Dispose();
                return result;
            }
            catch
            {
                throw;
            }
        }

        public DataTable login(BO ObjBO)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("splogin", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", ObjBO.Email);
                cmd.Parameters.AddWithValue("@DOB", ObjBO.DOB);
                con.Open();
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable Alogin(BO ObjBO)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("spAlogin", con);
                cmd.CommandType = System.Data.CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Email", ObjBO.Email);
                cmd.Parameters.AddWithValue("@DOB", ObjBO.DOB);
                con.Open();
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable showData()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spshowData", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable Chartdata()
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spchartdata", con);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable Bind(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spBind", con);
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable fil(BO ObjBO)
        {
            try
            {
                
                SqlCommand cmd = new SqlCommand("spfil", con);
                cmd.Parameters.AddWithValue("@Qualfication", ObjBO.Qualification);
                cmd.Parameters.AddWithValue("@Stream", ObjBO.Stream);
                cmd.Parameters.AddWithValue("@Gender", ObjBO.Gender);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable filchart(BO ObjBO)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("spfil", con);
                cmd.Parameters.AddWithValue("@Qualfication", ObjBO.Qualification);
                cmd.Parameters.AddWithValue("@Stream", ObjBO.Stream);
                cmd.Parameters.AddWithValue("@Gender", ObjBO.Gender);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable search(BO ObjBO)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("spsearch", con);
                cmd.Parameters.AddWithValue("@TxtSearch", ObjBO.TxtSearch);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public DataTable searchchart(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spsearch", con);
                cmd.Parameters.AddWithValue("@TxtSearch", ObjBO.TxtSearch);
                con.Open();
                cmd.CommandType = CommandType.StoredProcedure;
                DataTable dt = new DataTable();
                SqlDataAdapter adapt = new SqlDataAdapter(cmd);
                adapt.Fill(dt);
                return dt;
            }
            catch
            {
                throw;
            }
        }
        public int update(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spupdate", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@FirstName", ObjBO.FirstName);
                cmd.Parameters.AddWithValue("@LastName", ObjBO.LastName);
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                cmd.Parameters.AddWithValue("@Email", ObjBO.Email);
                cmd.Parameters.AddWithValue("@Mobile", ObjBO.Mobile);
                cmd.Parameters.AddWithValue("@Gender", ObjBO.Gender);
                cmd.Parameters.AddWithValue("@Qualification", ObjBO.Qualification);
                cmd.Parameters.AddWithValue("@Stream", ObjBO.Stream);
                cmd.Parameters.AddWithValue("@Total", ObjBO.Total);
                int result = cmd.ExecuteNonQuery();
                return result;

            }
            catch
            {
                throw;
            }
        }
        public int updte(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spupdte", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                cmd.Parameters.AddWithValue("@FirstName", ObjBO.FirstName);
                cmd.Parameters.AddWithValue("@LastName", ObjBO.LastName);
                cmd.Parameters.AddWithValue("@Email", ObjBO.Email);
                cmd.Parameters.AddWithValue("@Mobile", ObjBO.Mobile);
                cmd.Parameters.AddWithValue("@Gender", ObjBO.Gender);
                int result = cmd.ExecuteNonQuery();
                con.Close();
                return result;

            }
            catch
            {
                throw;
            }
        }
        public int delete(BO ObjBO)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("spdelete", con);
                cmd.CommandType = CommandType.StoredProcedure;
                con.Open();
                cmd.Parameters.AddWithValue("@RegisterNo", ObjBO.RegisterNo);
                /*SqlCommand cmd = new SqlCommand("Delete from UserDetails where ID=" + Convert.ToInt32(id.Text), con);*/
                int results = cmd.ExecuteNonQuery();
                con.Close();
                return results;
            }
            catch
            {
                throw;
            }
        }
    }
}
