using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RubricManag_uploadpdf : System.Web.UI.Page
{

    protected string strSectionID;
    protected void Page_Load(object sender, EventArgs e)
    {
        strSectionID = Convert.ToString(Request["SectionID"]);
    }

    protected void Btnupload_Click(object sender, EventArgs e)
    {
        try
        {
            byte[] pdf = null;
            if (Fileupload1.HasFile & Fileupload1.PostedFile != null)//判断上传文件是否为空
            {
                HttpPostedFile file = Fileupload1.PostedFile;
                pdf = new byte[file.ContentLength];//创建一个文件长度的字节数组
                file.InputStream.Read(pdf, 0, file.ContentLength);//把文件写入二进制字节数组pdf中

            }

            //string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
            string connectionStr = ConfigurationSettings.AppSettings["strConn"];
            SqlConnection con = new SqlConnection(connectionStr);
            con.Open();
            //string sql = "insert into PDFUpload (pdfFile,FileName) values(@pdfFile,@FileName)";
            string sql = "update SectionInfo set SectionContent=@pdfFile where SectionID=" + strSectionID + "";
            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@pdfFile", pdf);
            //cmd.Parameters.AddWithValue("@FileName", Fileupload1.PostedFile.FileName);
            cmd.ExecuteNonQuery();
            alert.Text = "PDF文件上传成功！";
            con.Close();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}