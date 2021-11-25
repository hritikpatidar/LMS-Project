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

public partial class ManageEmployees : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        OnLoad();
    }

    private void OnLoad()
    {
        //throw new NotImplementedException();
        string query = "SELECT * FROM [employees] as Employees";
        DataSet ds = db.GetData(query);
        GrdDept.DataSource = ds.Tables[0];
        GrdDept.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {

        }
        catch (Exception ex)
        {
            Exception E = ex;
        }
    }
    protected void EbtnUpdate_click(object sender, EventArgs e)
    {
        int rowIndex = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
        int id = Convert.ToInt16(GrdDept.DataKeys[rowIndex].Values["EmployeeId"].ToString());
        //GrdDept.DataKeys[0].Value[""].ToString();
        string h = "hello";
        Response.Redirect("Addemploys.aspx?id=" + id + "");
        //Button EditButton = (Button)Department.Rows[rindex].FindControl("btnEdit");
    }

    protected void EbtnDelete_click(object sender, EventArgs e)
    {
        int rowIndex = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
        int id = Convert.ToInt16(GrdDept.DataKeys[rowIndex].Values["EmployeeId"].ToString());

        string query = "DELETE FROM employees WHERE EmployeeId=" + id + "";

        db.ExecuteQuery(query);
        OnLoad();


    }
}
