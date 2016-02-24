using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Chat_Project
{
    public partial class frm_login1 : System.Web.UI.Page
    {
        Utility uti = new Utility();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            dt.Merge(uti.Login("sp_Login", txt_email.Text.ToString().Trim(), txt_password.Text.ToString().Trim()));

            //Session["ssUsername"] = "0";
            //Session["ssPassword"] = "1";

            string CheckLogin = dt.Rows[0]["ID"].ToString().Trim();

            if (CheckLogin == "False")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('อีเมลหรือพาสเวิร์ดผิดพลาด')", true);
            }
            else
            {
                Session["ssShowName"] = dt.Rows[0]["Fullname"].ToString().Trim();
                Session["ID"] = dt.Rows[0]["ID"].ToString().Trim();
                Response.Redirect("frm_sidein.aspx");   
            }
        }
    }
}