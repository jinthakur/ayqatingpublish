<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="/Dashboard.aspx.cs" Inherits="MAMIH.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <div class="row">
       
            <asp:Panel CssClass="container" runat="server" ID="panel2" Visible="true">
                <div class="row" style="background-color: #eae2e2;">

                    <div class="col-xs-6" style="background-color: #eae2e2;">
                        <asp:Menu ID="Menu1" DynamicHorizontalOffset="2" StaticSubMenuIndent="10px" MaximumDynamicDisplayLevels="4"
                            DynamicPopOutImageUrl="~/Images/right-arrow.gif" StaticPopOutImageUrl="~/Images/drop-arrow.gif"
                            runat="server" ClientIDMode="AutoID" RenderingMode="List" Width="100%"
                            Font-Names="Verdana" Font-Size="Large" ForeColor="#990000">
                            <StaticMenuItemStyle ItemSpacing="1" Height="50px"
                                HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticHoverStyle CssClass="staticHoverStyle" BackColor="#990000"
                                ForeColor="White" />
                            <StaticSelectedStyle CssClass="staticMenuItemSelectedStyle"
                                BackColor="#FFCC66" />


                            <Items>
                                <asp:MenuItem NavigateUrl="~/EditProfiles.aspx" Text="Create/Edit Profile" ToolTip="Edit Profile"
                                    Value="Edit Profile"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/EdityourpartnerPreferenceProfile.aspx" Text="Create/Edit your Partner  Profile" ToolTip="Edit Profile"
                                    Value="Edit Profile"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/ViewProfiles.aspx" Text="View your profile" ToolTip="View your profile"
                                    Value="View your profile"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/PartnerSearch.aspx" Text=" Search Profiles " Value="Search Profiles"
                                    ToolTip="Search Profiles"></asp:MenuItem>

                                <asp:MenuItem NavigateUrl="~/PremierandEliteMembers.aspx" Text="Premier and Elite Members"
                                    Value="Premier and Elite Members" ToolTip="Premier and Elite Members"></asp:MenuItem>

                                <asp:MenuItem NavigateUrl="~/DeleteMyProfiles.aspx" Text="Delete your profile" ToolTip="Delete your profile"
                                    Value="Delete your profile"></asp:MenuItem>


                                <asp:MenuItem NavigateUrl="//www.ayqdating.com/Questionaire/matchmaking-questionnaire.docx" Text="Personal Matchmaker" Value="Personal Matchmaker"
                                    ToolTip="Personal Matchmaker"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Account/Register.aspx" Text="Register" Value="Register"
                                    ToolTip="Register"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="/chat/default.aspx" Text="FREE Chat room "
                                    ImageUrl="~/images/chatroom.jpg"
                                    Value="Unlimited Chat" ToolTip="FREE Chat room"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/ExpressInterestWithPictures.aspx"
                                    Text="Match Making" Value="Play Match Making Encounters Game"
                                    ToolTip="Play Match Making Encounters Game"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/Faqs.aspx" Text="FAQ" Value="FAQ" ToolTip="FAQ"></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="~/NewestMember.aspx" Text="Newest Member" Value="Newest Member"
                                    ToolTip="Newest Member"></asp:MenuItem>

                                <asp:MenuItem NavigateUrl="//blogs.ayqdating.com/" Text="Blogs" Value="Blogs"
                                    ToolTip="Be a Blogger  "></asp:MenuItem>
                                <asp:MenuItem NavigateUrl="Membership/AdvertisewithUs.aspx"
                                    Text="Advertise with us" Value="Advertise with us" ToolTip="Advertise with us  "></asp:MenuItem>
                            </Items>
                        </asp:Menu>

                    </div>

                
            <div class="col-xs-6" style="background-color: #eae2e2;">
                <asp:Menu ID="Menu3" DynamicHorizontalOffset="2" StaticSubMenuIndent="10px" MaximumDynamicDisplayLevels="4"
                    DynamicPopOutImageUrl="~/Images/right-arrow.gif" StaticPopOutImageUrl="~/Images/drop-arrow.gif"
                    runat="server" ClientIDMode="AutoID" RenderingMode="List" Width="100%"
                    Font-Names="Verdana" Font-Size="Large" ForeColor="#990000">
                    <StaticMenuItemStyle ItemSpacing="1" Height="50px"
                        HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticHoverStyle CssClass="staticHoverStyle" BackColor="#990000"
                        ForeColor="White" />
                    <StaticSelectedStyle CssClass="staticMenuItemSelectedStyle"
                        BackColor="#FFCC66" />


                    <Items>
                        <asp:MenuItem NavigateUrl="~/Membership/ContactUs.aspx" Text="Contact Us"
                            ToolTip="Contact Us" Value="Contact Us"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Faqs.aspx" Text="FAQ" Value="FAQ"
                            ToolTip="FAQ"></asp:MenuItem>

                        <asp:MenuItem NavigateUrl="~/Defaultupload.aspx" Text="Manage Pictures"
                            Value="Manage Pictures" ToolTip="Manage Pictures"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="/PaymentPage.aspx" Text="Upgrade"
                            Value="Upgrade Membership " ToolTip="Upgrade Membership for Extra Features"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/PersonalSettings.aspx" Text="Protect my profile" Value="Protect my profile"
                            ToolTip="Protect my profile"></asp:MenuItem>


                        <asp:MenuItem NavigateUrl="/SendEmailToContacts.aspx"
                            Text="Upgrade Membership" Value="Upgrade Membership" ToolTip="Upgrade Membership by Inviting your Friends"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="/Members.aspx" Text="Members"
                            Value="Members" ToolTip="Send message from Contact Us Page to include your Picture here "></asp:MenuItem>

                        <asp:MenuItem NavigateUrl="~/DateInvitation.aspx" Text="Host Dating Ideas" ToolTip="Host Dating Ideas"
                            Value="Host Dating Ideas"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/AcceptDateInvitation.aspx" Text="Accept Dating Ideas"
                            Value="Accept Dating Ideas"></asp:MenuItem>

                        <asp:MenuItem NavigateUrl="/Inbox.aspx" Text="Inbox"
                            Value="Inbox" ToolTip="Send message from Inbox "></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="/cause.aspx" Text="Causes"
                            Value="Causes" ToolTip="Please give your attention to the humanitarian Causes  "></asp:MenuItem>
                    </Items>
                </asp:Menu>
            </div>
                    </div>
                    <div class="row" style="background-color: #eae2e2;">
            <div class="col-xs-6" style="background-color: #eae2e2;">
                <asp:Menu ID="Menu4" DynamicHorizontalOffset="2" StaticSubMenuIndent="10px" MaximumDynamicDisplayLevels="4"
                    DynamicPopOutImageUrl="~/Images/right-arrow.gif" StaticPopOutImageUrl="~/Images/drop-arrow.gif"
                    runat="server" ClientIDMode="AutoID" RenderingMode="List" Width="100%"
                    Font-Names="Verdana" Font-Size="Large" ForeColor="#990000">
                    <StaticMenuItemStyle ItemSpacing="1" Height="50px"
                        HorizontalPadding="5px" VerticalPadding="2px" />
                    <StaticHoverStyle CssClass="staticHoverStyle" BackColor="#990000"
                        ForeColor="White" />
                    <StaticSelectedStyle CssClass="staticMenuItemSelectedStyle"
                        BackColor="#FFCC66" />


                    <Items>
                        <asp:MenuItem NavigateUrl="~/Account/ManagePassword.aspx" Text="Change Password" ToolTip="ChangePassword"
                            Value="ChangePassword"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Account/ResetPassword.aspx" Text="Recover Password" ToolTip="RecoverPassword"
                            Value="RecoverPassword"></asp:MenuItem>

                        <asp:MenuItem NavigateUrl="~/Account/Forgot.aspx" Text="Forgot.Password" ToolTip="Forgot.Password"
                            Value="Forgot Password"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="/Members.aspx" Text="Members"
                            Value="Members" ToolTip="Send message from Contact Us Page to include your Picture here "></asp:MenuItem>

                    </Items>
                </asp:Menu>
            </div>

        </div>

        </asp:Panel>
     <asp:Panel CssClass="container" runat="server" ID="panel1" Visible="false" Width="100%">
         <p>Please Complete these steps before using website.</p>
         <div class="row" style="background-color: #eae2e2;">
             <div class="col-xs-6" style="background-color: #eae2e2;">
                 <asp:Menu ID="Menu2" DynamicHorizontalOffset="2" MaximumDynamicDisplayLevels="4"
                     DynamicPopOutImageUrl="~/Images/right-arrow.gif" StaticPopOutImageUrl="~/Images/drop-arrow.gif"
                     runat="server" RenderingMode="List" Width="100%">
                     <Items>
                         <asp:MenuItem NavigateUrl="~/Account/Register.aspx" Text="Register" Value="Register"
                             ToolTip="Register"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/EditProfiles.aspx" Text="1) Edit Profile" ToolTip="Edit Profile"
                             Value="Edit Profile"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/Defaultupload.aspx" Text="2)Manage Pictures" Value="Manage Pictures"
                             ToolTip="Manage Pictures"></asp:MenuItem>
                         <asp:MenuItem NavigateUrl="~/ViewProfiles.aspx" Text="3)View your profile" ToolTip="View your profile"
                             Value="View your profile"></asp:MenuItem>

                     </Items>

                 </asp:Menu>
             </div>
             <div class="col-xs-6" style="background-color: #eae2e2;">
                 <div class="float-left" id="Div1" runat="server" visible="true">
                     <script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
                     <!-- mobilecode -->
                     <ins class="adsbygoogle"
                         style="display: block"
                         data-ad-client="ca-pub-4385937899226779"
                         data-ad-slot="9239369515"
                         data-ad-format="auto"></ins>
                     <script>
                         (adsbygoogle = window.adsbygoogle || []).push({});
                     </script>
                 </div>
             </div>
         </div>
     </asp:Panel>
    </div>
    </div>
   
</asp:Content>
