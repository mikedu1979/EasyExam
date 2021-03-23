<%@ Page Language="c#" Inherits="EasyExam.Login" CodeFile="Login.aspx.cs" %>
<HTML>
	<HEAD>
		<TITLE>理论学习与考试系统 V1.1</TITLE>
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
                  <TD align="right" width="159" height="25"><span style="FONT-SIZE: 9pt">帐&nbsp;号：</span> </TD>
                  <TD width="254" height="28"><asp:textbox id="LoginID" runat="server" Width="128px" Font-Size="9pt"></asp:textbox>
                      <asp:requiredfieldvalidator id="LoginIDRequiredFieldValidator" runat="server" Width="88px" controlToValidate="LoginID"
										errormessage="帐号不能为空！" display="None" Font-Size="9pt"> 帐号不能为空！</asp:requiredfieldvalidator></TD>
                </TR>
                <TR>
                  <TD align="right" width="159" colSpan="1" height="25" rowSpan="1"><span style="FONT-SIZE: 9pt">密&nbsp;码：</span> </TD>
                  <TD width="254" height="25"><asp:textbox id="UserPwd" runat="server" Width="128px" TextMode="Password" Font-Size="9pt"></asp:textbox></TD>
                </TR>
                <TR>
                  <TD align="center" width="400" colSpan="2" height="47"><asp:button id="ButLogin" runat="server" Text="登 录" Font-Size="9pt" CssClass="button" onclick="ButLogin_Click"></asp:button>
                    &nbsp;&nbsp;
                    <asp:button id="ButRegist" runat="server" Text="注 册" CausesValidation="False" Font-Size="9pt"
										Enabled="False" CssClass="button"></asp:button></TD>
                </TR>
                <TR>
                  <TD align="center" width="400" colSpan="2" height="58"><FONT face="宋体">提示：为使系统正常运行，请暂时允许浏览器弹出窗口</FONT></TD>
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
