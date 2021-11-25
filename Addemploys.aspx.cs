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

public partial class Addemploys : System.Web.UI.Page
{
    DbConnection db = new DbConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        lblAddUpdateemp.Text = "Add";
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
                lblAddUpdateemp.Text = "Update";
                loadDataForEdit();
            }
        }
    }

    private void loadDataForEdit()
    {
        string query = "select * from [employees] where EmployeeId =" + Request.QueryString["id"] + "";

        DataSet ds = db.GetData(query);
        DataTable dt = ds.Tables[0];

        TextEmpid.Text = dt.Rows[0]["EmpId"].ToString();
        txtFirstName.Text = dt.Rows[0]["FirstName"].ToString();
        txtLastName.Text = dt.Rows[0]["LastName"].ToString();
        txtEmailId.Text = dt.Rows[0]["EmailId"].ToString();
        txtpasswprd.Text = dt.Rows[0]["Password"].ToString();
        txtLastName.Text = dt.Rows[0]["Gender"].ToString();
        txtDob.Text = dt.Rows[0]["Dob"].ToString();
        txtDepartment.Text = dt.Rows[0]["Department"].ToString();
        txtAddress.Text = dt.Rows[0]["Address"].ToString();
        DropDownList1.SelectedValue = dt.Rows[0]["City"].ToString();
        DropDownList2.SelectedValue = dt.Rows[0]["Country"].ToString();
        txtPhonenumber.Text = dt.Rows[0]["Phonenumber"].ToString();
        //txtDepartment.Text = dt.Rows[0]["Status"].ToString();


      

    }

    protected void buttonClick(object sender, EventArgs args)
    {
        string name = "hello";

    }

    protected void btn_click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            string query = "update employees set EmpId= '" + TextEmpid.Text + "',FirstName='" + txtFirstName.Text + "',LastName='" + txtLastName.Text + "',EmailId='" + txtEmailId.Text + "',Password='" + txtpasswprd.Text + "',Gender='Male',Dob='" + txtDob.Text + "',Department='" + txtDepartment.Text + "',Address='" + txtAddress.Text + "',City='" + DropDownList1.SelectedValue + "',Country='" + DropDownList2.SelectedValue + "',Phonenumber='" + txtPhonenumber.Text + "',Status='123' where EmployeeId='" + Request.QueryString["id"] + "';";
            db.ExecuteQuery(query);
            Response.Redirect("ManageEmployees.aspx");
        }
        else
        {
            string query = "insert into [employees] values ('" + TextEmpid.Text + "','" + txtFirstName.Text + "','" + txtLastName.Text + "','" + txtEmailId.Text + "','" + txtpasswprd.Text + "','Male','" + txtDob.Text + "','" + txtDepartment.Text + "','" + txtAddress.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + txtPhonenumber.Text + "','123')";
            db.ExecuteQuery(query);
        }


        
    }
}
