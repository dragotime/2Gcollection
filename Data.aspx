<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Data.aspx.cs" Inherits="_3G.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Master Database</h3>
    <div style="text-align: left">
        <p style="margin-left: 40px; font-weight: 700;">
            <asp:TreeView ID="TreeView1" runat="server" ImageSet="Arrows" 
                onselectednodechanged="TreeView1_SelectedNodeChanged">
                <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
                <Nodes>
                    <asp:TreeNode Text="Year" Value="Year" Expanded="False">
                        <asp:TreeNode Text="2014" Value="2014" Expanded="False">
                            <asp:TreeNode Text="January" Value="January"></asp:TreeNode>
                            <asp:TreeNode Text="February" Value="February"></asp:TreeNode>
                            <asp:TreeNode Text="March" Value="March" NavigateUrl="~/March.aspx" ></asp:TreeNode>
                            <asp:TreeNode Text="April" Value="April"></asp:TreeNode>
                            <asp:TreeNode Text="May" Value="May"></asp:TreeNode>
                            <asp:TreeNode Text="June" Value="June"></asp:TreeNode>
                            <asp:TreeNode Text="July" Value="July"></asp:TreeNode>
                            <asp:TreeNode Text="August" Value="August"></asp:TreeNode>
                            <asp:TreeNode Text="September" Value="September"></asp:TreeNode>
                            <asp:TreeNode Text="October" Value="October"></asp:TreeNode>
                            <asp:TreeNode Text="November" Value="November"></asp:TreeNode>
                            <asp:TreeNode Text="December" Value="December"></asp:TreeNode>
                        </asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Tahoma" Font-Size="10pt" ForeColor="Black" 
                    HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                    HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </p>
 
    </div>
    
    </asp:Content>
