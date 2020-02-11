<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DeleteMyProfiles.aspx.cs" Inherits="MAMIH.DeleteMyProfiles" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>
        <asp:Label ID="Label1" runat="server" Font-Size="Large" ></asp:Label></h3>
        <asp:Label ID="Label2" runat="server"  ></asp:Label><asp:Label ID="Label3" runat="server" Visible="false"  ></asp:Label>
<p>
        Sorry To see You Last Time. Click on Delete Profile Button to Delete your profile.You 
        Should be Logged In to Delete the Profile</p>
<p>
      <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Delete Profile" />
</p>
     
</asp:Content>



