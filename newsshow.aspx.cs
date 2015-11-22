using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsshow : System.Web.UI.Page
{


    public String BigClassName="";
    public String BigClassId="";
    public String SmallClassName="";
    public String Titles="";
    public String FbTimes="";
    public String Contents="";
    public String json_pre="";
    public String json_next = "";

    String bid = "";
    String sid = "";
    String nid = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        bid = "1";// Request.QueryString["bid"];
        sid = "10";// Request.QueryString["sid"];
        nid = "11";// Request.QueryString["nid"];

        SqlParameter[] spr = { new SqlParameter("@id",bid)};
        String sql = SqlHelper.GetSQLSelect_normal("top 1", "names", "fl", spr, "=", "", "id asc");
        DataTable dt = SqlHelper.GetTable(sql, CommandType.Text, spr);
        BigClassId = bid;
        BigClassName = dt.Rows[0]["names"].ToString();

        SqlParameter[] spr1 = { new SqlParameter("@id", sid) };
        sql = SqlHelper.GetSQLSelect_normal("top 1", "names", "fl", spr1, "=", "", "id asc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr1);
        SmallClassName = dt.Rows[0]["names"].ToString();

        SqlParameter[] spr2 = { new SqlParameter("@id", nid) };
        sql = SqlHelper.GetSQLSelect_normal("top 1", "titles,fbtimes,contents", "article", spr2, "=", "", "id asc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr2);
        Title = dt.Rows[0]["titles"].ToString();
        FbTimes = dt.Rows[0]["fbtimes"].ToString();
        Contents = dt.Rows[0]["contents"].ToString();

        SqlParameter[] spr3 = { new SqlParameter("@id", nid) };
        sql = SqlHelper.GetSQLSelect_normal("top 1", "titles,bclass,sclass,id", "article", spr3, ">", "", "id asc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr3);
        json_pre = Tools.BiuldJson("",dt);

        SqlParameter[] spr4 = { new SqlParameter("@id", nid) };
        sql = SqlHelper.GetSQLSelect_normal("top 1", "titles,bclass,sclass,id", "article", spr4, "<", "", "id desc");
        dt = SqlHelper.GetTable(sql, CommandType.Text, spr4);
        json_next = Tools.BiuldJson("", dt);
    }
}