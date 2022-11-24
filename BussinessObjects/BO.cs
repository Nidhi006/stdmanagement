using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
namespace BussinessObjects
{
    public class BO
    {
        private object _StudID;
        private string _RegisterNo;
        private string _FirstName;
        private string _LastName;
        private string _Email;
        private string _Mobile;
        private string _Gender;
        private string _DOB;
        private string _FatherName;
        private string _MotherName;
        private string _Qualification;
        private string _Stream;
        private string _Institute;
        private string _Duration;
        private string _Total;
        private string _SubName;
        private string _SubMarks;
        private string _Tech;
        private string _NonTech;
        private string _AOI;
        private string _TxtSearch;


        public string RegisterNo { get => _RegisterNo; set => _RegisterNo = value; }
        public string FirstName { get => _FirstName; set => _FirstName = value; }
        public string LastName { get => _LastName; set => _LastName = value; }
        public string Email { get => _Email; set => _Email = value; }
        public string Mobile { get => _Mobile; set => _Mobile = value; }
        public string Gender { get => _Gender; set => _Gender = value; }
        public string DOB { get => _DOB; set => _DOB = value; }
        public string FatherName { get => _FatherName; set => _FatherName = value; }
        public string MotherName { get => _MotherName; set => _MotherName = value; }
        public string Qualification { get => _Qualification; set => _Qualification = value; }
        public string Stream { get => _Stream; set => _Stream = value; }
        public string Duration { get => _Duration; set => _Duration = value; }
        public string Institute { get => _Institute; set => _Institute = value; }
        public string Total { get => _Total; set => _Total = value; }
        public string SubName { get => _SubName; set => _SubName = value; }
        public string SubMarks { get => _SubMarks; set => _SubMarks = value; }
        public string Tech { get => _Tech; set => _Tech = value; }
        public string NonTech { get => _NonTech; set => _NonTech = value; }
        public string AOI { get => _AOI; set => _AOI = value; }
        public object StudID { get => _StudID; set => _StudID = value; }
        public string TxtSearch { get => _TxtSearch; set => _TxtSearch = value; }
    }
}
