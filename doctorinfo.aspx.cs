using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class doctorinfo : System.Web.UI.Page
{
    //gd conn. string
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    string filename = FileUpload1.FileName;
                    lblimg.Text = "image is being uploaded";
                    FileUpload1.SaveAs(Server.MapPath("~/doctorimages/") + txtdoctorname.Text + ".jpg");
                    lblimg.Text = "image uploaded succesfully";
                }
                else
                {
                    lblimg.Text = "please use a jpg image only";
                }
            }
            catch (Exception ex)
            {
                lblimg.Text = "error : " + ex.Message;
            }
        }
        string sql = "insert into doctorinfo(doctorname,speciality,opdfee,address,pincode,mobileno,contactno,emailid,entrydate,activestatus)values('" + txtdoctorname.Text + "','" + ddlspeciality.Text + "'," + txtopdfee.Text + ",'" + txtaddress.Text + "'," + txtpincode.Text + "," + txtmobileno.Text + ",'" + txtcontactno.Text + "','" + txtemailid.Text + "','" + DateTime.Now.ToString() + "',1)";
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
            lblmsg.Text = "doctor information succesfully Saved";
        }
    }
    
    protected void txtdoctorname_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btngoto_Click(object sender, EventArgs e)
    {
        Response.Redirect("timeslotinfo.aspx");
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        Response.Redirect("doctorinfo.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        if (FileUpload1.HasFile)
        {
            try
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    string filename = FileUpload1.FileName;
                    lblimg.Text = "image is being uploaded";
                    FileUpload1.SaveAs(Server.MapPath("~/doctorimages/") + txtdoctorname.Text + ".jpg");
                    lblimg.Text = "image uploaded succesfully";
                }
                else
                {
                    lblimg.Text = "please use a jpg image only";
                }
            }
            catch (Exception ex)
            {
                lblimg.Text = "error : " + ex.Message;
            }
        }
    }
}