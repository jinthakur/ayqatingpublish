<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="OpenAuthProviders.ascx.cs" Inherits="MAMIH.Account.OpenAuthProviders" %>

<div id="socialLoginList">
    <h4>Use Social Media Credentials  to log in.</h4>
    <hr />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <asp:ListView runat="server" ID="providerDetails" ItemType="System.String"
        SelectMethod="GetProviderNames" ViewStateMode="Disabled">
        <ItemTemplate>
            <p>
                <button type="submit" class="btn btn-default" name="provider" value="<%#: Item %>"
                    title="Log in using your <%#: Item %> account." class="fa-facebook-square">
                    <%#: Item %>
                                       <asp:Label ID="Label1" runat="server" Text="If Bloc"></asp:Label><br />
                
                </button>
                 
            </p>
        </ItemTemplate>
        <EmptyDataTemplate>
            <div>
             </div>
        </EmptyDataTemplate>
    </asp:ListView>
</div>
