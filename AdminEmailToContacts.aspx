<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminEmailToContacts.aspx.cs" Inherits="MAMIH.AdminEmailToContacts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <script>function fnCheckValidemails
            (textbox) {

               alert("Message is being sent to all Contacts");
        }

        function CheckValidemail(sender, args) {


            args.IsValid = true;
        }</script>
    <h3>
        <asp:Label ID="Label1" runat="server" Font-Size="Large"></asp:Label></h3>
    <asp:Label ID="Label2" runat="server" Font-Size="Large"></asp:Label>
     
    <asp:HyperLink ID="HyperLinkrefid" runat="server" Visible="false"></asp:HyperLink>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel CssClass="container" ID="Panel1" runat="server" Wrap="true" ToolTip="Invite Your Friends"
                GroupingText="Email Invite" HorizontalAlign="Left">
                <div style="vertical-align: top;" class="container">


                    <div class="row">
                        You can extend your Membership for FREE By Inviting your Friends from this Page<label />
                        .Or you can do so from importing your contacts from Invite your Friends Menu.
                    </div>
                    <div class="row">

                        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                            <asp:ListItem Selected="True"
                                Value="Send Message as Anonymous(Use Online Invites Profile)">Send Message as Anonymous User (Use Online Invites Profile)</asp:ListItem>
                            <asp:ListItem>Send Message (Use My Profile)</asp:ListItem>
                            <asp:ListItem>Send to all users</asp:ListItem>
                        </asp:RadioButtonList>
                    </div>




                    <div class="row">
                    </div>
                    <div class="row">
                        <label>Subject</label>
                        <asp:TextBox CssClass="form-control" ID="txtsubject" runat="server" Font-Italic="False"
                            ForeColor="#0066FF" Height="34px"
                            onfocus="this.value = ''; this.onfocus = function () {}" TextMode="MultiLine"
                            Width="225px" Wrap="true" hint="Please write your subject here"></asp:TextBox>
                    </div>

                    <div class="row">
                        <asp:CustomValidator ID="custPrimeCheck" runat="server"
                            ClientValidationFunction="CheckValidemail" ControlToValidate="recipient_list"
                            ErrorMessage="Invalid Email" OnServerValidate="emailcheck" />
                    </div>
                    <div class="row">
                        <asp:Label ID="LblMessageSent" runat="server" ></asp:Label>
                    </div>

                    <div class="row">
                        Please enter your contacts Email Address seperated by comma &quot;,&quot; or colon &quot;:&quot;.
                        <br />
                        <asp:TextBox CssClass="form-control" Wrap="true" ID="recipient_list" runat="server" Font-Italic="True"
                            ForeColor="#0066FF"  TextMode="MultiLine" ClientIDMode="Static"></asp:TextBox>

                    </div>
                    <div class="row">
                         <label>Message</label>
                        <asp:TextBox CssClass="form-control" Wrap="true" ID="TextBox1" runat="server" Font-Italic="False"
                            ForeColor="#0066FF"  TextMode="MultiLine" Width="225px"></asp:TextBox>
                 <label>   Please Key in Your Message and Click
                   
                        Send Invite Message to send Message to all your email address.</label>
                        <br />
                        <asp:Button CssClass="btn btn-primary" ID="ButtonMessage" runat="server" OnClick="ButtonMessage_Click"
                            Text=" Send Invite Message " />
                        <br />
                        <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" OnClick="Button1_Click"
                            Text=" Next Page " Visible="false" />
                     
                      
                    </div>
                    </div>
                </div>

                </div>

                
           

            </asp:Panel>

        </ContentTemplate>
    </asp:UpdatePanel>


</asp:Content>



