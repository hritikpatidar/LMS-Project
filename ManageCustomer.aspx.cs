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

public partial class ManageCustomer : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        OnLoad();
    }
    private void OnLoad()
    {
        string query = "SELECT * FROM [CUSTOMER] as CUSTOMER";
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
    protected void MbtnUpdate_click(object sender, EventArgs e)
    {
        int rowIndex = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
        int id = Convert.ToInt16(GrdDept.DataKeys[rowIndex].Values["CUSTOMERID"].ToString());
        //GrdDept.DataKeys[0].Value[""].ToString();
        string h = "hello";
        Response.Redirect("AddCustomer.aspx?id=" + id + "");
        //Button EditButton = (Button)Department.Rows[rindex].FindControl("btnEdit");
    }

    protected void MbtnDelete_click(object sender, EventArgs e)
    {
        int rowIndex = ((GridViewRow)((Control)sender).NamingContainer).RowIndex;
        int id = Convert.ToInt16(GrdDept.DataKeys[rowIndex].Values["CUSTOMERID"].ToString());

        string query = "DELETE FROM CUSTOMER WHERE CUSTOMERID=" + id + "";

        db.ExecuteQuery(query);
        OnLoad();


    }
}
