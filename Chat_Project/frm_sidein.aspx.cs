using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Chat_Project
{
    public partial class frm_sidein : System.Web.UI.Page
    {
       
        
        protected void Page_Load(object sender, EventArgs e)
        {
            #region เช็คLogin ว่าใส่ID PASS หรือยัง

            string CheckSS1 = Session["ID"].ToString().Trim();
            string CheckSS2 = Session["ssShowName"].ToString().Trim();

            if ((CheckSS1 == "77") && (CheckSS2 == "99"))
            {
                Response.Redirect("frm_main.aspx");
            }

            #endregion

            #region เช็คว่ารูปเป็นของใคร/อัพรูป ProFile
            string Showname = Session["ssShowName"].ToString().Trim();
            lbl_Username.Text = Showname.ToString().Trim();

            if (Session["ImagePath"] != null)
            {
                this.img_Profile.ImageUrl = Session["ImagePath"].ToString();
            }
            else
            {
                string pathfile = Server.MapPath("Images/");
                System.IO.DirectoryInfo dix = new System.IO.DirectoryInfo(pathfile);
                foreach (System.IO.FileInfo dx in dix.GetFiles())
                {
                    string sub = dx.ToString().Trim();
                    string subs = sub.Substring(0, 2);
                    if (subs == CheckSS1)
                    {
                        string pathFiles = "Images/" + sub;
                        this.img_Profile.ImageUrl = (pathFiles.ToString().Trim());
                        break;
                    }

                    else
                    {
                        this.img_Profile.ImageUrl = ("Images/default-avatar.png");
                    }
                }



            }

            #endregion
           
        }

        protected void btn_up_Click(object sender, EventArgs e)
        {
            this.ID = Session["ID"].ToString().Trim();
            if (this.fuDemo.HasFile)
            {
                fuDemo.SaveAs(Server.MapPath("~/Images/"+ this.ID +"_"+ this.fuDemo.FileName));
                string fileName = this.ID + "_" + Path.GetFileName(this.fuDemo.PostedFile.FileName);

                Session["ImagePath"] = "Images/" + fileName;

                //Some code to insert values in DataBase
            }
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["ID"] = "77";
            Session["ssShowName"] = "99";

            Response.Redirect("frm_main.aspx");
        }

        protected void btn_searchFriend_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
        }
    }
}