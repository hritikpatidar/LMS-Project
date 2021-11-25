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

public partial class Department : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblAddUpdate.Text = "Add";
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                lblAddUpdate.Text = "Update";
                loadDataForEdit();
            }
        }
    }

    private void loadDataForEdit()
    {
        string query = "select * from [departments] where DepartmentId =" + Request.QueryString["id"] + "";

        DataSet ds = db.GetData(query);
        DataTable dt = ds.Tables[0];

        txtDepartmentName.Text = dt.Rows[0]["DepartmentName"].ToString();
        txtDepartmentShortName.Text = dt.Rows[0]["DepartmentShortName"].ToString();
        txtDepartmentCode.Text = dt.Rows[0]["DepartmentCode"].ToString();

    }

    public void button_dept(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            string query = "update departments set DepartmentName= '" + txtDepartmentName.Text + "',DepartmentShortName= '" + txtDepartmentShortName.Text + "' ,DepartmentCode='" + txtDepartmentCode.Text + "' where departmentId='" + Request.QueryString["id"] + "';";
            db.ExecuteQuery(query);
            Response.Redirect("ManageDepartment.aspx");
        }
        else
        {
            string query = "insert into [departments] values('" + txtDepartmentName.Text + "','" + txtDepartmentShortName.Text + "','" + txtDepartmentCode.Text + "',null)";
            db.ExecuteQuery(query);
        }
    }

}
