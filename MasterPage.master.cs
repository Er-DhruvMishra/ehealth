using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            string usr;
            usr = Request.Cookies["loginname"].Value;
            Label1.Text = "Welcome " + usr + "..............";
        }
        catch {
            Label1.Text = "Welcome guest";
        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("home.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        HttpCookie co = new HttpCookie("loginname");
        Response.Cookies.Add(co);
        co.Expires = DateTime.Now.AddDays(-1);
        Response.Redirect("login.aspx");
    }
}
