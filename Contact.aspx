<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="MAMIH.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Panel CssClass="container" ID="Panel1" runat="server" Width="95%" GroupingText="ayqdating Contact Us  Page" ToolTip="ayqdating">


                <div>
                    <div class="form-group">
                        <label class="control-label ">Subject:</label>
                        Mandatory
       
        <asp:RequiredFieldValidator ID="SubjectReqValidator" runat="server" ControlToValidate="Subject" ErrorMessage="You must provide a value for Subject" ForeColor="Red" SetFocusOnError="true" ValidationGroup="EnterComment"></asp:RequiredFieldValidator>
                        <asp:TextBox CssClass="form-control" ID="Subject" runat="server" Columns="40" Wrap="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label ">Email:</label>
                        Mandatory
        
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Email" ErrorMessage="You must provide a value for Email" ForeColor="Red" SetFocusOnError="true" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="EnterComment" />
                        <asp:TextBox CssClass="form-control" ID="Email" runat="server" Columns="20" Wrap="true"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label class="control-label ">Body:</label>
                        Mandatory
        
            <asp:RequiredFieldValidator ID="BodyReqValidator" runat="server" ControlToValidate="Body" ErrorMessage="You must provide a value for Body" ForeColor="Red" SetFocusOnError="true" ValidationGroup="EnterComment"></asp:RequiredFieldValidator>
                        <asp:TextBox CssClass="form-control" ID="Body" runat="server" Height="39px" Rows="4" TextMode="MultiLine" Width="95%" Wrap="true"></asp:TextBox>
                        <asp:Button CssClass="btn btn-primary" ID="PostCommentButton" runat="server" OnClick="PostCommentButton_Click" Text="Send Message " ValidationGroup="EnterComment" />
                    </div>

                </div>

                <asp:Label ID="Label2" runat="server" Text="Only Admins can see beyond this line"></asp:Label>

                <asp:ListView ID="CommentList" Visible="False" runat="server" DataSourceID="EntityDataSource1" EnableViewState="False" DataKeyNames="CommentId">
                    <LayoutTemplate>
                        <div id="itemPlaceholderContainer" runat="server" style="">
                            <span runat="server" id="itemPlaceholder" />
                        </div>
                        <div style="">
                            <asp:DataPager ID="DataPager1" CssClass="pager" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>

                    <AlternatingItemTemplate>
                        <span style="">CommentId:
            <asp:Label ID="CommentIdLabel" runat="server" Text='<%# Eval("CommentId") %>' />
                            <label />
                            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                            <label />
                            Body:
            <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' />
                            <label />
                            CommentDate:
            <asp:Label ID="CommentDateLabel" runat="server" Text='<%# Eval("CommentDate") %>' />
                            <label />
                            UserId:
            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <label />
                            <label />
                        </span>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <span style="">CommentId:
            <asp:Label ID="CommentIdLabel1" runat="server" Text='<%# Eval("CommentId") %>' />
                            <label />
                            Subject:
            <asp:TextBox CssClass="form-control" ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                            <label />
                            Body:
            <asp:TextBox CssClass="form-control" ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>' />
                            <label />
                            CommentDate:
            <asp:TextBox CssClass="form-control" ID="CommentDateTextBox" runat="server" Text='<%# Bind("CommentDate") %>' />
                            <label />
                            UserId:
            <asp:TextBox CssClass="form-control" ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-primary" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            <label />
                            <label />
                        </span>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <span>No data was returned.</span>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <span style="">CommentId:
            <asp:TextBox CssClass="form-control" ID="CommentIdTextBox" runat="server" Text='<%# Bind("CommentId") %>' />
                            <label />
                            Subject:
            <asp:TextBox CssClass="form-control" ID="SubjectTextBox" runat="server" Text='<%# Bind("Subject") %>' />
                            <label />
                            Body:
            <asp:TextBox CssClass="form-control" ID="BodyTextBox" runat="server" Text='<%# Bind("Body") %>' />
                            <label />
                            CommentDate:
            <asp:TextBox CssClass="form-control" ID="CommentDateTextBox" runat="server" Text='<%# Bind("CommentDate") %>' />
                            <label />
                            UserId:
            <asp:TextBox CssClass="form-control" ID="UserIdTextBox" runat="server" Text='<%# Bind("UserId") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-primary" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            <label />
                            <label />
                        </span>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <span style="">CommentId:
            <asp:Label ID="CommentIdLabel" runat="server" Text='<%# Eval("CommentId") %>' />
                            <label />
                            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                            <label />
                            Body:
            <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' />
                            <label />
                            CommentDate:
            <asp:Label ID="CommentDateLabel" runat="server" Text='<%# Eval("CommentDate") %>' />
                            <label />
                            UserId:
            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <label />
                            <label />
                        </span>
                    </ItemTemplate>
                    <SelectedItemTemplate>
                        <span style="">CommentId:
            <asp:Label ID="CommentIdLabel" runat="server" Text='<%# Eval("CommentId") %>' />
                            <label />
                            Subject:
            <asp:Label ID="SubjectLabel" runat="server" Text='<%# Eval("Subject") %>' />
                            <label />
                            Body:
            <asp:Label ID="BodyLabel" runat="server" Text='<%# Eval("Body") %>' />
                            <label />
                            CommentDate:
            <asp:Label ID="CommentDateLabel" runat="server" Text='<%# Eval("CommentDate") %>' />
                            <label />
                            UserId:
            <asp:Label ID="UserIdLabel" runat="server" Text='<%# Eval("UserId") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                            <label />
                            <label />
                        </span>
                    </SelectedItemTemplate>
                </asp:ListView>
                <p>
                </p>


                <asp:ListView ID="ListView1" runat="server" DataKeyNames="MessageId" DataSourceID="EntityDataSource3" Visible="False">
                    <AlternatingItemTemplate>
                        <li style="">MessageId:
                 <asp:Label ID="MessageIdLabel" runat="server" Text='<%# Eval("MessageId") %>' />
                            <label />
                            MessageBody:
                 <asp:Label ID="MessageBodyLabel" runat="server" Text='<%# Eval("MessageBody") %>' />
                            <label />
                            sender:
                 <asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' />
                            <label />
                            reciever:
                 <asp:Label ID="recieverLabel" runat="server" Text='<%# Eval("reciever") %>' />
                            <label />
                            MessageDate:
                 <asp:Label ID="MessageDateLabel" runat="server" Text='<%# Eval("MessageDate") %>' />
                            <label />
                            senderEmail:
                 <asp:Label ID="senderEmailLabel" runat="server" Text='<%# Eval("senderEmail") %>' />
                            <label />
                            recieverEmail:
                 <asp:Label ID="recieverEmailLabel" runat="server" Text='<%# Eval("recieverEmail") %>' />
                            <label />
                            MessageType:
                 <asp:Label ID="MessageTypeLabel" runat="server" Text='<%# Eval("MessageType") %>' />
                            <label />
                            IsPremiermember:
                 <asp:Label ID="IsPremiermemberLabel" runat="server" Text='<%# Eval("IsPremiermember") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </li>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <li style="">MessageId:
                 <asp:Label ID="MessageIdLabel1" runat="server" Text='<%# Eval("MessageId") %>' />
                            <label />
                            MessageBody:
                 <asp:TextBox CssClass="form-control" ID="MessageBodyTextBox" runat="server" Text='<%# Bind("MessageBody") %>' />
                            <label />
                            sender:
                 <asp:TextBox CssClass="form-control" ID="senderTextBox" runat="server" Text='<%# Bind("sender") %>' />
                            <label />
                            reciever:
                 <asp:TextBox CssClass="form-control" ID="recieverTextBox" runat="server" Text='<%# Bind("reciever") %>' />
                            <label />
                            MessageDate:
                 <asp:TextBox CssClass="form-control" ID="MessageDateTextBox" runat="server" Text='<%# Bind("MessageDate") %>' />
                            <label />
                            senderEmail:
                 <asp:TextBox CssClass="form-control" ID="senderEmailTextBox" runat="server" Text='<%# Bind("senderEmail") %>' />
                            <label />
                            recieverEmail:
                 <asp:TextBox CssClass="form-control" ID="recieverEmailTextBox" runat="server" Text='<%# Bind("recieverEmail") %>' />
                            <label />
                            MessageType:
                 <asp:TextBox CssClass="form-control" ID="MessageTypeTextBox" runat="server" Text='<%# Bind("MessageType") %>' />
                            <label />
                            IsPremiermember:
                 <asp:TextBox CssClass="form-control" ID="IsPremiermemberTextBox" runat="server" Text='<%# Bind("IsPremiermember") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                            <asp:Button CssClass="btn btn-primary" ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                        </li>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        No data was returned.
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <li style="">MessageBody:
                 <asp:TextBox CssClass="form-control" ID="MessageBodyTextBox" runat="server" Text='<%# Bind("MessageBody") %>' />
                            <label />
                            sender:
                 <asp:TextBox CssClass="form-control" ID="senderTextBox" runat="server" Text='<%# Bind("sender") %>' />
                            <label />
                            reciever:
                 <asp:TextBox CssClass="form-control" ID="recieverTextBox" runat="server" Text='<%# Bind("reciever") %>' />
                            <label />
                            MessageDate:
                 <asp:TextBox CssClass="form-control" ID="MessageDateTextBox" runat="server" Text='<%# Bind("MessageDate") %>' />
                            <label />
                            senderEmail:
                 <asp:TextBox CssClass="form-control" ID="senderEmailTextBox" runat="server" Text='<%# Bind("senderEmail") %>' />
                            <label />
                            recieverEmail:
                 <asp:TextBox CssClass="form-control" ID="recieverEmailTextBox" runat="server" Text='<%# Bind("recieverEmail") %>' />
                            <label />
                            MessageType:
                 <asp:TextBox CssClass="form-control" ID="MessageTypeTextBox" runat="server" Text='<%# Bind("MessageType") %>' />
                            <label />
                            IsPremiermember:
                 <asp:TextBox CssClass="form-control" ID="IsPremiermemberTextBox" runat="server" Text='<%# Bind("IsPremiermember") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                            <asp:Button CssClass="btn btn-primary" ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                        </li>
                    </InsertItemTemplate>
                    <ItemSeparatorTemplate>
                        <label />
                    </ItemSeparatorTemplate>
                    <ItemTemplate>
                        <li style="">MessageId:
                 <asp:Label ID="MessageIdLabel" runat="server" Text='<%# Eval("MessageId") %>' />
                            <label />
                            MessageBody:
                 <asp:Label ID="MessageBodyLabel" runat="server" Text='<%# Eval("MessageBody") %>' />
                            <label />
                            sender:
                 <asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' />
                            <label />
                            reciever:
                 <asp:Label ID="recieverLabel" runat="server" Text='<%# Eval("reciever") %>' />
                            <label />
                            MessageDate:
                 <asp:Label ID="MessageDateLabel" runat="server" Text='<%# Eval("MessageDate") %>' />
                            <label />
                            senderEmail:
                 <asp:Label ID="senderEmailLabel" runat="server" Text='<%# Eval("senderEmail") %>' />
                            <label />
                            recieverEmail:
                 <asp:Label ID="recieverEmailLabel" runat="server" Text='<%# Eval("recieverEmail") %>' />
                            <label />
                            MessageType:
                 <asp:Label ID="MessageTypeLabel" runat="server" Text='<%# Eval("MessageType") %>' />
                            <label />
                            IsPremiermember:
                 <asp:Label ID="IsPremiermemberLabel" runat="server" Text='<%# Eval("IsPremiermember") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </li>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <ul id="itemPlaceholderContainer" runat="server" style="">
                            <li runat="server" id="itemPlaceholder" />
                        </ul>
                        <div style="">
                            <asp:DataPager ID="DataPager1" CssClass="pager" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </div>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <li style="">MessageId:
                 <asp:Label ID="MessageIdLabel" runat="server" Text='<%# Eval("MessageId") %>' />
                            <label />
                            MessageBody:
                 <asp:Label ID="MessageBodyLabel" runat="server" Text='<%# Eval("MessageBody") %>' />
                            <label />
                            sender:
                 <asp:Label ID="senderLabel" runat="server" Text='<%# Eval("sender") %>' />
                            <label />
                            reciever:
                 <asp:Label ID="recieverLabel" runat="server" Text='<%# Eval("reciever") %>' />
                            <label />
                            MessageDate:
                 <asp:Label ID="MessageDateLabel" runat="server" Text='<%# Eval("MessageDate") %>' />
                            <label />
                            senderEmail:
                 <asp:Label ID="senderEmailLabel" runat="server" Text='<%# Eval("senderEmail") %>' />
                            <label />
                            recieverEmail:
                 <asp:Label ID="recieverEmailLabel" runat="server" Text='<%# Eval("recieverEmail") %>' />
                            <label />
                            MessageType:
                 <asp:Label ID="MessageTypeLabel" runat="server" Text='<%# Eval("MessageType") %>' />
                            <label />
                            IsPremiermember:
                 <asp:Label ID="IsPremiermemberLabel" runat="server" Text='<%# Eval("IsPremiermember") %>' />
                            <label />
                            <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        </li>
                    </SelectedItemTemplate>
                </asp:ListView>



            </asp:Panel>
            <ef:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=mmsecurityEntitiesdb" DefaultContainerName="mmsecurityEntitiesdb"
                EnableDelete="True" EnableInsert="True" EnableUpdate="True"
                EntitySetName="GuestbookComments" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="true">
                <WhereParameters>
                </WhereParameters>
            </ef:EntityDataSource>
            <ef:EntityDataSource ID="EntityDataSource3" runat="server" ConnectionString="name=mmsecurityEntitiesdb" DefaultContainerName="mmsecurityEntitiesdb"
                EnableDelete="True" EnableInsert="True" EnableUpdate="True"
                EntitySetName="InBoxMessages" AutoGenerateOrderByClause="True" AutoGenerateWhereClause="true">
                <WhereParameters>
                </WhereParameters>
            </ef:EntityDataSource>
</asp:Content>
