<%@ Page language="c#" Inherits="EasyExam.PersonalInfo.ShowAnswer" CodeFile="ShowAnswer.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<head>
		<title>�鿴���</title>
		<meta content="Microsoft FrontPage 5.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../CSS/STYLE.CSS" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../JavaScript/Common.js"></script>
	    <style type="text/css">
            .style1
            {
                width: 35%;
            }
        </style>
	</head>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="1" width="95%" align="center" border="0">
				<tr>
					<td height="6"></td>
				</tr>
				<tr>
					<td align="center">
						<table cellSpacing="0" cellPadding="1" width="100%" align="center" border="0" style="LINE-HEIGHT: 200%">
							<tr>
								<td vAlign="bottom" width="20%"><font face="����"></FONT></td>
								<td vAlign="bottom" align="center" width="60%"><span id="lblTitle" style="FONT-WEIGHT: bold; FONT-SIZE: 14pt"><%=strPaperName%></span></td>
								<td vAlign="bottom" align="right" width="20%"><span id="lblSubTitle">�ܹ�<%=strTestCount%>
										�⹲<%=strPaperMark%>��</span></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td style="HEIGHT: 2px" bgColor="#0000ff" height="2"></td>
				</tr>
				<tr>
					<td align="center" style="HEIGHT: 20px" height="20"><span id="lblMessage">�ʺ�:<%=strLoginID%>&nbsp;&nbsp;����:<%=strUserName%>&nbsp;&nbsp;����ʱ��:<%=strExamTime%>&nbsp;&nbsp;ͨ������:<%=strPassMark%>&nbsp;&nbsp;�����÷�:<%=strTotalMark%></span></td>
				</tr>
				<tr>
					<td align="center">
						<table cellSpacing="0" cellPadding="1" width="100%" align="center" border="0" style="LINE-HEIGHT: 200%">
							<tr>
								<td vAlign="bottom" width="20%"><font face="����"></FONT></td>
								<td vAlign="bottom" align="center" class="style1">
									<asp:RadioButton id="RadioButAll" runat="server" Text="ȫ����ʾ" GroupName="ShowTest" Checked="True"
										AutoPostBack="True" oncheckedchanged="RadioButAll_CheckedChanged"></asp:RadioButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<asp:RadioButton id="RadioButWrong" runat="server" Text="������ʾ" GroupName="ShowTest" AutoPostBack="True" oncheckedchanged="RadioButWrong_CheckedChanged"></asp:RadioButton></td>
								<td vAlign="bottom" align="right" width="20%">
                                    <asp:Button class="lenButton" ID="btnRedo" runat="server" Text="��������" 
                                        Enabled="False" onclick="btnRedo_Click" />&nbsp;
                                    <INPUT class="lenButton" onclick="jscomExportTableToWord('tblPaper')" type="button" value="������Word">&nbsp;<INPUT class="button" onclick="window.print();" type="button" value="�� ӡ"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td bgColor="#cee7ff">
						<table id="tblPaper" cellSpacing="0" cellPadding="1" width="100%" align="center" bgColor="white"
							border="0">
                            <%=strPaperContent%>
						</table>
					</td>
				</tr>
				<tr>
					<td align="center"><input class="button" onclick="window.close();" type="button" value="�� ��" name="button1"></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>