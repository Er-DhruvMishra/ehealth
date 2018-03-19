using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string usr = Request.Cookies["loginname"].Value;
            lblmsg.Text = usr;
            Response.Redirect("home.aspx");
        }
        catch { }
    
    }
    protected void btnsignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("signup.aspx");
    }
    //GD
    SqlConnection cnn = new SqlConnection(@"Data Source=.\SQLEXPRESS;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True;User Instance=True");

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        string sql = "select activestatus from userinfo where loginid='" + txtloginid.Text + "' and password='" + txtpassword.Text + "'";
        SqlDataAdapter da = new SqlDataAdapter(sql, cnn);
        DataSet ds = new DataSet();
        try { da.Fill(ds, "a"); }
        catch
        {
            lblmsg.Text = "timeuot expired";
        }
        DataTable dt = ds.Tables["a"];
        if (ds.Tables["a"].Rows.Count > 0)
        {
            foreach (DataRow r in dt.Rows)
            {
                if (r["activestatus"].ToString() == "True")
                {
                    if (txtloginid.Text==null)
                    {
                        lblmsg.Text = "please enter your loginid";
                    }
                    else
                    {
                        HttpCookie co = new HttpCookie("loginname", txtloginid.Text);

                        if (CheckBox1.Checked == true)
                        {
                            Response.Cookies.Add(co);
                            Response.Redirect("home.aspx");
                        }
                        Response.Redirect("home.aspx");
                    }
                }
                else
                {
                    lblmsg.Text = "Access Denied, Contact to Admin";
                }
            }
        }
        else
        {
            lblmsg.Text = "Invalid loginid or password";
        }
    }
    protected void btnapp_Click(object sender, EventArgs e)
    {
        Response.Redirect("onlineappointment.aspx");
    }
}