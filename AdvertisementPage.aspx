<%@ Page Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" Inherits="_Default"  Codebehind="AdvertisementPage.aspx.cs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
  
    <asp:Panel  runat="server" ID="Panel1" GroupingText="Advertisement" >
  <asp:Button ID="LinkButton1" runat="server" onclick="LinkButton1_Click"  Text ="Click Here  to Skip Advertisement" />
  </asp:Panel>
    <asp:Panel  runat="server" ID="AuthenticatedMessagePanel" GroupingText="Advertisement" >
       
    </asp:Panel>
   
   
  
</asp:Content>