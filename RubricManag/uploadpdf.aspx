<%@ Page Language="C#" AutoEventWireup="true" CodeFile="uploadpdf.aspx.cs" Inherits="RubricManag_uploadpdf" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>上传PDF文档</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:FileUpload ID="Fileupload1" runat="server"></asp:FileUpload>
            <asp:Button ID="Btnupload" runat="server" Text="上传" OnClick="Btnupload_Click" />
            <asp:Label ID="alert" runat="server" />
        </div>
    </form>
</body>
</html>
