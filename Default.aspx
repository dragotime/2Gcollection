<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="_3G.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style3
        {
            width: 266px;
            text-align: right;
        }
        .style5
        {
            width: 262px;
            text-align: left;
        }
        .style6
        {
            text-align: left;
        }
        .style7
        {
            width: 266px;
            text-align: right;
            height: 26px;
        }
        .style8
        {
            width: 262px;
            text-align: left;
            height: 26px;
        }
        .style9
        {
            text-align: left;
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p>
        <table class="style1">
            <tr>
                <td class="style3">
        Username :
                </td>
                <td class="style5">
        <asp:TextBox ID="txtUsername" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtUsername" ErrorMessage="Please enter Username" 
                        ForeColor="#CC6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
        Password :</td>
                <td class="style8">
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td class="style9">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPassword" ErrorMessage="Please enter Password" 
                        ForeColor="#CC6600"></asp:RequiredFieldValidator>
                </td>
            </tr>
        </table>
    </p>
    <p style="text-align: left; margin-left: 280px">
        &nbsp;&nbsp;<asp:Button ID="bnLogin" runat="server" onclick="Button1_Click" 
            Text="Login" style="text-align: left" />
    </p>


</asp:Content>
