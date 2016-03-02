using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;

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

            #region ตรวจสอบว่าใครแอดเพื่อนมา
            Utility uti = new Utility();
            uti.ShowNumberAddmeAndReceive("sp_ShowAddmeAndReceive", Session["ID"].ToString().Trim());
            if (uti.Rows > 0)
            {
                Label1.Text = uti.Rows.ToString();
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
            GridView2.Visible = false;
        }
        protected void btn_AddFriend_Click(object sender, EventArgs e)
        {

          
            //string FriendID = GridView1.Rows[0].Cells["u_id"].Text.ToString().Trim();
           
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int rowIndex = int.Parse(e.CommandArgument.ToString());
            string FriendID = (string)this.GridView1.DataKeys[rowIndex]["u_id"].ToString();
            GridView1.Visible = false;
            txt_searchFriend.Text = string.Empty;

            DataTable dt = new DataTable();
            Utility uti = new Utility();
            dt.Merge(uti.SelectDataProcedure("sp_InsertBuddy_Add", Session["ID"].ToString().Trim(), FriendID.ToString().Trim()));
            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GridView1.Visible = true;
            Utility uti = new Utility();
            DataTable dt = new DataTable();
            dt.Merge(uti.ShowAddmeAndReceive("sp_ShowAddmeAndReceive", Session["ID"].ToString().Trim()));
            int rowTB = dt.Rows.Count;
            string[] getBuddyID = new string[rowTB];
            for (int i = 0; i < rowTB; i++)
            {
                getBuddyID[i] += dt.Rows[i]["Buddylist_ID"].ToString().Trim();
                string getAr = getBuddyID[i];
            }

            string[] GetName = new string[rowTB];

            for (int i = 0; i < rowTB; i++)
            {
                string getAr = getBuddyID[i];
                dt = new DataTable();
                dt.Merge(uti.ShowAddmeAndReceive("sp_GetBuddyIDToShow", getAr));
                GetName[i] += dt.Rows[0]["name"].ToString().Trim();

            }

            GridView2.DataSource = GetName;
            GridView2.DataBind();
            GridView2.Visible = true;
           
        }

        protected void btn_AcceptFriend_Click(object sender, EventArgs e)
        {
           

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            Utility uti = new Utility();
            DataTable dt = new DataTable();
            string[] rowsGrid2 = new string[GridView2.Rows.Count];

            for (int i = 0; i < GridView2.Rows.Count; i++)
            {
                rowsGrid2[i] += GridView2.Rows[i].Cells[1].Text;
            }
           
            int RowIndex = int.Parse(e.CommandArgument.ToString());
            string test = Convert.ToString(RowIndex);

            string name = rowsGrid2[RowIndex];

            uti.SelectDataProcedure("sp_AcceptFriend", name.ToString().Trim(), Session["ID"].ToString().Trim());
            
        }

       
    }

}
