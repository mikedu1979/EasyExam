<%@ Page Language="c#" Inherits="EasyExam.Login" CodeFile="Login.aspx.cs" %>
<HTML>
	<HEAD>
		<TITLE>����ѧϰ�뿼��ϵͳ V1.1</TITLE>
		<meta name="vs_showGrid" content="False">
		<META http-equiv="Content-Type" content="text/html; charset=gb2312">
	
			<script language="JavaScript">
				window.moveTo(0,0);
				window.resizeTo(screen.availWidth,screen.availHeight);
			</script>
			<style>
			td{font-size:9pt}
			</style>
	</HEAD>
	<BODY  bgcolor="#ffffff" leftMargin="0"  topMargin="0" scroll="yes">
		<FORM id="login" method="post" runat="server">
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <p>&nbsp;</p>
		  <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="2491d2">
            <tr>
              <td align="center" bgcolor="#FFFFFF"><img src="Images/zxdt.jpg" width="576" height="78"></td>
            </tr>
            <tr>
              <td><br>
                <TABLE 
							width="400" height="238" border="0" align="center" cellPadding="0" cellSpacing="0" bgcolor="#FFFFFF">
                <TR>
                  <TD align="center" width="400" height="80" colSpan="2" valign="top"><img src="Images/yhdl.jpg" width="400" height="47"></TD>
                </TR>
                <TR>
                  <TD align="right" width="159" height="25"><span style="FONT-SIZE: 9pt">��&nbsp;�ţ�</span> </TD>
                  <TD width="254" height="28"><asp:textbox id="LoginID" runat="server" Width="128px" Font-Size="9pt"></asp:textbox>
                      <asp:requiredfieldvalidator id="LoginIDRequiredFieldValidator" runat="server" Width="88px" controlToValidate="LoginID"
										errormessage="�ʺŲ���Ϊ�գ�" display="None" Font-Size="9pt"> �ʺŲ���Ϊ�գ�</asp:requiredfieldvalidator></TD>
                </TR>
                <TR>
                  <TD align="right" width="159" colSpan="1" height="25" rowSpan="1"><span style="FONT-SIZE: 9pt">��&nbsp;�룺</span> </TD>
                  <TD width="254" height="25"><asp:textbox id="UserPwd" runat="server" Width="128px" TextMode="Password" Font-Size="9pt"></asp:textbox></TD>
                </TR>
                <TR>
                  <TD align="center" width="400" colSpan="2" height="47"><asp:button id="ButLogin" runat="server" Text="�� ¼" Font-Size="9pt" CssClass="button" onclick="ButLogin_Click"></asp:button>
                    &nbsp;&nbsp;
                    <asp:button id="ButRegist" runat="server" Text="ע ��" CausesValidation="False" Font-Size="9pt"
										Enabled="False" CssClass="button"></asp:button></TD>
                </TR>
                <TR>
                  <TD align="center" width="400" colSpan="2" height="58"><FONT face="����">��ʾ��Ϊʹϵͳ�������У�����ʱ�����������������</FONT></TD>
                </TR>
              </TABLE>
                  <br>
              <asp:validationsummary id="ErrorSummary" Width="93px" DisplayMode="List" Height="32px" ForeColor="Black"
							ShowMessageBox="True" Font-Bold="True" ShowSummary="False" Runat="server" HeaderText=""></asp:validationsummary></td>
            </tr>
          </table>
		</FORM>
	</BODY>
</HTML>
