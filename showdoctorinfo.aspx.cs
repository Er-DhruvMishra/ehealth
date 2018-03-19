using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class showdoctorinfo : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        string sql = "select * from doctorinfo order by doctorname";
        SqlDataAdapter da = new SqlDataAdapter(sql,cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        GridView1.DataSource = ds.Tables["a"];
        GridView1.DataBind();
    }
}