<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="January.aspx.cs" Inherits="_3G.January" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                         <asp:Label ID="Label1" runat="server" Text="Id"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td>
                         <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
            </tr>
                        <tr>
                <td>
                         <asp:Label ID="Label3" runat="server" Text="Location"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtLocation" runat="server"></asp:TextBox>
                </td>
            </tr>
                    <tr>
                <td>
                         <asp:Label ID="Label4" runat="server" Text="Salary"></asp:Label>
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtSalary" runat="server"></asp:TextBox>
                </td>
            </tr>
                                <tr>
                <td>
                         
                    </td>
                    <td colspan="2">
                        <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" />
                        <asp:Button ID="btnClear" runat="server" Text="Clear" />
                </td>
            </tr>
                          <tr>
                    <td colspan="2">
                        <asp:Label ID="lblSuccessMessage" runat="server" Text=""></asp:Label>
                </td>

                    <td colspan="2">
                        <asp:Label ID="lblErrorMessage" runat="server" Text=""></asp:Label>
                    </td> 
                          </tr> 
        </table>    
        <br />
        <asp:GridView ID="gvData" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
            </Columns>
        </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:JanConnectionString %>" SelectCommand="SELECT * FROM [Januarytbl]"></asp:SqlDataSource>
   </div>
     </form>
</body>
</html>
