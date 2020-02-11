<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Defaultupload.aspx.cs" Inherits="MAMIH.Defaultupload" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">

    <style>
        .carousel-inner img {
            width: 100%;
        }
    </style>
    <link rel="stylesheet" href="/css/flexslider.css" type="text/css">



    <script src="/js/jquery.flexslider.js"></script>
    <script lang="javascript">
        //Trim the input text
        function Trim(input) {
            var lre = /^\s*/;
            var rre = /\s*$/;
            input = input.replace(lre, "");
            input = input.replace(rre, "");
            return input;
        }

        // filter the files before Uploading for text file only  
        function CheckForTestFile() {
            var file = document.getElementById('<%=FileUpload1.ClientID%>');
            var fileName = file.value;
            //Checking for file browsed or not 
            if (Trim(fileName) == '') {
                alert("Please select a file to upload!!!");
                file.focus();
                return false;
            }

            //Setting the extension array for diff. type of text files 
            var extArray = new Array(".txt", ".doc", ".rtf", ".pdf", ".sxw", ".odt",
                ".stw", ".html", ".htm", ".sdw", ".vor");
            extArray = new Array(".jpg", ".jpeg", ".png");

            //getting the file name
            while (fileName.indexOf("\\") != -1)
                fileName = fileName.slice(fileName.indexOf("\\") + 1);

            //Getting the file extension                     
            var ext = fileName.slice(fileName.indexOf(".")).toLowerCase();

            //dating extension with our given extensions.
            for (var i = 0; i < extArray.length; i++) {
                if (extArray[i] == ext) {
                    return true;
                }
            }
            alert("Please only upload files that end in types:  "
                + (extArray.join("  ")) + "\nPlease select a new "
                + "file to upload and submit again.");
            file.focus();
            return false;
        }
        function CheckForTestFilenewupload() {
            var file = document.getElementById('<%=UploadButton.ClientID%>');
            var fileName = path = file.value;
            //Checking for file browsed or not 
            if (Trim(fileName) == '') {
                alert("Please select a file to upload!!!");
                file.focus();
                return false;
            }

            //Setting the extension array for diff. type of text files 
            var extArray = new Array(".txt", ".doc", ".rtf", ".pdf", ".sxw", ".odt",
                ".stw", ".html", ".htm", ".sdw", ".vor");
            extArray = new Array(".jpg", ".jpeg", ".png");



            //Getting the file extension                     
            var ext = path.substring(path.lastIndexOf(".") + 1, path.length).toLowerCase();

            //dating extension with our given extensions.
            for (var i = 0; i < extArray.length; i++) {
                if (extArray[i].toLowerCase() == ext.toLowerCase()) {
                    return true;
                }
            }
            alert("Please only upload files that end in types:  "
                + (extArray.join("  ")) + "\nPlease select a new "
                + "file to upload and submit again.");
            file.focus();
            return false;
        }
    </script>
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <input id="Hidden1" runat="server" type="hidden" />
            </div>

            <div class="col-lg-3 col-md-4">


                <label>Click here to upload Images... </label>
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button CssClass="btn btn-primary" ID="UploadButton" runat="server" OnClick="UploadButton_Click" Text="Upload JPG or PNG  file"
                    Width="164px" OnClientClick="return CheckForTestFile();"></asp:Button>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-3 col-md-4">
                <asp:Button CssClass="btn btn-primary" ID="Button1"
                    Text="Refresh"
                    runat="server" OnClick="Button1_Click1"></asp:Button>
            </div>
        </div>
        <div class="row">

            <div class="col-lg-3 col-md-4">
                <asp:Label ID="lblUploadErr" runat="server" Text=""></asp:Label>
            </div>
            <div>
            </div>





        </div>


    </div>

    <div class="row">
        <div class="col-lg-12 col-md-12">
            <asp:Panel CssClass="container" ID="pHeader" runat="server" Width="95%">
                <div id="divFileProgressContainer" style="height: 45px;"></div>
                <asp:Label ID="lblText" runat="server" />
                <h4>
                    <label>Upload  Your Pictures Here for your Matrimony Profile. </label>
                    Make sure Pictures are  not larger than 800 X 600 Pixels</h4>

                <ul>
                    <li>Size Should not exceed 200 mb for each File (Jpg or PNG  Files only) .No other file 
                   format is supported .</li>
                    <li>Click on Expand Collapse Button to see and hide Your Picture</li>
                </ul>

            </asp:Panel>
            <asp:Button CssClass="btn btn-primary" ID="btnClick" runat="server" OnClick="btnClick_Click"
                Text="Expand/Collapse Picture Panel" />
            <asp:Button CssClass="btn btn-primary" ID="btnvp"
                runat="server" Text="View Profile" OnClick="btnvp_Click" />
            <asp:Button CssClass="btn btn-primary" ID="Btnrefresh1" runat="server" Text="Refresh all Pictures " OnClick="Btnrefresh_Click" />
            <asp:Button CssClass="btn btn-primary" ID="ButtonDelete" runat="server" Text="Delete all Pictures " OnClick="BtnDelete_Click" />
        </div>
    </div>

    <div class="row">
        <asp:Panel CssClass="container" ID="pBody" runat="server" GroupingText="Picture Panel " Width="95%">
            <asp:DataList ID="dlUserProfilesgallery" runat="server"
                OnCancelCommand="dlUserProfilesgallery_CancelCommand"
                OnDeleteCommand="dlUserProfilesgallery_DeleteCommand"
                OnEditCommand="dlUserProfilesgallery_EditCommand"
                OnUpdateCommand="dlUserProfilesgallery_UpdateCommand"
                DataKeyField="ModuleID"
                BorderWidth="1px" BorderStyle="Solid" Width="100%">
                <HeaderStyle BackColor="Maroon" ForeColor="White" />


                <HeaderTemplate>
                    <div>
                    </div>
                </HeaderTemplate>

                <ItemTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-4">

                                <asp:Button CssClass="btn btn-primary" ID="DeleteButton" runat="server" CommandName="Delete"
                                    Text="Delete" OnClientClick="return confirm('Are You Sure to Delete?')" />
                                <asp:Button CssClass="btn btn-primary" ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                <label>Pic Id: </label>
                                <asp:Label ID="ModuleIDLabel" runat="server" Text='<%# Eval("ModuleID") %>' />
                            </div>
                            <div class="col-lg-3 col-md-4">
                                <label>Pic Id: </label>
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("UserId") %>' />
                            </div>

                            <div class="col-lg-3 col-md-4">
                                <label>Caption: </label>
                                <asp:Label ID="captionLabel" runat="server" Text='<%# Eval("Caption") %>' />
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                <label>Description: </label>
                                <asp:Label ID="descLabel" runat="server" Text='<%# Eval("Description") %>' />
                            </div>
                        </div>




                        <div class="row">
                            <div class="col-lg-12 col-md-12">
                                <div class='imagewrapper'>
                                    <label>Picture File </label>
                                    <br />


                                    <img class='imagewrapperimg' src='<%# util.checkimage( System.Configuration.ConfigurationManager.AppSettings["ImagesFolder"] , Eval("ImageFile").ToString() ) %>' border="0" id="Img1" alt='<%# Eval("Caption") %>' />

                                </div>
                            </div>


                        </div>
                    </div>
                    <hr />
                </ItemTemplate>
                <EditItemTemplate>
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                <asp:Button CssClass="btn btn-primary" ID="UpdateButton" runat="server" CommandName="Update"
                                    Text="Update" />
                                <asp:Button CssClass="btn btn-primary" ID="CancelButton" runat="server" CommandName="Cancel"
                                    Text="Cancel" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                You are editing : Pic Id  
        
                                <asp:Label ID="ModuleIDLabel" runat="server" Text='<%# Eval("ModuleID") %>' />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                Caption:
        
                                <asp:TextBox CssClass="form-control" Wrap="true" ID="Caption" runat="server" Text='<%# Bind("Caption") %>' />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                Description:
        
                                <asp:TextBox CssClass="form-control" Wrap="true" ID="txtDescription" runat="server" Width="80%" Text='<%# Bind("Description") %>' />
                            </div>

                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4">
                                <asp:CheckBox ID="CheckBoxDefault" runat="server" Text="Is this the default image for Profile" Checked="true" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-3 col-md-4">

                                <div class='imagewrapper'>
                                    Picture File
        
                                    <label />
                                    <img class='imagewrapperimg' src='<%# util.checkimage( System.Configuration.ConfigurationManager.AppSettings["ImagesFolder"] , Eval("ImageFile").ToString() ) %>' border="0" id="Img1" alt='<%# Eval("Caption") %>' />

                                </div>

                            </div>
                        </div>
                    </div>
                    <hr />
                </EditItemTemplate>
                <FooterTemplate>
                    <hr />
                </FooterTemplate>
            </asp:DataList>
        </asp:Panel>



    </div>


  <div class="row">
              <div class="col-lg-12">
               <div class="flexslider carousel">
  <ul class="slides">
                        <asp:Repeater ID="Repeater1" runat="server">
                            <ItemTemplate>
                                <li>
                                    <img id="Image1"   src='<%# util.checkimage( System.Configuration.ConfigurationManager.AppSettings["ImagesFolder"] , Eval("ImageFile").ToString() ) %>' runat="server"  alt='<%# Eval("Caption") %>' />
<div class="open"><%# Eval("Caption") %></div>
</li>
                               
                            </ItemTemplate>
                        </asp:Repeater>
                   </ul>
</div><script>
          $(window).on("load", function () {
              $('.flexslider').flexslider({
                  controlNav: true,
                  directionNav: false,
                  pauseOnHover: true,
                  pauseOnAction: false,
                  animation: "slide",
                  animationLoop: false,
                  itemWidth: 400,
                  itemMargin: 5
              });
          });
</script></div>
            </div>




</asp:Content>
