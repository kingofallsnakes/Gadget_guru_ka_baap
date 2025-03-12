using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_FEEDBACK : System.Web.UI.Page
{
    DS_Feed.FEEDBACKMSTR_SELECTDataTable FDT = new DS_Feed.FEEDBACKMSTR_SELECTDataTable();
    DS_FeedTableAdapters.FEEDBACKMSTR_SELECTTableAdapter FADAPTER = new DS_FeedTableAdapters.FEEDBACKMSTR_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        FDT = FADAPTER.SelectFeedback();
        GridView1.DataSource = FDT;
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}