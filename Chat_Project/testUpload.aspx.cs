using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Chat_Project
{
    public partial class testUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (this.fuDemo.HasFile)
            {
                fuDemo.SaveAs(Server.MapPath("~/Images/"+"11_"+ this.fuDemo.FileName));
                string fileName = "11_"+Path.GetFileName(this.fuDemo.PostedFile.FileName);
                
                Session["ImagePath"] = "Images/"+fileName;
                string test = Session["ImagePath"].ToString().Trim();

                //Some code to insert values in DataBase

                Response.Redirect("test2.aspx");
            }

        }
       
    }
}