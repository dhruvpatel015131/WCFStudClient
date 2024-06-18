<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WCFStudClient.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center>
                       <h3>
                           Stud Table
                       </h3>
            </center>
            <asp:GridView ID="GVStudents" runat="server"></asp:GridView>   
            <br />
            <asp:Button ID="btnShow" runat="server" Text="Show" OnClick="btnShow_Click" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Enter Id:"></asp:Label>
            <asp:TextBox ID="txtId" runat="server" style="margin-left: 55px"></asp:TextBox>
            <br />
             <asp:Label ID="Label2" runat="server" Text="Enter Name:"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" style="margin-left: 27px"></asp:TextBox>
            <br />
             <asp:Label ID="Label3" runat="server" Text="Enter Address:"></asp:Label>
            <asp:TextBox ID="txtAddress" runat="server" style="margin-left: 10px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            <br />
            <br />
            <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>

        </div>
    </form>
</body>
</html>
