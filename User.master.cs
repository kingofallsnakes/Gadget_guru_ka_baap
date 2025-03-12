using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class User : System.Web.UI.MasterPage
{
    DS_USER.USER_SELECTDataTable UDT = new DS_USER.USER_SELECTDataTable();
    DS_USERTableAdapters.USER_SELECTTableAdapter UAdapter = new DS_USERTableAdapters.USER_SELECTTableAdapter();
  
    DS_CAT.CATEMST_SELECTDataTable CDT = new DS_CAT.CATEMST_SELECTDataTable();
    DS_CATTableAdapters.CATEMST_SELECTTableAdapter CAdapter = new DS_CATTableAdapters.CATEMST_SELECTTableAdapter();

    DS_AITEM.ITEM_SELECTDataTable IDT = new DS_AITEM.ITEM_SELECTDataTable();
    DS_AITEMTableAdapters.ITEM_SELECTTableAdapter IAdapter = new DS_AITEMTableAdapters.ITEM_SELECTTableAdapter();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            CDT = CAdapter.select();
            GridView1.DataSource = CDT;
            GridView1.DataBind();
            txtuname.Text = "";
            txtupass.Text = "";
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //Session["name"] = "search";
       // Response.Redirect("Search.aspx?name=" + txtsearch.Text);
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name="+e.CommandArgument.ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
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

          //  lblerror.Text = "Error !!!";
        }
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
    protected void txtsearch_TextChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand1(object sender, GridViewCommandEventArgs e)
    {
        Session["name"] = "cate";
        Response.Redirect("Search.aspx?name=" + e.CommandArgument.ToString());
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
}
