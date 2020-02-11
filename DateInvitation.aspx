<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DateInvitation.aspx.cs" Inherits="MAMIH.DateInvitation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <div class="row">
        <div>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Panel CssClass="container" ID="Panel1" runat="server" Width="95%" GroupingText="ayqdating Date  Invitation Page"
                        ToolTip="ayqdating DateInvitation Page"  >
                        <asp:HyperLink ID="hyperlinkprofile" runat="server"></asp:HyperLink>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        <p>
                            <div class="style3">
                                This is a specific invitation suited to invitations of a romantic
                                            nature (e.g. dates or engagement parties).
                            </div>
                            <br>
                            <asp:Label ID="Label2" runat="server" BackColor="#CCFFFF" Font-Bold="True" Font-Size="Large"
                                ForeColor="#0066FF" Text=""></asp:Label>
                            <p>
                            </p>
                            <p>
                                You Host a Dating Idea and based on your Location (Zip Code).We send emails to All Members located near to you .
                            </p>
                            <p>
                                Visitors can accept Invite and you will be Intimated about it through this page.Visitors can view your invite page and Send response to you.
                            </p>
                            <div style="width: 100%;">
                                <label for="TextBox1">
                                A great date starts with a great idea &#8213; tell us yours.</label>
                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" Height="86px" TextMode="MultiLine" Width="80%"></asp:TextBox>
                                Mandatory
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" validationgroup="PersonalInfoGroup" runat="server" ControlToValidate="TextBox1" ErrorMessage="Field is Mandatory" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            </div>
                            <div>
                                <div>
                                    <div id="dsDropDown" class="span-12 last">
                                        <div class="question">
                                            <label>
                                            Type of date?</label>
                                            <asp:DropDownList ID="DropDownListtypeofdate" runat="server">
                                                <asp:ListItem Selected="True">Completely Open</asp:ListItem>
                                                <asp:ListItem>Dining</asp:ListItem>
                                                <asp:ListItem>Coffee/Tea</asp:ListItem>
                                                <asp:ListItem>Drinks</asp:ListItem>
                                                <asp:ListItem>Sporting Events</asp:ListItem>
                                                <asp:ListItem>Sports and Outdoors</asp:ListItem>
                                                <asp:ListItem>Movies</asp:ListItem>
                                                <asp:ListItem>Museums and Art</asp:ListItem>
                                                <asp:ListItem>Performing Arts</asp:ListItem>
                                                <asp:ListItem>Live Music/Concerts</asp:ListItem>
                                                <asp:ListItem>Nightclubs and Dancing</asp:ListItem>
                                                <asp:ListItem>Something else</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="question">
                                            <label>
                                            When is it?</label>
                                            <asp:DropDownList ID="DropDownWhenisIt" runat="server">
                                                <asp:ListItem Selected="True">Completely Open</asp:ListItem>
                                                <asp:ListItem>Weekdays</asp:ListItem>
                                                <asp:ListItem>WeekEnds</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                        <div class="question">
                                            <label>
                                            What time of day?</label>
                                            <asp:DropDownList ID="ddltimeoftheday" runat="server">
                                                <asp:ListItem Selected="True">Completely Open</asp:ListItem>
                                                <asp:ListItem>Morning</asp:ListItem>
                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                <asp:ListItem>Evening</asp:ListItem>
                                                <asp:ListItem>Night</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Check this Box to send Invite to All People near your Location" />
                                </div>
                            </div>
                            <div>
                                <div>
                                    <div class="span-12 last">
                                        <p>
                                            Press the button</p>
                                        <asp:HyperLink validationgroup="PersonalInfoGroup" ID="ImgButtonSubmit" runat="server" BorderStyle="Solid" ImageUrl="~/images/button.png" OnClick="ImgButtonSubmit_Click" ToolTip="Press this to create Invitation" />
                                    </div>
                                </div>
                            </div>
                            <div>
                                <div>
                                    <br />
                                </div>
                            </div>
                            <hr />
                            <div>
                                <div align="left">
                                    My Previous Date Ideas:
                                    <br /><asp:Button ID="Button1" runat="server" Text="Show All" />
                                </div>
                            </div>
                            <div>
                                <div>
                                     <asp:Listview ID="ListView1" runat="server" DataKeyNames="DateID" DataSourceID="LinqDataSource1">
                        <EditItemTemplate>
                                      
  <div class="form-group">
                                        <div style="background-color: #FFCC66; color: #000080;">
                                            Username:
                                                            <asp:TextBox CssClass="form-control" ID="UsernameTextBox" runat="server" Text='<%# Bind("Username") %>' />
                                            Type of date:
                                                            <asp:Label ID="Type_of_dateLabel" runat="server" Text='<%# Eval("Type_of_date") %>' />

                                            When Is It:
                                                            <asp:Label ID="When_Is_ItLabel" runat="server" Text='<%# Eval("When_Is_It") %>' />

                                            Invite all:
                                                            <asp:Label ID="Invite_allLabel" runat="server" Text='<%# Eval("Invite_all") %>' />

                                            Date ID:
                                                            <asp:Label ID="DateIDLabel" runat="server" Text='<%# Eval("DateID") %>' />

                                            Seeking:
                                                            <asp:Label ID="GenderExpectedLabel" runat="server" Text='<%# Eval("GenderExpected") %>' />

                                            Date Idea:
                                                            <asp:Label ID="Date_IdeaLabel" runat="server" Text='<%# Eval("Date_Idea") %>' />

                                            <asp:Button CssClass="btn btn-primary" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                            <asp:Button CssClass="btn btn-primary" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                                        </div>
      </div>
                                          
                                    </EditItemTemplate>
                                    <EmptyDataTemplate>
                                        No Previous Date Ideas Found
                                    </EmptyDataTemplate>
                                    <InsertItemTemplate>
                                          <form >
  <div class="form-group">
                                        <div class="topspace">
                                            Username:
                                                            <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" Text='<%# Bind("Username") %>' />
                                            Type of date:
                                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Type_of_date") %>' />

                                            When Is It:
                                                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("When_Is_It") %>' />

                                            Invite all:
                                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Invite_all") %>' />

                                            Date ID:
                                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("DateID") %>' />

                                            Seeking:
                                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("GenderExpected") %>' />

                                            Date Idea:
                                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("Date_Idea") %>' />

                                            <asp:Button CssClass="btn btn-primary" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                            <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" CommandName="Cancel" Text="Clear" />
                                        </div>
       </div>
                                            </form>
                                    </InsertItemTemplate>
                                    <ItemSeparatorTemplate>
                                        <hr />

                                    </ItemSeparatorTemplate>
                                    <ItemTemplate>
                                        <form>
                                            <div class="form-group">
                                                
                                                    Username:
                                                            <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                </div>
 <div class="form-group">
                                                    Type of date:
                                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("Type_of_date") %>' />
       </div>
 <div class="form-group">
                                                    When Is It:
                                                            <asp:Label ID="Label10" runat="server" Text='<%# Eval("When_Is_It") %>' />
       </div>
 <div class="form-group">
                                                    Invite all:
                                                            <asp:Label ID="Label11" runat="server" Text='<%# Eval("Invite_all") %>' />
       </div>
 <div class="form-group">
                                                    Date ID:
                                                            <asp:Label ID="Label12" runat="server" Text='<%# Eval("DateID") %>' />
       </div>
 <div class="form-group">
                                                    Seeking:
                                                            <asp:Label ID="Label13" runat="server" Text='<%# Eval("GenderExpected") %>' />
       </div>
 <div class="form-group">
                                                    Date Idea:
                                                            <asp:Label ID="Label14" runat="server" Text='<%# Eval("Date_Idea") %>' />

                                                    <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                                </div>
                                            
                                        </form>
                                    </ItemTemplate>
                                    <LayoutTemplate>
                                        <div id="itemPlaceholderContainer" runat="server" style="font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <div runat="server" id="itemPlaceholder" />
                                        </div>
                                        <div>
                                            <div class="pages">
                                                <asp:DataPager ID="DataPager1" CssClass="pager" runat="server" PageSize="2">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary" ButtonType="Button" FirstPageImageUrl="~/assets/img/First.gif"
                                                            ShowFirstPageButton="true" PreviousPageImageUrl="~/assets/img/Prev.gif" ShowLastPageButton="false"
                                                            ShowNextPageButton="false" />
                                                        <asp:NumericPagerField ButtonCount="5" />
                                                        <asp:NextPreviousPagerField ButtonCssClass="btn btn-primary" ButtonType="Button" ShowLastPageButton="true" ShowNextPageButton="true"
                                                            ShowPreviousPageButton="false" LastPageImageUrl="~/assets/img/Last.gif" NextPageImageUrl="~/assets/img/next.gif" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </div>
                                        </div>
                                    </LayoutTemplate>
                                    <SelectedItemTemplate>
                                        <div>
                                            Username:
                                                            <asp:Label ID="Label15" runat="server" Text='<%# Eval("Username") %>' />

                                            Type of date:
                                                            <asp:Label ID="Label16" runat="server" Text='<%# Eval("Type_of_date") %>' />

                                            When Is It:
                                                            <asp:Label ID="Label17" runat="server" Text='<%# Eval("When_Is_It") %>' />

                                            Invite all:
                                                            <asp:Label ID="Label18" runat="server" Text='<%# Eval("Invite_all") %>' />

                                            Date ID:
                                                            <asp:Label ID="Label19" runat="server" Text='<%# Eval("DateID") %>' />

                                            Seeking:
                                                            <asp:Label ID="Label20" runat="server" Text='<%# Eval("GenderExpected") %>' />

                                            Date Idea:
                                                            <asp:Label ID="Label21" runat="server" Text='<%# Eval("Date_Idea") %>' />

                                            <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" CommandName="Delete" Text="Delete" />
                                        </div>
                                    </SelectedItemTemplate>
                                </asp:Listview>
                                    <ef:EntityDataSource ID="LinqDataSource1" runat="server"                                                             ConnectionString="name=mmsecurityEntitiesdb" DefaultContainerName="mmsecurityEntitiesdb"
                                                                EnableDelete="True" EnableInsert="True" EnableUpdate="True"
                                                                EntitySetName="InviteDates" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="true">
                                                                <WhereParameters>
                                                              <asp:ControlParameter ControlID="Label1" Name="Username" PropertyName="Text" Type="String" />

                                                                </WhereParameters>
                                                            </ef:EntityDataSource>
                                   
                                </div>
                            </div>
                            <div>
                                <div>
                                    <br />
                                </div>
                            </div>
                            <hr />
                            <div>
                                <div align="left">
                                    My Previous Date Ideas:Accepted/Declined Members
                                </div>
                            </div>
                            <div>
                                <div>
                                    <div>
                                        <div align="left" class="topspace">
                                            <asp:Listview ID="ListView2" runat="server" DataSourceID="EntityDataSource1">
                                               
                                                <EmptyDataTemplate>
                                                    <div class="topspace" style="color: #284775;">
                                                        No Accepted/Declined Members was returned for your Previous Date Ideas.</div>
                                                </EmptyDataTemplate>
                                             
                                                <ItemTemplate>
                                                    <div class="topspace" style="background-color: #FFFBD6; color: #333333;">
                                                        Accepted Username:
                                                        <asp:Label ID="AcceptedUsernameLabel" runat="server" Text='<%# Eval("AcceptedUsername") %>' />
                                                        <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%#  DataBinder.Eval(Container.DataItem,"AcceptedUsername","/ViewProfiles.aspx?un={0}" ) %>' Target="_top" ToolTip="  Click here For Profile " text= '<%# DataBinder.Eval(Container.DataItem, "AcceptedUsername", " View Profile  of {0}")%>' /> 
                                                        <div class="form-group">
                                                        </div>
                                                        Date Entered:
                                                        <asp:Label ID="DateEnteredLabel" runat="server" Text='<%# Eval("DateEntered") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        Accepted Date ID:
                                                        <asp:Label ID="AcceptedDateIDLabel" runat="server" Text='<%# Eval("AcceptedDateID") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        Username:
                                                        <asp:Label ID="UsernameLabel" runat="server" Text='<%# Eval("Username") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        Type of date:
                                                        <asp:Label ID="TypeofdateLabel" runat="server" Text='<%# Eval("Typeofdate") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        WhenIsIt:
                                                        <asp:Label ID="WhenIsItLabel" runat="server" Text='<%# Eval("WhenIsIt") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        Seeking:
                                                        <asp:Label ID="SeekingLabel" runat="server" Text='<%# Eval("Seeking") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        DateIdea:
                                                        <asp:Label ID="DateIdeaLabel" runat="server" Text='<%# Eval("DateIdea") %>' />
                                                        <div class="form-group">
                                                        </div>
                                                        Accepted Message:
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
                                                    <div class="topspace" style="color: #284775;">
                                                        <div class="pages">
                                                            <asp:DataPager ID="DataPager1" runat="server" CssClass="pager" PageSize="2">
                                                                <Fields>
                                                                    <asp:NextPreviousPagerField ButtonType="Button" FirstPageImageUrl="~/assets/img/First.gif" PreviousPageImageUrl="~/assets/img/Prev.gif" ShowFirstPageButton="true" ShowLastPageButton="false" ShowNextPageButton="false" />
                                                                    <asp:NumericPagerField ButtonCount="5" />
                                                                    <asp:NextPreviousPagerField ButtonType="Button" LastPageImageUrl="~/assets/img/Last.gif" NextPageImageUrl="~/assets/img/next.gif" ShowLastPageButton="true" ShowNextPageButton="true" ShowPreviousPageButton="false" />
                                                                </Fields>
                                                            </asp:DataPager>
                                                        </div>
                                                    </div>
                                                </LayoutTemplate>
                                             
                                            </asp:Listview>
                                              <ef:EntityDataSource ID="EntityDataSource1" runat="server"                                                             ConnectionString="name=mmsecurityEntitiesdb" DefaultContainerName="mmsecurityEntitiesdb"
                                                                EnableDelete="True" EnableInsert="True" EnableUpdate="True"
                                                                EntitySetName="DateViews" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="true">
                                                                <WhereParameters>
                                                              <asp:ControlParameter ControlID="Label1" Name="Username" PropertyName="Text" Type="String" />

                                                                </WhereParameters>
                                                            </ef:EntityDataSource>
                                        </div>
                                    </div>
                                    <div>
                                        <div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                          
                    </asp:Panel>
                    <input type="hidden" id="hidnewUser" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
    </div>
</asp:Content>
