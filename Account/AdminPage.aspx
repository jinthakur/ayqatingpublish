<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminPage.aspx.cs" Inherits="MAMIH.Account.AdminPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:LinqDataSource ID="LinqDataSource1" runat="server" OnSelecting="LinqDataSource1_Selecting">
    </asp:LinqDataSource>

    <asp:ListView ID="lvCustomers" runat="server" DataSourceID="LinqDataSource1" OnSelecting="LinqDataSource1_Selecting">
        <LayoutTemplate>


            <div class="pages">
                <asp:DataPager ID="DataPager1" CssClass="pager" runat="server" PageSize="10000">
                    <Fields>
                        <asp:NextPreviousPagerField ButtonType="Button" FirstPageImageUrl="~/assets/img/First.gif"
                            ShowFirstPageButton="true" PreviousPageImageUrl="~/assets/img/Prev.gif" ShowLastPageButton="false"
                            ShowNextPageButton="false" />
                        <asp:NumericPagerField ButtonCount="5" />
                        <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="true" ShowNextPageButton="true"
                            ShowPreviousPageButton="false" LastPageImageUrl="~/assets/img/Last.gif" NextPageImageUrl="~/assets/img/next.gif" />
                    </Fields>
                </asp:DataPager>
            </div>




            <div id="itemPlaceholderContainer" runat="server" style="font-family: Helvetica, sans-serif;">
                <div runat="server" id="itemPlaceholder" />
            </div>
        </LayoutTemplate>
        <ItemTemplate>

            <%--<script type="text/javascript"><!--
                             google_ad_client = "ca-pub-4385937899226779";
                             /* New ad */
                             google_ad_slot = "9640247160";
                             google_ad_width = 728;
                             google_ad_height = 90;
//-->
                                            </script>
                                            <script type="text/javascript" src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                                             </script>
                                          <br/>
                                            <script type="text/javascript"><!--
                                                google_ad_client = "ca-pub-4385937899226779";
                                                /* 728x15, created 8/13/09 */
                                                google_ad_slot = "5999704303";
                                                google_ad_width = 728;
                                                google_ad_height = 15;
//-->
                                            </script>
                                            <script type="text/javascript" src="//pagead2.googlesyndication.com/pagead/show_ads.js">
                                            </script> --%>


            <div class="sp row">
                <br />
                <asp:LinkButton ID="ImageButton2" runat="server" ImageUrl="~/images/pleaseskip.png"
                    ToolTip="Click here to skip this user" CommandName='skip' CommandArgument='<%#Eval("UserName") + ", " + Eval("Email") %>'
                    OnCommand="LinkButton_Command" CssClass="BUTTON" />
                <asp:LinkButton ID="ImageButton3" runat="server" ImageUrl="~/images/iminterested.png"
                    ToolTip="Click here to send Interest to  this user" CommandName='interest' CommandArgument='<%#Eval("UserName") + ", " + Eval("Email") %>'
                    OnCommand="LinkButton_Command" CssClass="BUTTON" />
                <asp:Label ID="lblMessageSent" runat="server" Text=""></asp:Label>
            </div>


            <div class="sp row">
                <div style="margin: 2px; border: 1px ridge; border-style: solid; padding: 10px; background: white; color: #C7A317;"
                    class="col-sm">
                    <asp:HyperLink ID="UserNameLabel" runat="server" Target="_top" NavigateUrl='<%# "ViewProfiles.aspx?un="+ Eval("UserName") %>' Text='<%# "View Profile Of  " + Eval("UserName")%>' />
                    <br />
                    <div>Email: <%# Eval("Email")%></div>
                    <div>EmailConfirmed: <%# Eval("EmailConfirmed")%></div>
                    <div>HomeTown: <%# Eval("HomeTown")%></div>
                    <div>UserName: <%# Eval("UserName")%></div>


                    <div><%# Eval("SecurityStamp")%></div>
                </div>
            </div>








            <div style="border: 3px; border-color: Blue" class="row">
                <div class="sp" colspan="5">
                    <asp:HyperLink ID="ImageButtonLink5" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"Id","~/ViewProfiles.aspx?uid={0}" ) %>'
                        ImageUrl="~/Images/viewProfile.jpg" ToolTip="Click here to View Profile " />
                    <asp:HyperLink ID="ImageButtonLink3" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"UserName","~/chat/default.aspx?un={0}" ) %>'
                        ImageUrl="~/Images/chat.jpg" ToolTip="Click here to Chat " />
                    <asp:LinkButton ID="ImageButton1" runat="server" Text="Block User for Website"
                        ImageUrl="~/Images/blockuser.jpg" ToolTip="Click here to Block this user" CommandName='Block'
                        CommandArgument='<%# Eval("UserName") %>' OnCommand="LinkButton_Command" />
                    <asp:LinkButton ID="ImageButtonLink4" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"UserName","~/ViewProfiles.aspx?un={0}" ) %>'
                        ImageUrl="~/Images/sendInterest.jpg" ToolTip="Click here To Send Message " />
                    <asp:HyperLink ID="ImageButtonLink2" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"UserName","~/slideshow/MMCarousel.aspx?un={0}" ) %>'
                        ImageUrl="~/Images/slide.jpg" ToolTip="Click here For Picture Slideshow " />
                </div>
            </div>

            </div>    
                    
        </ItemTemplate>
        <EmptyDataTemplate>
            <asp:Panel ID="Panel1" runat="server" Wrap="true" ToolTip="Profile" Grouping
                HorizontalAlign="Left" ForeColor="Red">
                Your profile has no images . Please upload your image to see other Profile Pictures
            </asp:Panel>
        </EmptyDataTemplate>
        <ItemSeparatorTemplate>
            <hr />
            <br />
        </ItemSeparatorTemplate>
    </asp:ListView>
</asp:Content>
