using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class accountsetting : System.Web.UI.Page
{
    //GD
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string sql = "select loginid from userinfo order by loginid";
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            ddlloginid.Items.Add("--Select--");
            DataTable dt = ds.Tables["a"];
            foreach (DataRow r in dt.Rows)
            {
                ddlloginid.Items.Add(r["loginid"].ToString());
            }
        }
    }
    protected void btnupdate_Click(object sender, EventArgs e)
    {
        string sql = "";
        if (btnupdate.Text == "Activate User")
        {
            sql = "update userinfo set activestatus=1 where loginid='" + ddlloginid.SelectedItem.ToString() + "'";
        }
        else
        {
            sql = "update userinfo set activestatus=0 where loginid='" + ddlloginid.SelectedItem.ToString() + "'";
        }
        SqlCommand cm = new SqlCommand();
        cm.Connection = cnn;
        cm.CommandType = CommandType.Text;
        cm.CommandText = sql;
        int a = 0;
        cnn.Open();
        a = cm.ExecuteNonQuery();
        cnn.Close();
        if (a == 0)
        {
            lblmsg.Text = "Not Updated";
        }
        else
        {
            lblmsg.Text = "Updated";
        }
    }
    protected void ddlloginid_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select * from userinfo where loginid='" + ddlloginid.SelectedItem.ToString() + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        DetailsView1.DataSource = ds.Tables["a"];
        DetailsView1.DataBind();
        DataTable dt = ds.Tables["a"];

        foreach (DataRow r in dt.Rows)
        {
            if (r["activestatus"].ToString() == "True")
            {
                btnupdate.Text = "DeActivate User";
            }
            else
            {
                btnupdate.Text = "Activate User";
            }
        }
    }
}