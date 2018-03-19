using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class appointment : System.Web.UI.Page
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
        string sql = "select doctorname from doctorinfo where speciality='" + ddlspeciality.SelectedItem.ToString() + "'";
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
        DayOfWeek currday = DateTime.Now.DayOfWeek;
        string sql = "select starttime,endtime from timeslotinfo where day='" + currday + "' and doctorname='" + ddldoctorname.SelectedItem.ToString() + "'";

        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        da.Fill(ds, "a");

        ddltimeslot.Items.Add("--Select--");
        DataTable dt = ds.Tables["a"];
        foreach (DataRow r in dt.Rows)
        {
            ddltimeslot.Items.Add(r["starttime"].ToString() + "--" + r["endtime"].ToString());
        }
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (ddlspeciality.Text == "")
        {
            lblmsg.Text = "Select Speciality";
            ddlspeciality.Focus();
            return;

        }
        if (ddldoctorname.Text == "")
        {
            lblmsg.Text = "Select Doctor Name";
            ddldoctorname.Focus();
            return;

        }
        if (ddltimeslot.Text == "")
        {
            lblmsg.Text = "Select Time Slot";
            ddltimeslot.Focus();
            return;

        }
        if (txtpatientname.Text == "")
        {
            lblmsg.Text = "Enter Patient Name";
            txtpatientname.Focus();
            return;

        }
        if (txtaddress.Text == "")
        {
            lblmsg.Text = "Enter the Address";
            txtaddress.Focus();
            return;

        }
        if (txtmobileno.Text == "")
        {
            lblmsg.Text = "Enter the Mobile No.";
            txtmobileno.Focus();
            return;

        }
        if (radioapptype.Text == "")
        {
            lblmsg.Text = "Select App Type";
            radioapptype.Focus();
            return;

        }
        // database saving
        string sql = "insert into appointmentinfo(speciality,doctorname,timeslot,patientname,address,mobileno,apptype,entrydate,activestatus)values('" + ddlspeciality.Text + "','" + ddldoctorname.Text + "','" + ddltimeslot.Text + "','" + txtpatientname.Text + "','" + txtaddress.Text + "'," + txtmobileno.Text + ",'" + radioapptype.Text + "','" + DateTime.Now.ToString() + "',1)";
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
            lblmsg.Text = "Not submited";
        }
        else
        {
            sql = "select regno from appointmentinfo where id=(select max(id) from appointmentinfo)";

            SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");


            DataTable dt = ds.Tables["a"];
            foreach (DataRow r in dt.Rows)
            {
                lblmsg.Text = "Your reg no is " + r["regno"].ToString();
                lblmsg.ForeColor = System.Drawing.Color.Green;

            }
        }
    }
    protected void ddltimeslot_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}