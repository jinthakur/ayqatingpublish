<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AcceptDateInvitation.aspx.cs" Inherits="MAMIH.AcceptDateInvitation" %>

<%@ Register Assembly="Microsoft.AspNet.EntityDataSource" Namespace="Microsoft.AspNet.EntityDataSource" TagPrefix="ef" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
        <div>
            <div class="form-group">
                <div class="form-group">
                    <div class="form-group">

                        <div class="form-group">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Panel CssClass="container" ID="Panel1" runat="server" Width="95%" GroupingText="ayqdating Accept Date Invitation Page"
                                        ToolTip="ayqdating DateInvitation Page" Font-Bold="True">

                                        <asp:Label ID="Label1" runat="server"></asp:Label>
                                       
                                        <asp:Label ID="Label2" runat="server"></asp:Label>
                                       
                                        Looking For:
                                   
                                       

                                       



                                        <asp:Label ID="Label3" runat="server"></asp:Label>
                                        <asp:Label ID="Label5" Visible="false" runat="server"></asp:Label>
                                       
                                        <p>
                                            <div class="style3">
                                              Dating Ideas (e.g. dates or engagement parties).
                                           
                                           
                                           
                                            </div>
                                            Awww, how lovely! How It Works:
                                           
                                           

                                            <p>
                                                You accept a Dating Idea and based on your Location (Zip Code).We send emails to the Host .
                                           
                                           
                                           
                                            </p>
                                            <p>
                                                Host can send you instant messages from your profile page and you can meet after that.
                                           
                                           
                                           
                                            </p>
                                            <asp:Panel ID="Panel2" runat="server" CssClass="container" GroupingText="Host  List" ToolTip="Host List  window">
                                                <div style="width: 100%;">
                                                  
                                                            <asp:ListView ID="ListView1" runat="server" DataKeyNames="DateID" DataSourceID="EntityDataSource23" OnItemCommand="ListView1_OnItemCommand">
                                                               <EditItemTemplate>
                                                                    <div style="color: #000080;">
                                                                        Who is hosting Date Idea:
                                                                       
                                                                       

                                                                       



                                                                        <asp:TextBox ID="UsernameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Username") %>' />
                                                                        Type of date:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Type_of_dateLabel" runat="server" Text='<%# Eval("Type_of_date") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        When Is It:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="When_Is_ItLabel" runat="server" Text='<%# Eval("When_Is_It") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Invite all:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Invite_allLabel" runat="server" Text='<%# Eval("Invite_all") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Date ID:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="DateIDLabel" runat="server" Text='<%# Eval("DateID") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Seeking:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="GenderExpectedLabel" runat="server" Text='<%# Eval("GenderExpected") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Date Idea:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Date_IdeaLabel" runat="server" Text='<%# Eval("Date_Idea") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" CssClass="btn btn-primary" Text="Update" />
                                                                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
                                                                    </div>
                                                                </EditItemTemplate>
                                                                <EmptyDataTemplate>
                                                                    <div class="form-group">
                                                                        <blink>
                                                                        No Dating Ideas for you .
                                                                        </blink>
                                                                    </div>
                                                                </EmptyDataTemplate>
                                                                <ItemSeparatorTemplate>
                                                                    <hr />
                                                                   
                                                                </ItemSeparatorTemplate>
                                                                <ItemTemplate>
                                                                    <div style="color: #333333;">
                                                                        Who is hosting Date Idea:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Type of date:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Type_of_dateLabel" runat="server" Text='<%# Eval("Type_of_date") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        When Is It:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="When_Is_ItLabel" runat="server" Text='<%# Eval("When_Is_It") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Invite all:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Invite_allLabel" runat="server" Text='<%# Eval("Invite_all") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Date ID:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="DateIDLabel" runat="server" Text='<%# Eval("DateID") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Seeking:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="GenderExpectedLabel" runat="server" Text='<%# Eval("GenderExpected") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Date Idea:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Date_IdeaLabel" runat="server" Text='<%# Eval("Date_Idea") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"UserName","~/ViewProfiles.aspx?un={0}" ) %>' Target="_blank" Text='<%# DataBinder.Eval(Container.DataItem, "Username", " View Profile  of {0}")%>' ToolTip="Click here For Profile " />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Write your Message and Click the Accept/Decline Button
                                                                       
                                                                       

                                                                       



                                                                        <div class="form-group">
                                                                        </div>
                                                                        <asp:TextBox ID="AcceptMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" />
                                                                        <asp:LinkButton ID="HyperLink1ImageButton" runat="server" CommandArgument='<%#Eval("DateID")  %>' CommandName="Accept" ImageUrl="~/images/accept.jpg" OnClientClick="alert('You have accepted the Dating Idea');" />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        <asp:TextBox ID="DeclineMessage" runat="server" CssClass="form-control" TextMode="MultiLine" Width="100%" />
                                                                        <asp:LinkButton ID="ImageButton1" runat="server" CommandArgument='<%#Eval("DateID") %>' CommandName="Decline" ImageUrl="~/images/decline.jpg" OnClientClick="alert('You have Declined the Dating Idea');" />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        <div class="form-group">
                                                                        </div>
                                                                    </div>
                                                                </ItemTemplate>
                                                                <LayoutTemplate>
                                                                    <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                                        <div runat="server" id="itemPlaceholder" />
                                                                    </div>
                                                                    <div style="text-align: center; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                                                        <div class="pages">
                                                                            <asp:DataPager ID="DataPager1" runat="server" CssClass="pager" PageSize="1">
                                                                                <Fields>
                                                                                    <asp:NextPreviousPagerField ButtonType="Button" FirstPageImageUrl="~/assets/img/First.gif" PreviousPageImageUrl="~/assets/img/Prev.gif" ShowFirstPageButton="true" ShowLastPageButton="false" ShowNextPageButton="false" />
                                                                                    <asp:NumericPagerField ButtonCount="5" />
                                                                                    <asp:NextPreviousPagerField ButtonType="Button" LastPageImageUrl="~/assets/img/Last.gif" NextPageImageUrl="~/assets/img/next.gif" ShowLastPageButton="true" ShowNextPageButton="true" ShowPreviousPageButton="false" />
                                                                                </Fields>
                                                                            </asp:DataPager>
                                                                        </div>
                                                                    </div>
                                                                </LayoutTemplate>
                                                                <SelectedItemTemplate>
                                                                    <div class="form-group">
                                                                        Who is hosting Date Idea:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Type of date:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Type_of_dateLabel" runat="server" Text='<%# Eval("Type_of_date") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        When Is It:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="When_Is_ItLabel" runat="server" Text='<%# Eval("When_Is_It") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Invite all:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Invite_allLabel" runat="server" Text='<%# Eval("Invite_all") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Date ID:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="DateIDLabel" runat="server" Text='<%# Eval("DateID") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Seeking:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="GenderExpectedLabel" runat="server" Text='<%# Eval("GenderExpected") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                        Date Idea:
                                                                       
                                                                       

                                                                       



                                                                        <asp:Label ID="Date_IdeaLabel" runat="server" Text='<%# Eval("Date_Idea") %>' />
                                                                        <div class="form-group">
                                                                        </div>
                                                                    </div>
                                                                </SelectedItemTemplate>
                                                            </asp:ListView>

                                                            <ef:EntityDataSource ID="EntityDataSource23" runat="server"
                                                                ConnectionString="name=mmsecurityEntitiesdb" DefaultContainerName="mmsecurityEntitiesdb"
                                                                EnableDelete="True" EnableInsert="True" EnableUpdate="True"
                                                                EntitySetName="InviteDates" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="false"
                                                                Where="it.GenderExpected != null or it.GenderExpected != @GenderExpected">
                                                                <WhereParameters>
                                                                    <asp:ControlParameter ControlID="Label3" DefaultValue="Female" Name="GenderExpected" PropertyName="Text" Type="String" />
                                                                </WhereParameters>
                                                            </ef:EntityDataSource>



                                                        
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            <br />
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            Click button for accepted List :<asp:Button CssClass="btn-success" ID="Button1" runat="server" OnClick="Button1_Click" Text="Your  Accepted List " />
                                                        </div>
                                                    </div>
                                                </div>
                                            </asp:Panel>
                                            <asp:Panel ID="PanelAccepted" runat="server" CssClass="container" GroupingText="Accepted List" ToolTip=" Your Accepted/Declined List  window" Visible="false">

                                                <asp:ListView ID="ListView2" runat="server" DataSourceID="LinqDataSource2">
                                                    <AlternatingItemTemplate>
                                                        <div style="color: #284775;">
                                                            Who Accepted Date Idea :
                                                                               
                                                                               

                                                            <asp:Label ID="AcceptedUsernameLabel" runat="server" Text='<%# Eval("AcceptedUsername") %>' />
                                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"AcceptedUsername","/ViewProfiles.aspx?un={0}" ) %>' Target="_blank" Text='<%# DataBinder.Eval(Container.DataItem, "AcceptedUsername", " View Profile  of {0}")%>' ToolTip="  Click here For Profile " />
                                                            <div class="form-group">
                                                            </div>
                                                            When Date Idea was accepted
                                                                               
                                                                               

                                                            <asp:Label ID="DateEnteredLabel" runat="server" Text='<%# Eval("DateEntered") %>' />
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>' Visible="false" />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted Date ID:
                                                                               
                                                                               

                                                            <asp:Label ID="AcceptedDateIDLabel" runat="server" Text='<%# Eval("AcceptedDateID") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Who is hosting Date Idea:
                                                                               
                                                                               

                                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"UserName","~/ViewProfiles.aspx?un={0}" ) %>' Target="_blank" Text='<%# DataBinder.Eval(Container.DataItem, "Username", " View Profile  of {0}")%>' ToolTip="  Click here For Profile " />
                                                            <div class="form-group">
                                                            </div>
                                                            Type of date:
                                                                               
                                                                               

                                                            <asp:Label ID="TypeofdateLabel" runat="server" Text='<%# Eval("Typeofdate") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Is It:
                                                                               
                                                                               

                                                            <asp:Label ID="WhenIsItLabel" runat="server" Text='<%# Eval("WhenIsIt") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Seeking:
                                                                               
                                                                               

                                                            <asp:Label ID="SeekingLabel" runat="server" Text='<%# Eval("Seeking") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Date Idea:
                                                                               
                                                                               

                                                            <asp:Label ID="DateIdeaLabel" runat="server" Text='<%# Eval("DateIdea") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted/Declined Message:
                                                                               
                                                                               

                                                            <asp:Label ID="Accepted_MessageLabel" runat="server" Text='<%# Eval("Accepted_Message") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            <div class="form-group">
                                                            </div>
                                                        </div>
                                                    </AlternatingItemTemplate>
                                                    <EditItemTemplate>
                                                        <div style="color: #000080;">
                                                            Who Accepted Date Idea :
                                                                               
                                                                               

                                                            <asp:TextBox ID="AcceptedUsernameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AcceptedUsername") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Date Idea was accepted
                                                                               
                                                                               

                                                            <asp:TextBox ID="DateEnteredTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DateEntered") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted Date ID:
                                                                               
                                                                               

                                                            <asp:TextBox ID="AcceptedDateIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AcceptedDateID") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Who is hosting Date Idea:
                                                                               
                                                                               

                                                            <asp:TextBox ID="UsernameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Username") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Type of date:
                                                                               
                                                                               

                                                            <asp:TextBox ID="TypeofdateTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Typeofdate") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Is It:
                                                                               
                                                                               

                                                            <asp:TextBox ID="WhenIsItTextBox" runat="server" CssClass="form-control" Text='<%# Bind("WhenIsIt") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Seeking:
                                                                               
                                                                               

                                                            <asp:TextBox ID="SeekingTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Seeking") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Date Idea:
                                                                               
                                                                               

                                                            <asp:TextBox ID="DateIdeaTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DateIdea") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted/Declined Message:
                                                                               
                                                                               

                                                            <asp:TextBox ID="Accepted_MessageTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Accepted_Message") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            <asp:Button ID="UpdateButton" runat="server" CommandName="Update" CssClass="btn btn-primary" Text="Update" />
                                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-primary" Text="Cancel" />
                                                            <div class="form-group">
                                                            </div>
                                                            <div class="form-group">
                                                            </div>
                                                        </div>
                                                    </EditItemTemplate>
                                                    <EmptyDataTemplate>
                                                        <div class="form-group">
                                                            <blink>
                                                                                You have not Accepted any Dating Ideas.
                                                                                </blink>
                                                        </div>
                                                    </EmptyDataTemplate>
                                                    <InsertItemTemplate>
                                                        <div style="">
                                                            Who Accepted Date Idea :
                                                                               
                                                                               

                                                            <asp:TextBox ID="AcceptedUsernameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AcceptedUsername") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Date Idea was accepted
                                                                               
                                                                               

                                                            <asp:TextBox ID="DateEnteredTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DateEntered") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted Date ID:
                                                                               
                                                                               

                                                            <asp:TextBox ID="AcceptedDateIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AcceptedDateID") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Who is hosting Date Idea:
                                                                               
                                                                               

                                                            <asp:TextBox ID="UsernameTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Username") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Type of date:
                                                                               
                                                                               

                                                            <asp:TextBox ID="TypeofdateTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Typeofdate") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Is It:
                                                                               
                                                                               

                                                            <asp:TextBox ID="WhenIsItTextBox" runat="server" CssClass="form-control" Text='<%# Bind("WhenIsIt") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Seeking:
                                                                               
                                                                               

                                                            <asp:TextBox ID="SeekingTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Seeking") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Date Idea:
                                                                               
                                                                               

                                                            <asp:TextBox ID="DateIdeaTextBox" runat="server" CssClass="form-control" Text='<%# Bind("DateIdea") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted/Declined Message:
                                                                               
                                                                               

                                                            <asp:TextBox ID="Accepted_MessageTextBox" runat="server" CssClass="form-control" Text='<%# Bind("Accepted_Message") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            <asp:Button ID="InsertButton" runat="server" CommandName="Insert" CssClass="btn btn-primary" Text="Insert" />
                                                            <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" CssClass="btn btn-primary" Text="Clear" />
                                                            <div class="form-group">
                                                            </div>
                                                            <div class="form-group">
                                                            </div>
                                                        </div>
                                                    </InsertItemTemplate>
                                                    <ItemTemplate>
                                                        <div style="color: #333333;">
                                                            Who Accepted Date Idea :
                                                                               
                                                                               

                                                            <asp:Label ID="AcceptedUsernameLabel" runat="server" Text='<%# Eval("AcceptedUsername") %>' />
                                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"AcceptedUsername","/ViewProfiles.aspx?un={0}" ) %>' Target="_blank" ToolTip="  Click here For Profile " Text='<%# DataBinder.Eval(Container.DataItem, "AcceptedUsername", " View Profile  of {0}")%>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Date Idea was accepted
                                                                               
                                                                               

                                                            <asp:Label ID="DateEnteredLabel" runat="server" Text='<%# Eval("DateEntered") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted Date ID:
                                                                               
                                                                               

                                                            <asp:Label ID="AcceptedDateIDLabel" runat="server" Text='<%# Eval("AcceptedDateID") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Who is hosting Date Idea:
                                                                               
                                                                               

                                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"UserName","~/ViewProfiles.aspx?un={0}" ) %>' Target="_blank" Text='<%# DataBinder.Eval(Container.DataItem, "Username", " View Profile  of {0}")%>' ToolTip="  Click here For Profile " />
                                                            <div class="form-group">
                                                            </div>
                                                            Type of date:
                                                                               
                                                                               

                                                            <asp:Label ID="TypeofdateLabel" runat="server" Text='<%# Eval("Typeofdate") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Is It:
                                                                               
                                                                               

                                                            <asp:Label ID="WhenIsItLabel" runat="server" Text='<%# Eval("WhenIsIt") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Seeking:
                                                                               
                                                                               

                                                            <asp:Label ID="SeekingLabel" runat="server" Text='<%# Eval("Seeking") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Date Idea:
                                                                               
                                                                               

                                                            <asp:Label ID="DateIdeaLabel" runat="server" Text='<%# Eval("DateIdea") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted/Declined Message:
                                                                               
                                                                               

                                                            <asp:Label ID="Accepted_MessageLabel" runat="server" Text='<%# Eval("Accepted_Message") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            <div class="form-group">
                                                            </div>
                                                        </div>
                                                    </ItemTemplate>
                                                    <LayoutTemplate>
                                                        <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                            <div runat="server" id="itemPlaceholder" />
                                                        </div>
                                                        <div style="text-align: center; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;">
                                                            <div class="pages">
                                                                <asp:DataPager ID="DataPager1" runat="server" CssClass="pager" PageSize="1">
                                                                    <Fields>
                                                                        <asp:NextPreviousPagerField ButtonType="Button" FirstPageImageUrl="~/assets/img/First.gif" PreviousPageImageUrl="~/assets/img/Prev.gif" ShowFirstPageButton="true" ShowLastPageButton="false" ShowNextPageButton="false" />
                                                                        <asp:NumericPagerField ButtonCount="5" />
                                                                        <asp:NextPreviousPagerField ButtonType="Button" LastPageImageUrl="~/assets/img/Last.gif" NextPageImageUrl="~/assets/img/next.gif" ShowLastPageButton="true" ShowNextPageButton="true" ShowPreviousPageButton="false" />
                                                                    </Fields>
                                                                </asp:DataPager>
                                                            </div>
                                                        </div>
                                                    </LayoutTemplate>
                                                    <SelectedItemTemplate>
                                                        <div class="form-group">
                                                            Who Accepted Date Idea :
                                                                               
                                                                               

                                                            <asp:Label ID="AcceptedUsernameLabel" runat="server" Text='<%# Eval("AcceptedUsername") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Date Idea was accepted
                                                                               
                                                                               

                                                            <asp:Label ID="DateEnteredLabel" runat="server" Text='<%# Eval("DateEntered") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted Date ID:
                                                                               
                                                                               

                                                            <asp:Label ID="AcceptedDateIDLabel" runat="server" Text='<%# Eval("AcceptedDateID") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Who is hosting Date Idea:
                                                                               
                                                                               

                                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Type of date:
                                                                               
                                                                               

                                                            <asp:Label ID="TypeofdateLabel" runat="server" Text='<%# Eval("Typeofdate") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            When Is It:
                                                                               
                                                                               

                                                            <asp:Label ID="WhenIsItLabel" runat="server" Text='<%# Eval("WhenIsIt") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Seeking:
                                                                               
                                                                               

                                                            <asp:Label ID="SeekingLabel" runat="server" Text='<%# Eval("Seeking") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Date Idea:
                                                                               
                                                                               

                                                            <asp:Label ID="DateIdeaLabel" runat="server" Text='<%# Eval("DateIdea") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            Accepted/Declined Message:
                                                                               
                                                                               

                                                            <asp:Label ID="Accepted_MessageLabel" runat="server" Text='<%# Eval("Accepted_Message") %>' />
                                                            <div class="form-group">
                                                            </div>
                                                            <div class="form-group">
                                                            </div>
                                                        </div>
                                                    </SelectedItemTemplate>
                                                </asp:ListView>
                                                <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="MAMIH.mmsecurityEntitiesdb" EntityTypeName="" OrderBy="AcceptedDateID" TableName="DateViews" Where="AcceptedUsername == @Username">
                                                    <WhereParameters>
                                                        <asp:ControlParameter ControlID="Label1" Name="Username" PropertyName="Text" Type="String" />
                                                    </WhereParameters>
                                                </asp:LinqDataSource>

                                            </asp:Panel>



                                            <p>
                                            </p>



                                        </p>
                                    </asp:Panel>

                                    <input type="hidden" id="hidnewUser" runat="server" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
