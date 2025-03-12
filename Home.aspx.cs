using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Home : System.Web.UI.Page
{
    DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
    DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new DS_CATTableAdapters.CATEMST_SELECTTableAdapter();

    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();

    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();


            IDT = IAdapter.Select_TOP4();
            DataList1.DataSource = IDT;
            DataList1.DataBind();
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Session["name"] = "search";
        Response.Redirect("Search.aspx?name=" + txtsearch.Text);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        UDT = UAdapter.Seleect_FOR_LOGIN(txtuname.Text, txtupass.Text);
        if (UDT.Rows.Count > 0)
        {
            Session["uname"] = txtuname.Text;
            Session["fname"] = UDT.Rows[0]["name"].ToString();
            Session["lname"] = UDT.Rows[0]["surname"].ToString();
            Response.Redirect("User/Default.aspx");

        }
        else
        {

            lbll.Text = "Error !!!";
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
}
