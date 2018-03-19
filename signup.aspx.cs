using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class signup : System.Web.UI.Page
{
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        try
        {
            string sql = "insert into userinfo(fullname,loginid,password,address,pincode,mobileno,emailid,entrydate,activestatus)values('" + txtfullname.Text + "','" + txtloginid.Text + "','" + txtpassword.Text + "','" + txtaddress.Text + "'," + txtpincode.Text + "," + txtmobileno.Text + ",'" + txtemailid.Text + "','" + DateTime.Now.ToString() + "',0)";
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
                Response.Redirect("welcome.aspx");
            }
        }
        catch
        {
            lblmsg.Text = "**Please use another login name**   or  please fill all fields marked with * ";
        }
    }
}