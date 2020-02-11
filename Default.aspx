<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MAMIH._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
       
        <h2>
        FAQS
    </h2>
  
    <ul>
       <li> <p>ayqdating isn&#8217;t like all the other dating sites where anyone can sign up. </p></li>
       <li> <p>Every day, thousands of singles join our growing community. 
        
     </p></li>
       <li> <p>ayqdating.com is unique because we only allow people who are actually looking for a long-term relationship to register! </p></li>
        
       <li> <p>That means no more wondering if a user dating online is actually serious about finding someone! 
        
         </p></li>
       <li> <p>Singles come to ayqdating.com and form serious, long-term relationships, meet life partners, and fall in love. </p></li>
       <li> <p>At ayqdating.com, we provide helpful tips and advice to our community members to make sure they successfully meet the love of their life.
        
         </p></li>
       <li> <p>ayqdating.com is FREE to Join and We have some Paid Services too . </p></li>
       <li> <p>You can extend and get Paid services for FREE If You Invite  your contacts 
    by visiting
            <a target="_top" href="SendEmailToContacts.aspx" id="ctl00_HyperLink1">Please send Messages to Your Contacts to extend your membership</a>
         </p></li>
    </ul>
    </div>

     <div class="row">
        <div > 
            <asp:Panel CssClass="container" runat="server" ID ="panel2" Visible="true" > 
        
                <asp:menu id="Menu1"  dynamichorizontaloffset="2" staticsubmenuindent="10px" maximumdynamicdisplaylevels="4"
                    dynamicpopoutimageurl="~/Images/right-arrow.gif" staticpopoutimageurl="~/Images/drop-arrow.gif"
                    runat="server"  clientidmode="AutoID" renderingmode="List" width="100%"
                    font-names="Verdana" font-size="Large"   forecolor="#990000">
                                            <StaticMenuItemStyle ItemSpacing="1"   Height="50px"
                                                HorizontalPadding="5px" VerticalPadding="2px"  />
                                            <StaticHoverStyle CssClass="staticHoverStyle" BackColor="#990000" 
                                                ForeColor="White" />
                                            <StaticSelectedStyle CssClass="staticMenuItemSelectedStyle" 
                                                BackColor="#FFCC66" />
                   
                    
                    <Items>
                          <asp:MenuItem NavigateUrl="~/EditProfiles.aspx" Text="Edit Profile" ToolTip="Edit Profile"
                            Value="Edit Profile"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/ViewProfiles.aspx" Text="View your profile" ToolTip="View your profile"
                            Value="View your profile"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/PartnerSearch.aspx" Text=" Basic Match " Value="Search Profiles"
                            ToolTip="Search Profiles"></asp:MenuItem>
                        
                     <asp:MenuItem NavigateUrl="~/PremierandEliteMembers.aspx" Text="Premier and Elite Members"
                            Value="Premier and Elite Members" ToolTip="Premier and Elite Members"></asp:MenuItem>

                        <asp:MenuItem NavigateUrl="~/DeleteMyProfiles.aspx" Text="Delete your profile" ToolTip="Delete your profile"
                            Value="Delete your profile"></asp:MenuItem>


                        <asp:MenuItem NavigateUrl="//www.ayqdating.com/Questionaire/matchmaking-questionnaire.docx" Text="Personal Matchmaker" Value="Personal Matchmaker"
                            ToolTip="Personal Matchmaker"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Account/Register.aspx" Text="Register" Value="Register"
                            ToolTip="Register"></asp:MenuItem>
                          <asp:MenuItem NavigateUrl="" Text="FREE Chat room "
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
                        <asp:MenuItem NavigateUrl="/SendEmailToContactsfromAddressBook.aspx"
                            Text="Invite your Friends" Value="Invite your Friends"
                            ToolTip="Invite your Friends"></asp:MenuItem>
                        <asp:MenuItem NavigateUrl="~/Default.aspx" Text="Home" ToolTip="Home" Value="Home"></asp:MenuItem>

                        
                      
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
            
  </asp:Panel>
     <asp:Panel CssClass="container" runat="server" ID ="panel1" Visible="false" Width="100%">
    <p> Please Complete these steps before using website.</p>
         
         <asp:Menu   ID="Menu2" DynamicHorizontalOffset="2" MaximumDynamicDisplayLevels="4"
                    DynamicPopOutImageUrl="~/Images/right-arrow.gif" StaticPopOutImageUrl="~/Images/drop-arrow.gif"
                    runat="server" RenderingMode="List" Width="100%"  >
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
             
    </asp:Panel>
            </div>
      </div>
   

</asp:Content>
