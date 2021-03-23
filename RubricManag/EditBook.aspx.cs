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
	/// EditBook ��ժҪ˵����
	/// </summary>
	public partial class EditBook : System.Web.UI.Page
	{
		protected string strSectionID;
        public string scontent;


        
		PublicFunction ObjFun=new PublicFunction();

		#region//************��ʼ����Ϣ*********
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

		#region Web ������������ɵĴ���
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: �õ����� ASP.NET Web ���������������ġ�
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// �����֧������ķ��� - ��Ҫʹ�ô���༭���޸�
		/// �˷��������ݡ�
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

		#region//*********�ύ�½���Ϣ***********
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
		//		if (Fileupload1.HasFile & Fileupload1.PostedFile != null)//�ж��ϴ��ļ��Ƿ�Ϊ��
		//		{
		//			HttpPostedFile file = Fileupload1.PostedFile;
		//			pdf = new byte[file.ContentLength];//����һ���ļ����ȵ��ֽ�����
		//			file.InputStream.Read(pdf, 0, file.ContentLength);//���ļ�д��������ֽ�����pdf��

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
