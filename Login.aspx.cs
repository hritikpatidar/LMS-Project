using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        bool result = db.ExecuteScaler("Select count(*) from [admin] where UserName='"+txtUserName.Text+"' AND Password='"+txtPassword.Text+"'");
        if (result)
        {
            Response.Redirect("Home.aspx");
        }
       
    }
}
