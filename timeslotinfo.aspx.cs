using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class timeslotinfo : System.Web.UI.Page
{
    //GD
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string sql = "select distinct(speciality) from doctorinfo order by speciality";
            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            ddlspeciality.Items.Add("--Select--");
            DataTable dt = ds.Tables["a"];
            foreach (DataRow r in dt.Rows)
            {
                ddlspeciality.Items.Add(r["speciality"].ToString());
            }
        }
    }
    protected void ddlspeciality_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select doctorname from doctorinfo order by doctorname";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        ddlspeciality.Items.Clear();
        ddlspeciality.Items.Add("--Select--");
        DataTable dt = ds.Tables["a"];
        foreach (DataRow r in dt.Rows)
        {
            ddldoctorname.Items.Add(r["doctorname"].ToString());
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string sql = "insert into timeslotinfo(speciality,doctorname,day,starttime,endtime,patient,entrydate,activestatus)values('" + ddlspeciality.Text + "','" + ddldoctorname.Text + "','" + ddlday.Text + "','" + ddlstartime.Text + "','" + ddlendtime.Text + "'," + txtpatient.Text + ",'" + DateTime.Now.ToString() + "',1)";
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
            lblmsg.Text = "Not Saved";
        }
        else
        {
            lblmsg.Text = "doctor timeslot information succesfully Saved";
        }
    }
    protected void ddldoctorname_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}