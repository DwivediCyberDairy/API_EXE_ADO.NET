using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using pramodAPI.Models;
//using pramodAPI.Models.PL;
//using pramodAPI.Models.DL;
namespace pramodAPI.Models.DL
{
    public class DL
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        DataSet ds;
        internal DataSet BindDropDown(int Ind = 0)
        {
            try
            {
                con = new SqlConnection();
                con = CommanClass.setSqlConnection();
                cmd = new SqlCommand("StudentDataOperation", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Ind", Ind);
                da = new SqlDataAdapter(cmd);
                ds = new DataSet();
                da.Fill(ds);
                return ds;

            }
            catch (Exception ex)
            {
                return ds;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
        //internal DataTable CollegeName(int Ind = 0)
        //{
        //    try
        //    {
        //        con = new SqlConnection();
        //        con = CommanClass.setSqlConnection();
        //        cmd = new SqlCommand("StudentDataOperation", con);
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.Parameters.AddWithValue("@Ind", Ind);
        //        da = new SqlDataAdapter(cmd);
        //        dt = new DataTable();
        //        da.Fill(dt);
        //        return dt;

        //    }
        //    catch (Exception ex)
        //    {
        //        return dt;
        //    }
        //    finally
        //    {
        //        con.Close();
        //        con.Dispose();
        //    }
        //}
        

        internal DataSet SaveRecord(PL.PL objpl)
        {
            con = new SqlConnection();
            con = CommanClass.setSqlConnection();
            cmd = new SqlCommand("StudentDataOperation", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ind",objpl.Ind);
            cmd.Parameters.AddWithValue("@StudentId",objpl.StudentId);
            cmd.Parameters.AddWithValue("@StudentName", objpl.StudentName);
            cmd.Parameters.AddWithValue("@Email", objpl.Email);
            cmd.Parameters.AddWithValue("@MobileNo", objpl.MobileNo);
            cmd.Parameters.AddWithValue("@Aadhar", objpl.AadharNo);
            cmd.Parameters.AddWithValue("@DOB", objpl.DOB);
            cmd.Parameters.AddWithValue("@StudentAddress", objpl.StudentAddress);
            cmd.Parameters.AddWithValue("@ReletedCity", objpl.ReletedCity);
            cmd.Parameters.AddWithValue("@CollegeName", objpl.CollegeName);
            cmd.Parameters.AddWithValue("@Category", objpl.Category);
            cmd.Parameters.AddWithValue("@Course", objpl.Course);
          //  cmd.Parameters.AddWithValue("@RegDT", objpl.RegDT);
            cmd.Parameters.AddWithValue("@StudentStatus", objpl.StudentStatus);
            cmd.Parameters.AddWithValue("@Remark", objpl.Remark);
            cmd.Parameters.AddWithValue("@IsDel", objpl.IsDel);
            cmd.Parameters.AddWithValue("@Fee", objpl.Fees);
            cmd.Parameters.AddWithValue("@PicName", objpl.PIC);
            cmd.Parameters.AddWithValue("@FolderName",objpl.FolderName);
            cmd.Parameters.AddWithValue("@DocName", objpl.DocName);
            //cmd.Parameters.AddWithValue("@UploadedDate", objpl.UploadedDate);
            cmd.Parameters.AddWithValue("@Passwords", objpl.Password);
            da = new SqlDataAdapter(cmd);
            ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
        //internal DataSet Update(PL.PL Objpl)
        //{
        //    con = new SqlConnection();

        //}

        internal DataTable FillGrid(int Ind=0)
        {
            con = new SqlConnection();
            con = CommanClass.setSqlConnection();
            cmd = new SqlCommand("StudentDataOperation", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ind", Ind);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
        internal DataTable loginfill(PLLog objpl)
        {
            con = new SqlConnection();
            con = CommanClass.setSqlConnection();
            cmd = new SqlCommand("StudentDataOperation", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@Ind",objpl.Ind);
            cmd.Parameters.AddWithValue("@Email", objpl.UserId);
            cmd.Parameters.AddWithValue("@Passwords", objpl.Password);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

    }
}