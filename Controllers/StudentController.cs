using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using System.Data.SqlClient;
using pramodAPI.Models;
using pramodAPI.Models.DL;
using pramodAPI.Models.PL;

namespace pramodAPI.Controllers
{
    public class StudentController : ApiController
    {
        DataTable dt;
        DataSet ds;
        DL DLOBJ;
        [HttpGet]
        public DataSet BindDropDown(int Ind = 0)
        {
            ds = new DataSet();
            DLOBJ = new DL();
            ds = DLOBJ.BindDropDown(Ind);
            return ds;
        }
        //[HttpGet]
        //public DataTable BindCollege(int Ind = 0)
        //{
        //    dt = new DataTable();
        //    OBJ = new DL();
        //    dt = OBJ.CollegeName(Ind);
        //    return dt;
        //}
        //[HttpGet]
        //public DataTable BindReletedCity(int Ind=0)
        //{
        //    dt = new DataTable();
        //    OBJ = new DL();
        //    dt = OBJ.ReletedCity(Ind);
        //    return dt;
        //}
        //[HttpGet]
        //public DataTable BindCategory(int Ind=0)
        //{
        //    dt = new DataTable();
        //    OBJ = new DL();
        //    dt = OBJ.ACategory(Ind);
        //    return dt;
        //}
        //[HttpGet]
        //public DataTable BindCource(int Ind=0)
        //{
        //    dt = new DataTable();
        //    OBJ = new DL();
        //    dt = OBJ.Cource(Ind);
        //    return dt;
        //}
      [HttpPost]
        public DataSet Save(PL OBJPL)
        {
            ds = new DataSet();
            DLOBJ = new DL();
            ds = DLOBJ.SaveRecord(OBJPL);
            return ds;
        }
      [HttpGet]
        public DataTable BindGrid(int Ind=0)
      {
          dt = new DataTable();
          DLOBJ = new DL();
          dt = DLOBJ.FillGrid(Ind);
          return dt;
      }
   [HttpPost]
        public DataTable LogFill(PLLog objpl)
      {
          dt = new DataTable();
          DLOBJ = new DL();
          dt = DLOBJ.loginfill(objpl);
          return dt;
      }
    }
}
