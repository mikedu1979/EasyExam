using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Configuration;

namespace EasyExam.RubricManag
{
	/// <summary>
	/// EditBook 的摘要说明。
	/// </summary>
	public partial class EditBook : System.Web.UI.Page
	{
		protected string strSectionID;
        public string scontent;


        
		PublicFunction ObjFun=new PublicFunction();

		#region//************初始化信息*********
		protected void Page_Load(object sender, System.EventArgs e)
		{
			strSectionID=Convert.ToString(Request["SectionID"]);

            string strConn = ConfigurationSettings.AppSettings["strConn"];
            SqlConnection SqlConn = new SqlConnection(strConn);
            SqlConn.Open();
            SqlCommand SqlCmd = new SqlCommand("select SectionContent from SectionInfo  where SectionID=" + strSectionID + "", SqlConn);
            scontent =  SqlCmd.ExecuteScalar().ToString();
            SqlConn.Close();
            SqlConn.Dispose();
                     
		}
		#endregion

		#region Web 窗体设计器生成的代码
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: 该调用是 ASP.NET Web 窗体设计器所必需的。
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// 设计器支持所需的方法 - 不要使用代码编辑器修改
		/// 此方法的内容。
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		#region//*********提交章节信息***********
		protected void ButInput_Click(object sender, System.EventArgs e)
		{
			string strConn=ConfigurationSettings.AppSettings["strConn"];
			SqlConnection SqlConn=new SqlConnection(strConn);
			SqlConn.Open();
			SqlCommand SqlCmd=new SqlCommand("update SectionInfo set SectionContent='"+ObjFun.getStr(ObjFun.CheckTestStr(Request["sectioncontent"].ToString()),8000)+"' where SectionID="+strSectionID+"",SqlConn);
			SqlCmd.ExecuteNonQuery();
			SqlConn.Close();
			SqlConn.Dispose();

			this.RegisterStartupScript("newWindow","<script language='javascript'>window.close();</script>");
		}
        #endregion

  //      protected void Btnupload_Click(object sender, EventArgs e)
  //      {
		//	try
		//	{
		//		byte[] pdf = null;
		//		if (Fileupload1.HasFile & Fileupload1.PostedFile != null)//判断上传文件是否为空
		//		{
		//			HttpPostedFile file = Fileupload1.PostedFile;
		//			pdf = new byte[file.ContentLength];//创建一个文件长度的字节数组
		//			file.InputStream.Read(pdf, 0, file.ContentLength);//把文件写入二进制字节数组pdf中

		//		}

		//		string connectionStr = System.Configuration.ConfigurationManager.ConnectionStrings["strConn"].ConnectionString;
		//		SqlConnection con = new SqlConnection(connectionStr);
		//		con.Open();
		//		string sql = "insert into PDFUpload (pdfFile,FileName) values(@pdfFile,@FileName)";
		//		SqlCommand cmd = new SqlCommand(sql, con);
		//		cmd.Parameters.AddWithValue("@pdfFile", pdf);
		//		cmd.Parameters.AddWithValue("@FileName", Fileupload1.PostedFile.FileName);
		//		cmd.ExecuteNonQuery();
		//		alert.Text = "file uploaded successfully";
		//		con.Close();

		//	}
		//	catch (Exception ex)
		//	{
		//		Response.Write(ex.Message);
		//	}
		//}
    }
}
