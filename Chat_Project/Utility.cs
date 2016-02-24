using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;




namespace Chat_Project
{
    
    public class Utility
    {
        string strcon = "Data Source=NONGOBEN\\SQLEXPRESS;Initial Catalog=ChatProject;Integrated Security=True";

        public SqlConnection con;
        public string _u_email = "";
        public string _u_password = "";
        public string _u_firstname = "";
        public string _u_lastname = "";
        DataTable dt;
        DataSet ds;
        SqlCommand cmd;
        SqlDataReader dr;
       
        public SqlConnection connectToDB()
        {
            con = new SqlConnection(strcon);
            con.Open();
            return con;
        }

        public DataTable InsertUser(string cmdtxt)
        {

            dt = new DataTable();

            cmd = new SqlCommand(cmdtxt, this.connectToDB());

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@value1", this._u_email);
            cmd.Parameters.AddWithValue("@value2", this._u_password);
            cmd.Parameters.AddWithValue("@value3", this._u_firstname);
            cmd.Parameters.AddWithValue("@value4", this._u_lastname);

            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dt.Load(dr);
            }
            
            return dt;
        }

        public DataTable Login(string procedure , string @value1 , string @value2)
        {
            dt = new DataTable();
            ds = new DataSet();
            cmd = new SqlCommand(procedure, this.connectToDB());
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@value1", @value1.ToString().Trim());
            cmd.Parameters.AddWithValue("@value2", @value2.ToString().Trim());
            cmd.ExecuteNonQuery();
            
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(ds);

            if(ds.Tables[0].Rows.Count > 0)
            {
                dt = ds.Tables[0];
            }

            return dt;
        }
    }
}

