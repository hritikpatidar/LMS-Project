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

public partial class Add_Leave : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblAddUpdateLeave.Text = "Add";
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                lblAddUpdateLeave.Text = "Update";
                loadDataForEdit();
            }
        }
    }
    private void loadDataForEdit()
    {
        string query = "select * from [leaves] where id =" + Request.QueryString["id"] + "";

        DataSet ds = db.GetData(query);
        DataTable dt = ds.Tables[0];

        txtleaveType.Text = dt.Rows[0]["LeaveType"].ToString();
        txtToDate.Text = dt.Rows[0]["ToDate"].ToString();
        TextFromDate.Text = dt.Rows[0]["FromDate"].ToString();
        txtDescription.Text = dt.Rows[0]["Description"].ToString();
        
        
        Textempid.Text = dt.Rows[0]["empId"].ToString();
       



    }
    protected void buttonClick(object sender, EventArgs args)
    {
        string name = "hello";

    }
    public void Btn_SubmitLeave(object sender, EventArgs e)
    {

        if (Request.QueryString["id"] != null)
        {
            string query = "update leaves set LeaveType = '" + txtleaveType.Text + "',ToDate='" + txtToDate.Text + "',FromDate='" + TextFromDate.Text + "',Description='" + txtDescription.Text + "',empId='" + Textempid.Text + "' where id='" + Request.QueryString["id"] + "';";
            db.ExecuteQuery(query);
            Response.Redirect("ManageLeave.aspx");
        }
        else
        {
            string query = "INSERT INTO [leaves] VALUES ('" + txtleaveType.Text + "','" + txtToDate.Text + "','" + TextFromDate.Text + "','" + txtDescription.Text + "',null,null,null,0,0,'" + Textempid.Text + "')";
            db.ExecuteQuery(query);
        }
    }
}
