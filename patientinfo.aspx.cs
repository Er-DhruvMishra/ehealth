using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class patientinfo : System.Web.UI.Page
{
    //GD
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string sql = "select distinct(speciality) from appointmentinfo order by speciality";
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
        string sql = "select doctorname from appointmentinfo where speciality='" + ddlspeciality.SelectedItem.ToString() + "'";
        ddldoctorname.Items.Clear();
        ddldoctorname.Items.Add("--Select--");
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        DataTable dt = ds.Tables["a"];
        foreach (DataRow r in dt.Rows)
        {
            ddldoctorname.Items.Add(r["doctorname"].ToString());
        }
    }
    protected void ddldoctorname_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select distinct(timeslot) from appointmentinfo where doctorname='" + ddldoctorname.SelectedItem.ToString() + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        ddltimeslot.Items.Clear();
        ddltimeslot.Items.Add("--Select--");
        DataTable dt = ds.Tables["a"];
        foreach (DataRow r in dt.Rows)
        {
            ddltimeslot.Items.Add(r["timeslot"].ToString());
        }
    }

    protected void ddltimeslot_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select regno from appointmentinfo where doctorname='" + ddldoctorname.SelectedItem.ToString() + "' and timeslot = '" + ddltimeslot.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        ddlregno.Items.Clear();
        ddlregno.Items.Add("--Select--");
        DataTable dt = ds.Tables["a"];
        foreach (DataRow r in dt.Rows)
        {
            ddlregno.Items.Add(r["regno"].ToString());
        }
    }
    protected void ddlregno_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sql = "select * from appointmentinfo where regno='" + ddlregno.SelectedItem.ToString() + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");
        DetailsView1.DataSource = ds.Tables["a"];
        DetailsView1.DataBind();
        string fee = "select opdfee from doctorinfo where doctorname='" + ddldoctorname.SelectedItem.ToString() + "' and speciality='" + ddlspeciality.SelectedItem.ToString() + "'";
        SqlDataAdapter daf = new SqlDataAdapter(fee, cnn);
        daf.Fill(ds, "f");
        DataTable dtf = ds.Tables["f"];
        foreach (DataRow r in dtf.Rows)
        {
            lblfee.Text = (r["opdfee"].ToString());
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string sql = "insert into patientinfo(speciality,doctorname,timeslot,regno,fathername,weight,height,age,bloodpressure,other,problem)values('" + ddlspeciality.Text + "','" + ddldoctorname.Text + "','" + ddltimeslot.Text + "','" + ddlregno.Text + "','" + txtfathername.Text + "','" + txtweight.Text + "','" + txtheight.Text + "','" + txtage.Text + "','" + txtbloodpressure.Text + "','" + chkother.SelectedItem + "','" + txtproblem.Text + "')";
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
            lblmsg.Text = "patient information saved";
        }
    }
}