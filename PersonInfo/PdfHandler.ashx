<%@ WebHandler Language="C#" Class="PdfHandler" %>

using System;
using System.Collections.Generic;
using System.Web;
using System.IO;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Configuration;

public class PdfHandler : IHttpHandler
{

    //public void ProcessRequest (HttpContext context) {
    //    context.Response.ContentType = "text/plain";
    //    context.Response.Write("Hello World");
    //}

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }

    public void ProcessRequest(HttpContext context)
    {
        Int32 theID;
        if (context.Request.QueryString["SectionID"] != null)
            theID = Convert.ToInt32(context.Request.QueryString["SectionID"]);
        else
            throw new ArgumentException("no parameter specified");
        context.Response.ContentType = "Application/pdf";
        Stream strm = DisplayImage(theID);
        byte[] buffer = new byte[2048];
        int byteseq = strm.Read(buffer, 0, 2048);
        while (byteseq > 0)
        {
            context.Response.OutputStream.Write(buffer, 0, byteseq);
            byteseq = strm.Read(buffer, 0, 2048);
        }

        if (theID != 0)
        {
            LoadSectionData(theID);
        }
    }

    public Stream DisplayImage(int theID)
    {
        //string str = System.Configuration.ConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString;
        string strConn = "";
        strConn = ConfigurationSettings.AppSettings["strConn"];
        SqlConnection con = new SqlConnection(strConn);
        string sql = "SELECT SectionContent FROM [SectionInfo] where SectionID = @Doc_ID ";
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.Parameters.AddWithValue("Doc_ID", theID);
        con.Open();
        object theImg = cmd.ExecuteScalar();
        try
        {
            return new MemoryStream((byte[])theImg);
        }
        catch
        {

            return null;
        }
        finally
        {
            con.Close();
        }
    }

    private void LoadSectionData(int theID)
    {
        string strConn = "";
        strConn = ConfigurationSettings.AppSettings["strConn"];
        SqlConnection ObjConn = new SqlConnection(strConn);
        SqlConnection SqlConn = new SqlConnection(strConn);

        SqlCommand SqlCmd = null;
        SqlConn.Open();

        SqlCmd = new SqlCommand("update SectionInfo set BrowNumber=BrowNumber+1 where SectionID=" + theID + "", SqlConn);
        SqlCmd.ExecuteNonQuery();

        SqlConn.Dispose();
    }

}