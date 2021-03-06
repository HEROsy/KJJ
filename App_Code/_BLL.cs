﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// _BLL 的摘要说明
/// </summary>
public class _BLL
{
    public _BLL()
    {

    }

    public int InsertNew(String title, String bc, String sc, String pic, String contents, DateTime fbtime)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@titles",title),
        new SqlParameter("@bclass",bc),
        new SqlParameter("@sclass",sc),
        new SqlParameter("@pic",pic),
        new SqlParameter("@contents",contents),
        new SqlParameter("@fbtimes",fbtime)
       };
        String sql = SqlHelper.GetSQLInsert_normal("article", spr);
        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);
    }

    public int UpNew(String title, String bc, String sc, String pic, String contents,String uid)
    {
        SqlParameter[] setspr = new SqlParameter[]{
        new SqlParameter("@titles",title),
        new SqlParameter("@bclass",bc),
        new SqlParameter("@sclass",sc),
        new SqlParameter("@pic",pic),
        new SqlParameter("@contents",contents)
       };
        SqlParameter[] wherespr = new SqlParameter[]{
        new SqlParameter("@id",uid)
        };

        String sql = SqlHelper.GetSQLUpdate_normal("article", setspr, wherespr, "=", "");
        return SqlHelper.ExcoutSQL_2Parmter(sql, CommandType.Text, setspr, wherespr);
    }

    public int UpSws(String name, String px, String pic, String contents, String uid)
    {
        SqlParameter[] setspr = new SqlParameter[]{
        new SqlParameter("@names",name),
        new SqlParameter("@px",px),
        new SqlParameter("@contents",contents),
        new SqlParameter("@pic",pic)
       };
        SqlParameter[] wherespr = new SqlParameter[]{
        new SqlParameter("@id",uid)
        };

        String sql = SqlHelper.GetSQLUpdate_normal("sws", setspr, wherespr, "=", "");
        return SqlHelper.ExcoutSQL_2Parmter(sql, CommandType.Text, setspr, wherespr);
    }

    public int UpPw(String pw,String id)
    {
        SqlParameter[] setspr = new SqlParameter[]{
        new SqlParameter("@pw",pw)
       };
        SqlParameter[] wherespr = new SqlParameter[]{
        new SqlParameter("@id",id)
        };

        String sql = SqlHelper.GetSQLUpdate_normal("admin", setspr, wherespr, "=", "");
        return SqlHelper.ExcoutSQL_2Parmter(sql, CommandType.Text, setspr, wherespr);
    }

    public int UpLawyer(String name, String px, String pic, String contents, String uid,String dw)
    {
        SqlParameter[] setspr = new SqlParameter[]{
        new SqlParameter("@names",name),
        new SqlParameter("@px",px),
        new SqlParameter("@contents",contents),
        new SqlParameter("@pic",pic),
        new SqlParameter("@pid",dw)
       };
        SqlParameter[] wherespr = new SqlParameter[]{
        new SqlParameter("@id",uid)
        };

        String sql = SqlHelper.GetSQLUpdate_normal("sws_ls", setspr, wherespr, "=", "");
        return SqlHelper.ExcoutSQL_2Parmter(sql, CommandType.Text, setspr, wherespr);
    }

    public DataTable GetNewClass()
    {
        String sql = SqlHelper.GetSQLSelect_normal("", "id,names,type,pid", "fl", null, "", "", "id asc");
        return SqlHelper.GetTable(sql, CommandType.Text, null);
    }

    public DataTable GetNews(SqlParameter[] spr)
    {
        String sql = "";
        if (spr == null)
        {
            sql = SqlHelper.GetSQLSelect_normal("", "id,titles,fbtimes,bclass,sclass", "article", spr, "", "", "id desc");
        }
        else
        {
            if (spr.Length == 1)
            {
                sql = SqlHelper.GetSQLSelect_normal("", "id,titles,fbtimes,bclass,sclass", "article", spr, "=", "", "id desc");
            }
            else if (spr.Length == 2)
            {
                sql = SqlHelper.GetSQLSelect_normal("", "id,titles,fbtimes,bclass,sclass", "article", spr, "=,=", "and", "id desc");
            }
        }


        return SqlHelper.GetTable(sql, CommandType.Text, spr);
    }

    public DataTable GetNews_one(String uid)
    {
        SqlParameter[] spr = new SqlParameter[] { 
        new SqlParameter("@id",uid)
        };
        String sql = "";
        sql = SqlHelper.GetSQLSelect_normal("", "id,pic,titles,bclass,sclass,contents", "article", spr, "=", "", "id desc");
       
        return SqlHelper.GetTable(sql, CommandType.Text, spr);
    }

    public DataTable GetAdmin_pw(String uid)
    {
        SqlParameter[] spr = new SqlParameter[] { 
        new SqlParameter("@id",uid)
        };
        String sql = "";
        sql = SqlHelper.GetSQLSelect_normal("", "id,pw", "admin", spr, "=", "", "id desc");

        return SqlHelper.GetTable(sql, CommandType.Text, spr);
    }

    public DataTable GetSws_one(String uid)
    {
        SqlParameter[] spr = new SqlParameter[] { 
        new SqlParameter("@id",uid)
        };
        String sql = "";
        sql = SqlHelper.GetSQLSelect_normal("", "*", "sws", spr, "=", "", "id desc");

        return SqlHelper.GetTable(sql, CommandType.Text, spr);
    }

    public int DeleteNew(String did)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@did",did)
        };
        String sql = "delete from article where id=@did";
        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);

    }

    public int DeleteSws(String did)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@did",did)
        };
        String sql = "delete from sws where id=@did";
        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);

    }

    public int DeleteLawyer(String did)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@did",did)
        };
        String sql = "delete from sws_ls where id=@did";
        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);

    }

    public int AddSws(String name, String px, String pic, String contents)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@names",name),
        new SqlParameter("@px",px),
        new SqlParameter("@contents",contents),
        new SqlParameter("@pic",pic)
        };
        String sql = SqlHelper.GetSQLInsert_normal("sws", spr);

        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);
    }

    public int AddLawyer(String name, String px, String pic, String contents,String dw)
    {
        SqlParameter[] spr = new SqlParameter[]{
        new SqlParameter("@names",name),
        new SqlParameter("@px",px),
        new SqlParameter("@contents",contents),
        new SqlParameter("@pic",pic),
        new SqlParameter("@pid",dw)
        };
        String sql = SqlHelper.GetSQLInsert_normal("sws_ls", spr);

        return SqlHelper.ExcoutSQL(sql, CommandType.Text, spr);
    }

    public DataTable GetSws()
    {
        String sql = SqlHelper.GetSQLSelect_normal("", "*", "sws", null, "", "", "px asc");
        return SqlHelper.GetTable(sql, CommandType.Text, null);
    }

    public DataTable GetLawyer(String swsid)
    {
        if (!swsid.Equals("-1"))
        {
            SqlParameter[] spr = new SqlParameter[]{
            new SqlParameter("@pid",swsid)
            };

            String sql = SqlHelper.GetSQLSelect_normal("", "pid,names,id,px", "sws_ls",spr, "=", "", "px asc");
            return SqlHelper.GetTable(sql, CommandType.Text, spr);
        }
        else
        {
            String sql = SqlHelper.GetSQLSelect_normal("", "pid,names,id,px", "sws_ls", null, "", "", "px asc");
            return SqlHelper.GetTable(sql, CommandType.Text, null);
        }

    }

    public DataTable GetLawyer_noe(String uid)
    {
        SqlParameter[] spr = new SqlParameter[] { 
        new SqlParameter("@id",uid)
        };
        String sql = "";
        sql = SqlHelper.GetSQLSelect_normal("", "*", "sws_ls", spr, "=", "", "id desc");

        return SqlHelper.GetTable(sql, CommandType.Text, spr);

    }

    public DataTable GetSwsList()
    {
        String sql = SqlHelper.GetSQLSelect_normal("", "id,names", "sws", null, "", "", "px asc");
        return SqlHelper.GetTable(sql, CommandType.Text, null);
    }

    public DataTable AdminLogin(String un,String pw)
    {
        SqlParameter[] spr = new SqlParameter[] { 
        new SqlParameter("@names",un),
        new SqlParameter("@pw",pw)
        };
        String sql = SqlHelper.GetSQLSelect_normal("", "*", "admin", spr, "=,=", "and", "id asc");
        return SqlHelper.GetTable(sql, CommandType.Text, spr);
    }
}