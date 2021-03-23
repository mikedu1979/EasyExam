<%@ Page language="c#" Inherits="EasyExam.RubricManag.HtmlEditor" CodeFile="HtmlEditor.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>HTML编辑器</title>
        <LINK href="../CSS/themes/default/default.css" type="text/css" rel="stylesheet">
        <script charset="utf-8" src="../CSS/kindeditor.js"></script>
		<script charset="utf-8" src="../CSS/lang/zh_CN.js"></script>
        	
		<script language="javascript">
		    var editor;
			KindEditor.ready(function(K) {
				editor = K.create('textarea[name="content"]', {
				    allowFileManager: true,
                     uploadJson : '../CSS/asp.net/upload_json.ashx',
                    fileManagerJson : '../CSS/asp.net/file_manager_json.ashx'
                    
	            });
	            K('input[name=getHtml]').click(function (e) {

	                opener.HtmlEditorCallBack(editor.html());
	                window.close();
	            });
            });
//			function ReturnText()
//			{
//				try
//				{
//				    opener.HtmlEditorCallBack(editor.html());
//				}catch(e){};
//				window.close();
//			}
			function GetHtmlEditorText()
			{
			    //EditorIframe.setHTML(opener.SetHtmlEditorText());
			    editor.insertHtml(opener.SetHtmlEditorText());
			}
		</script>
		
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0" onload="GetHtmlEditorText()">
    
		<form id="Form1" method="post" >
			<TABLE id="Table1" style="WIDTH: 475px; BORDER-COLLAPSE: collapse; HEIGHT: 304px" cellSpacing="0"
				borderColorDark="#6699ff" cellPadding="0" width="475" align="center" borderColorLight="#6699ff"
				border="1">
				<TR>
					<td width="520" colSpan="6">
                            <textarea id="content_1" name="content" style="width:800px;height:400px;visibility:hidden;"></textarea>
                           
					</td>
				</TR>
				<tr height="30">
					<td align="center" width="513" colSpan="6"><INPUT class="button"  type="button" value="提 交" name="getHtml">&nbsp;
						<INPUT class="button" onclick="window.close();" type="button" value="取 消" name="Button"></td>
				</tr>
			</TABLE>
		</form>
	</body>
</HTML>
<%--<IFRAME id="IFRAME1" style="WIDTH: 100%; HEIGHT: 288px" src="../Editor/Editor.aspx?SectionID=<%=strSectionID%>"
							frameBorder="0" scrolling="no"></IFRAME>--%>