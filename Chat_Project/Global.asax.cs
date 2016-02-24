using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace Chat_Project
{
    public class Global : System.Web.HttpApplication
    {
        protected void Application_Start(object sender, EventArgs e)
        {
        }
        void Session_Start(object sender, EventArgs e)
        {
            Session["ID"] = "77";
            Session["ssShowName"] = "99";
        }
    }
}