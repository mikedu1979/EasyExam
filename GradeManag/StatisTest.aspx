<%@ Page language="c#" Inherits="EasyExam.GradeManag.StatisTest" CodeFile="StatisTest.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>试题统计</title>
		<meta content="Microsoft FrontPage 6.0" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../CSS/STYLE.CSS" type="text/css" rel="stylesheet">
		<script language="JavaScript" src="../JavaScript/Common.js"></script>
	</HEAD>
	<body leftMargin="0" topMargin="0" rightMargin="0">
		<form id="Form1" method="post" runat="server">
			<table cellSpacing="0" cellPadding="1" width="95%" align="center" border="0">
				<TR>
					<TD align="center" height="6"><FONT face="宋体"></FONT></TD>
				</TR>
				<tr>
					<td align="center"><FONT style="FONT-SIZE: 16px" face="黑体" color="#0054a6">【<asp:label id="labPaperName" runat="server" ForeColor="#0054a6"></asp:label>】试题统计</FONT></td>
				</tr>
				<tr>
					<td style="HEIGHT: 2px" bgColor="#0000ff" height="2"><FONT face="宋体"></FONT></td>
				</tr>
				<tr>
					<td align="center"><FONT face="宋体"><asp:datagrid id="DataGridTest" runat="server" Width="100%" AutoGenerateColumns="False" BorderWidth="1px"
								CellPadding="0" PageSize="20" AllowSorting="True">
								<ItemStyle Height="23px"></ItemStyle>
								<HeaderStyle HorizontalAlign="Center" ForeColor="Black" CssClass="HeadRow" BackColor="#076AA3"></HeaderStyle>
								<Columns>
									<asp:BoundColumn Visible="False" DataField="RubricID" ReadOnly="True" HeaderText="RubricID"></asp:BoundColumn>
									<asp:TemplateColumn HeaderText="序号">
										<ItemTemplate>
											<%#RowNum++%>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:BoundColumn DataField="TestTypeName" SortExpression="TestTypeName" HeaderText="题型名称"></asp:BoundColumn>
									<asp:BoundColumn DataField="BaseTestType" SortExpression="BaseTestType" HeaderText="基本类型"></asp:BoundColumn>
									<asp:BoundColumn DataField="TestCount" SortExpression="TestCount" HeaderText="试题数量"></asp:BoundColumn>
									<asp:BoundColumn DataField="TestMark" SortExpression="TestMark" HeaderText="试题分数"></asp:BoundColumn>
									<asp:BoundColumn DataField="TotalMark" SortExpression="TotalMark" HeaderText="考生得分"></asp:BoundColumn>
									<asp:TemplateColumn SortExpression="Rate" HeaderText="得分率">
										<HeaderStyle Width="200px"></HeaderStyle>
										<ItemTemplate>
											<asp:image id="ImgRate" runat="server" Width="50px" Height="15px" ImageUrl="../Images/Percent.gif"
												ToolTip=""></asp:image>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="选A">
										<ItemTemplate>
											<asp:Label id="labSelA" runat="server"></asp:Label>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="选B">
										<ItemTemplate>
											<asp:Label id="labSelB" runat="server"></asp:Label>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="选C">
										<ItemTemplate>
											<asp:Label id="labSelC" runat="server"></asp:Label>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="选D">
										<ItemTemplate>
											<asp:Label id="labSelD" runat="server"></asp:Label>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="选E">
										<ItemTemplate>
											<asp:Label id="labSelE" runat="server"></asp:Label>
										</ItemTemplate>
									</asp:TemplateColumn>
									<asp:TemplateColumn HeaderText="选F">
										<ItemTemplate>
											<asp:Label id="labSelF" runat="server"></asp:Label>
										</ItemTemplate>
									</asp:TemplateColumn>
								</Columns>
								<PagerStyle HorizontalAlign="Right" Mode="NumericPages"></PagerStyle>
							</asp:datagrid></FONT></td>
				</tr>
				<tr>
					<td align="center"><asp:button id="ButExport" runat="server" CssClass="button" Text="导 出" onclick="ButExport_Click"></asp:button>&nbsp;
						<INPUT class="button" onclick="window.close();" type="button" value="关 闭" name="button1"></td>
				</tr>
			</table>
		</form>
	</body>
</HTML>
