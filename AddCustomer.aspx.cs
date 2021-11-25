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

public partial class AddCustomer : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

        lblAddUpdateCustomer.Text = "Add";
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                lblAddUpdateCustomer.Text = "Update";
                loadDataForEdit();
            }
        }

    }
        private void loadDataForEdit()
    {
        string query = "select * from [CUSTOMER] where CUSTOMERID =" + Request.QueryString["id"] + "";

        DataSet ds = db.GetData(query);
        DataTable dt = ds.Tables[0];

        textCustomerId.Text = dt.Rows[0]["CUSTOMERID"].ToString();
        txtCustomername.Text = dt.Rows[0]["CUSTOMERNAME"].ToString();
        txtAddress.Text = dt.Rows[0]["ADDRESS"].ToString();
        txtCity.SelectedValue = dt.Rows[0]["CITY"].ToString();
        txtCountry.SelectedValue = dt.Rows[0]["COUNTRY"].ToString();

    }

        public void btn_clickcustomer(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            string query = "update CUSTOMER set CUSTOMERID='" + textCustomerId.Text + "',CUSTOMERNAME= '" + txtCustomername.Text + "',ADDRESS= '" + txtAddress.Text + "' ,CITY='" + txtCity.SelectedValue + "',COUNTRY='" + txtCountry.SelectedValue + "' where CUSTOMERID='" + Request.QueryString["id"] + "';";
            db.ExecuteQuery(query);
            Response.Redirect("ManageCustomer.aspx");
        }
        else
        {
            string query = "insert into [CUSTOMER] values('" + textCustomerId.Text + "','" + txtCustomername.Text + "','" + txtAddress.Text + "','" + txtCity.SelectedValue + "','" + txtCountry.SelectedValue + "')";
            db.ExecuteQuery(query);
        }
    }

}

