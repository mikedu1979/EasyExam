<%@ Page Language="c#" Inherits="EasyExam.RubricManag.EditBook" CodeFile="EditBook.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<html>
<head>
    <title>HTML编辑器</title>
    <link href="../CSS/themes/default/default.css" type="text/css" rel="stylesheet">
    <script charset="utf-8" src="../CSS/kindeditor.js"></script>
    <script charset="utf-8" src="../CSS/lang/zh_CN.js"></script>
    <script language="javascript">
        var editor;
        KindEditor.ready(function (K) {
            editor = K.create('textarea[name="sectioncontent"]', {
                allowFileManager: true,
                uploadJson: '../CSS/asp.net/upload_json.ashx',
                fileManagerJson: '../CSS/asp.net/file_manager_json.ashx'

            });
            K('input[name=getHtml]').click(function (e) {

                opener.HtmlEditorCallBack(editor.html());
                window.close();
            });
        });
        function GetHtmlEditorText() {
            editor.insertHtml(opener.SetHtmlEditorText());
        }

        function CheckForm() {
            document.all("sectioncontent").value = editor.html();



            return true;
        }
    </script>
    <link href="../CSS/STYLE.CSS" type="text/css" rel="stylesheet">
</head>
<body leftmargin="0" topmargin="0" rightmargin="0">
    <form id="Form1" onsubmit="return CheckForm()" method="post" runat="server">
        <TABLE id="Table1" style="WIDTH: 688px; BORDER-COLLAPSE: collapse; HEIGHT: 465px" cellSpacing="0"
				borderColorDark="#6699ff" cellPadding="0" align="center" borderColorLight="#6699ff"
				border="1">
				<TR>
					<td  colSpan="6">
                            <textarea id="content_1" name="sectioncontent" style="width:800px;height:400px;"><%=scontent%></textarea>
                           
					</td>
				</TR>
				<tr height="30">
					<td align="center" colSpan="6">
						<asp:button id="ButInput" runat="server" Text="提 交" CssClass="button" onclick="ButInput_Click"></asp:button>&nbsp;
						<INPUT class="button" onclick="window.close();" type="button" value="取 消" name="Button"></td>
				</tr>
			</TABLE>
      <%--  <asp:FileUpload ID="Fileupload1" runat="server"></asp:FileUpload>
        <asp:Button ID="Btnupload" runat="server" Text="上传" OnClick="Btnupload_Click" />
        <asp:Button ID="Btncancel" runat="server" Text="取消" />
        <asp:Label ID="alert" runat="server" />--%>
    </form>
</body>
</html>
