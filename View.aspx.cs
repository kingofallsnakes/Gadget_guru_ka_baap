using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class View : System.Web.UI.Page
{
    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            string idd = Request.QueryString["idd"].ToString();
            IDT = IAdapter.ITEM_SELECT_BUYIID(Convert.ToInt32(idd));

            lblname.Text = IDT.Rows[0]["iname"].ToString();
            lbldetil.Text = IDT.Rows[0]["detail"].ToString();
            lblprice.Text = IDT.Rows[0]["price"].ToString();
            lblqnt.Text = IDT.Rows[0]["aqnt"].ToString();
            Image3.ImageUrl = IDT.Rows[0]["image"].ToString();
            Image4.ImageUrl = IDT.Rows[0]["image"].ToString();
            Image5.ImageUrl = IDT.Rows[0]["image1"].ToString();
            Image6.ImageUrl = IDT.Rows[0]["image2"].ToString();
            lblqnt0.Text = IDT.Rows[0]["size"].ToString();
            IDT = IAdapter.Select_TOP4();

        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {

    }
    protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());
    }
    protected void DataList1_ItemCommand1(object source, DataListCommandEventArgs e)
    {
        Response.Redirect("View.aspx?idd=" + e.CommandArgument.ToString());

    }
}