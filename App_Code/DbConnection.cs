using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DbConnection
/// </summary>
public class DbConnection
{
    string connectionString;
    SqlConnection con;
    public DbConnection()
    {
        //
        // TODO: Add constructor logic here
        //
    }


    public void OpenConnection()
    {

        connectionString = "Data Source=DESKTOP-9PVJ84C\\SQLEXPRESS;Initial Catalog=LMSDB;Integrated Security=True";

        con = new SqlConnection(connectionString);

        //con.Open();
    }

    public void CloseConnection()
    {
        con.Close();
    }

    public bool ExecuteScaler(string query)
    {
        OpenConnection();
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();
        int result = (int)cmd.ExecuteScalar();
        if (result > 0)
        {
            return true;
        }
        return false;
    }

    public void ExecuteQuery(string query)
    {
        OpenConnection();
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();

        cmd.ExecuteNonQuery();
    }

    protected void btn_click(object sender, EventArgs e)
    { 
    
    }

    public DataSet GetData(string query)
    {
        OpenConnection();
        SqlCommand cmd = new SqlCommand(query, con);
        con.Open();

        SqlDataAdapter sdr = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();

        sdr.Fill(ds);
        return ds;

    }

   

   
}


