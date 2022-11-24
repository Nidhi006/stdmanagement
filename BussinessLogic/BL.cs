using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DataAccess;
using BussinessObjects;
namespace BussinessLogic
{
    public class BL
    {
        public int Personal(BO objBL)
        {
            try
            {
                DA ObjDA = new DA();
                return ObjDA.InsertData(objBL);
            }
            catch
            {
                throw;
            }
        }
        public int Academic(BO objBL)
        {
            try
            {
                DA ObjDA = new DA();
                return ObjDA.AcademicDetails(objBL);
            }
            catch
            {
                throw;
            }
        }
        public int marks(BO objBL)
        {
            try
            {
                DA ObjDA = new DA();
                return ObjDA.Marks(objBL);
            }
            catch
            {
                throw;
            }
        }

        public DataTable Login(BO objBL)
        {
            try
            {
                DA ObjDA = new DA();
                return ObjDA.login(objBL);
            }
            catch
            {
                throw;
            }
        }
        public DataTable ALogin(BO objBL)
        {
            try
            {
                DA ObjDA = new DA();
                return ObjDA.Alogin(objBL);
            }
            catch
            {
                throw;
            }
        }
        public int Other(BO objBL)
        {
            try
            {
                DA ObjDA = new DA();
                return ObjDA.OtherDetails(objBL);
            }
            catch
            {
                throw;
            }
        }

        public DataTable ShowData()
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.showData();
            }
            catch
            {
                throw;
            }
        }
        public DataTable chartdata()
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.Chartdata();
            }
            catch
            {
                throw;
            }
        }
        public DataTable bind(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.Bind(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public DataTable Fil(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.fil(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public DataTable Filchart(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.filchart(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public DataTable Search(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.search(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public DataTable SearchChart(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.searchchart(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public int Update(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.update(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public int Updte(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.updte(objUserBL);
            }
            catch
            {
                throw;
            }
        }
        public int Delete(BO objUserBL)
        {
            try
            {
                DA objUserDA = new DA();
                return objUserDA.delete(objUserBL);
            }
            catch
            {
                throw;
            }
        }
    }
}
