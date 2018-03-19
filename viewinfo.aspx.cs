using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewinfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("showuserinfo.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("showdoctorinfo.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("showtimeslotinfo.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Response.Redirect("showappoffline.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Response.Redirect("showapponline.aspx");
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Response.Redirect("showpatientinfo.aspx");
    }
}