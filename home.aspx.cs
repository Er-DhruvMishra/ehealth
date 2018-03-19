using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("doctorinfo.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("accountsetting.aspx");
    }

    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("timeslotinfo.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("appointment.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("patientinfo.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("viewinfo.aspx");
    }
}