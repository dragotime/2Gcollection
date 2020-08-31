<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="_3G.Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            text-align: right;
            width: 246px;
        }
        .style4
        {
            width: 246px;
        }
        .style5
        {
            text-align: right;
            width: 246px;
            height: 26px;
        }
        .style6
        {
            width: 191px;
            height: 26px;
        }
        .style7
        {
            height: 26px;
            text-align: left;
        }
        .style8
        {
            width: 191px;
        }
        .style9
        {
            text-align: left;
            margin-left: 280px;
        }
        .style10
        {
            color: #FF0000;
        }
        #Reset1
        {
            height: 25px;
            width: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 class="style9">
        <strong style="text-align: justify">Registration Page</strong></h1>
    <table class="style1">
        <tr>
            <td class="style2">
                Username:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxUN" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBoxUN" CssClass="style10" 
                    ErrorMessage="Username is required" ForeColor="#CC6600"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style5">
                E-mail:</td>
            <td class="style6">
                <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
            </td>
            <td class="style7">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBoxEmail" CssClass="style10" 
                    ErrorMessage="E-mail is required"></asp:RequiredFieldValidator>
                <br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBoxEmail" 
                    ErrorMessage="You must enter the valid Email ID" ForeColor="#CC6600" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Password:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxPass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBoxPass" CssClass="style10" 
                    ErrorMessage="Password is required"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Confirm Password:</td>
            <td class="style8">
                <asp:TextBox ID="TextBoxRpass" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBoxRpass" CssClass="style10" 
                    ErrorMessage="Confirm Password is required"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBoxPass" ControlToValidate="TextBoxRpass" 
                    ErrorMessage="Both Password must be same" ForeColor="#CC6600"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Country:</td>
            <td class="style8">
                <asp:DropDownList ID="DropDownListCountry" runat="server" Width="180px">
                    <asp:ListItem>Select Country</asp:ListItem>
                    <asp:ListItem>Singapore</asp:ListItem>
                    <asp:ListItem>Malaysia</asp:ListItem>
                    <asp:ListItem>Indonesia</asp:ListItem>
                    <asp:ListItem>USA</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style9">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="DropDownListCountry" CssClass="style10" 
                    ErrorMessage="Select a Country" InitialValue="Select Country"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
                <input id="Reset1" type="reset" value="reset" /></td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style4">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
</body>
</html>
