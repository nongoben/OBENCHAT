using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Net.Mail;
using System.Net;

namespace Chat_Project
{
    public partial class frm_login : System.Web.UI.Page
    {
        Utility uti = new Utility();

        protected void Page_Load(object sender, EventArgs e)
        {
         
        }

        protected void btn_regis1_Click(object sender, EventArgs e)
        {
            if ((txt_email.Text.Length != 0)&& (txt_FName.Text.Length != 0) && (txt_LName.Text.Length != 0) && (txt_password.Text.Length != 0))
            {
                #region  Code   
                char[] letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ123456789".ToCharArray();
                Random r = new Random();

                string Code;
                string randomString = "";
                for (int i = 0; i <= 5; i++)
                {
                    randomString += letters[r.Next(0, 35)].ToString().Trim();
                }

                Code = "Code : " + randomString;
                #endregion

                #region sendEmail
                MailMessage msg = new MailMessage();

                msg.From = new MailAddress("nonogben331@gmail.com");//เมลผู้ส่ง
                msg.To.Add(new MailAddress(txt_email.Text.ToString().Trim()));//เมลผู้รับ
                msg.Subject = "Verify Email by SnaBlack";//ชื่อsubject
                msg.Body = Code.ToString().Trim();
                msg.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.Credentials = new NetworkCredential("nongoben331@gmail.com", "avf5jp3yo0");//password
                smtp.Timeout = 20000;
                smtp.EnableSsl = true;
                smtp.Send(msg);
                #endregion


                Session["GenCode"] = randomString.ToString().Trim();

                txt_email.Text = string.Empty;
                txt_FName.Text = string.Empty;
                txt_LName.Text = string.Empty;
                txt_password.Text = string.Empty;
            }
            else
            {
                Response.Redirect("frm_main.aspx");
            }
        }

        protected void btn_insert_Click(object sender, EventArgs e)
        {
            uti._u_email = txt_email.Text.ToString().Trim();
            uti._u_password = txt_password.Text.ToString().Trim();
            uti._u_firstname = txt_FName.Text.ToString().Trim();
            uti._u_lastname = txt_LName.Text.ToString().Trim();



            if (txt_code.Text == Session["GenCode"].ToString().Trim())
            {

                DataTable dt = new DataTable();

                dt.Merge(uti.InsertUser("[sp_testInsert]"));
                if (dt.Rows.Count > 0)
                {
                    string result = dt.Rows[0]["Result"].ToString().Trim();
                    if (result.ToUpper() == "DONE".ToUpper().Trim())
                    {

                        Response.Redirect("frm_sidein.aspx");


                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('มีข้อมูลนี้อยู่ในระบบแล้ว')", true);
                     
                        
                    }

                }
            }
            else
            {
              
                ScriptManager.RegisterClientScriptBlock(this,this.GetType(), "alertMessage", "alert('กรุณาตรวจสอบโค๊ดยืนยันอีกครั้ง')", true);
               
            }
        }




    

























        }
}