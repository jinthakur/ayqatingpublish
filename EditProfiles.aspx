<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProfiles.aspx.cs" Inherits="MAMIH.EditProfiles" %>

<asp:content id="Content1" contentplaceholderid="MainContent" runat="Server">
    <asp:label  id ="Label1" runat="server" text=" "></asp:label>
        <div >
            <h2>Create/Edit Matrimony Profile </h2>
           <h3>  <label>   Step 1 :Please complete your profile.</label>
            <label>      Step 2 :Please upload your profile picture.<a href="Defaultupload.aspx">Upload pictures</a></label>
         <label>         If your profile is not complete you cannot use Search and picture match features  as
        Search is based on Location,Gender,City ,Country and Zip code.</label>
            </h3>
          <div class="form-group">        
      <div class="form-group">
                <asp:Button ID="ButtonLoadPreviousValue" runat="server" OnClick="ButtonLoadPreviousValue_Click"                    text=" Upload Existing Profile"  CssClass="btn btn-primary" />

           </div>
              </div>

            <asp:Panel CssClass="container"  ID="Panel2" runat="server" Wrap="true" ToolTip="Profile " >
                    
                             <div class="form-group">
                                  <label class="control-label " >HomeTown Zip Code:</label>
                                 <asp:TextBox class="form-control" Wrap="true" MaxLength="7"
                                     ID="HomeTownpostalcode" runat="server"></asp:TextBox>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator9" runat="server" ControlToValidate="HomeTownpostalcode"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                        
                             <div class="form-group">
                                  <label class="control-label " >Date Of Birth: Date in mm/dd/yyyy Format  </label>
                                <asp:TextBox class="form-control" Wrap="true" ID="dateofbirth" runat="server" />
                                Mandatory
                                <asp:RegularExpressionValidator ForeColor="Red" ControlToValidate="dateofbirth" ID="RegularExpressionValidator2"
                                    SetFocusOnError="true" runat="server" ErrorMessage="Incorrect Date Time Format"
                                    ValidationExpression="^(0[1-9]|1[012])[- /.](0[1-9]|[12][0-9]|3[01])[- /.](19|20)\d\d$"></asp:RegularExpressionValidator>
                            </div>
                        
                            <div class="form-group">
                                <p>
                                      <label class="control-label " >Video URL (Google Videos ,Youtube) (optional):</label>
                                    <asp:TextBox class="form-control" Wrap="true" ID="HomepageUrl" Columns="40" runat="server"></asp:TextBox>
                                </p>
                            </div>
                        
         </asp:Panel>
         <asp:Panel CssClass="container" ID="Panel3" runat="server" Wrap="true" ToolTip="Signature Panel" GroupingText="Signature Panel">
               
                         <div class="form-group">
                                <p>
                                      <label class="control-label " >Signature/Initial:</label>
                                    <asp:TextBox class="form-control" Wrap="true" ID="Signature" TextMode="MultiLine" Width="84%" Rows="5"
                                        runat="server">Signature  </asp:TextBox>
                                    Mandatory  
                                    <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator10" runat="server" ControlToValidate="Signature"
                                        ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                                </p>
                                </label>
                            </div>
                      
                   
              </asp:Panel> 

                <asp:Panel CssClass="container" ID="Panel4" runat="server" Wrap="true" ToolTip="Location" GroupingText="Location Panel">
                     <div class="form-group">
                            
                                  <label class="control-label " >Work Postal code/Zip</label> </label>
                            
                                <input type="text" class="form-control" runat="server" maxlength="7" size="17" name="postalcode" style="width: 150px;"
                                    id="postalcode" />
                            </div>
                              <div class="form-group">
                                  <label class="control-label " >Constituent state</label>
                           
                                <input type="text" class="form-control" runat="server" maxlength="30" size="17" style="width: 150px;"
                                    id="State" />
                            </div>
                            
                        
                              <div class="form-group">
                                  <label class="control-label " >City</label>
                            
                                <input type="text" class="form-control" runat="server" maxlength="30" size="17" name="city" style="width: 150px;"
                                    id="city" />
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator12" runat="server" ControlToValidate="city"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                       <div class="form-group">
                             <label class="control-label " >
                                Country
                            </label>
                            <div>
                                <select class="form-control" style="width: 177px;" id="Country" name="Country" runat="server">
                                    <option value="">--Select--</option>
                                    <option value="AF">Afghanistan</option>
                                    <option value="AL">Albania</option>
                                    <option value="DZ">Algeria</option>
                                    <option value="AS">American Samoa</option>
                                    <option value="AD">Andorra</option>
                                    <option value="AG">Angola</option>
                                    <option value="AI">Anguilla</option>
                                    <option value="AG">Antigua &amp; Barbuda</option>
                                    <option value="AR">Argentina</option>
                                    <option value="AA">Armenia</option>
                                    <option value="AW">Aruba</option>
                                    <option value="AU">Australia</option>
                                    <option value="AT">Austria</option>
                                    <option value="AZ">Azerbaijan</option>
                                    <option value="BS">Bahamas</option>
                                    <option value="BH">Bahrain</option>
                                    <option value="BD">Bangladesh</option>
                                    <option value="BB">Barbados</option>
                                    <option value="BY">Belarus</option>
                                    <option value="BE">Belgium</option>
                                    <option value="BZ">Belize</option>
                                    <option value="BJ">Benin</option>
                                    <option value="BM">Bermuda</option>
                                    <option value="BT">Bhutan</option>
                                    <option value="BO">Bolivia</option>
                                    <option value="BL">Bonaire</option>
                                    <option value="BA">Bosnia &amp; Herzegovina</option>
                                    <option value="BW">Botswana</option>
                                    <option value="BR">Brazil</option>
                                    <option value="BC">British Indian Ocean Ter</option>
                                    <option value="BN">Brunei</option>
                                    <option value="BG">Bulgaria</option>
                                    <option value="BF">Burkina Faso</option>
                                    <option value="BI">Burundi</option>
                                    <option value="KH">Cambodia</option>
                                    <option value="CM">Cameroon</option>
                                    <option value="CA">Canada</option>
                                    <option value="IC">Canary Islands</option>
                                    <option value="CV">Cape Verde</option>
                                    <option value="KY">Cayman Islands</option>
                                    <option value="CF">Central African Republic</option>
                                    <option value="TD">Chad</option>
                                    <option value="CD">Channel Islands</option>
                                    <option value="CL">Chile</option>
                                    <option value="CN">China</option>
                                    <option value="CI">Christmas Island</option>
                                    <option value="CS">Cocos Island</option>
                                    <option value="CO">Colombia</option>
                                    <option value="CC">Comoros</option>
                                    <option value="CG">Congo</option>
                                    <option value="CK">Cook Islands</option>
                                    <option value="CR">Costa Rica</option>
                                    <option value="CT">Cote D'Ivoire</option>
                                    <option value="HR">Croatia</option>
                                    <option value="CU">Cuba</option>
                                    <option value="CB">Curacao</option>
                                    <option value="CY">Cyprus</option>
                                    <option value="CZ">Czech Republic</option>
                                    <option value="DK">Denmark</option>
                                    <option value="DJ">Djibouti</option>
                                    <option value="DM">Dominica</option>
                                    <option value="DO">Dominican Republic</option>
                                    <option value="TM">East Timor</option>
                                    <option value="EC">Ecuador</option>
                                    <option value="EG">Egypt</option>
                                    <option value="SV">El Salvador</option>
                                    <option value="GQ">Equatorial Guinea</option>
                                    <option value="ER">Eritrea</option>
                                    <option value="EE">Estonia</option>
                                    <option value="ET">Ethiopia</option>
                                    <option value="FA">Falkland Islands</option>
                                    <option value="FO">Faroe Islands</option>
                                    <option value="FJ">Fiji</option>
                                    <option value="FI">Finland</option>
                                    <option value="FR">France</option>
                                    <option value="GF">French Guiana</option>
                                    <option value="PF">French Polynesia</option>
                                    <option value="FS">French Southern Ter</option>
                                    <option value="GA">Gabon</option>
                                    <option value="GM">Gambia</option>
                                    <option value="GE">Georgia</option>
                                    <option value="DE">Germany</option>
                                    <option value="GH">Ghana</option>
                                    <option value="GI">Gibraltar</option>
                                    <option value="GB">Great Britain</option>
                                    <option value="GR">Greece</option>
                                    <option value="GL">Greenland</option>
                                    <option value="GD">Grenada</option>
                                    <option value="GP">Guadeloupe</option>
                                    <option value="GU">Guam</option>
                                    <option value="GT">Guatemala</option>
                                    <option value="GN">Guinea</option>
                                    <option value="GY">Guyana</option>
                                    <option value="HT">Haiti</option>
                                    <option value="HW">Hawaii</option>
                                    <option value="HN">Honduras</option>
                                    <option value="HK">Hong Kong</option>
                                    <option value="HU">Hungary</option>
                                    <option value="IS">Iceland</option>
                                    <option value="IN">India</option>
                                    <option value="ID">Indonesia</option>
                                    <option value="IA">Iran</option>
                                    <option value="IQ">Iraq</option>
                                    <option value="IR">Ireland</option>
                                    <option value="IM">Isle of Man</option>
                                    <option value="IL">Israel</option>
                                    <option value="IT">Italy</option>
                                    <option value="JM">Jamaica</option>
                                    <option value="JP">Japan</option>
                                    <option value="JO">Jordan</option>
                                    <option value="KZ">Kazakhstan</option>
                                    <option value="KE">Kenya</option>
                                    <option value="KI">Kiribati</option>
                                    <option value="NK">Korea North</option>
                                    <option value="KS">Korea South</option>
                                    <option value="KW">Kuwait</option>
                                    <option value="KG">Kyrgyzstan</option>
                                    <option value="LA">Laos</option>
                                    <option value="LV">Latvia</option>
                                    <option value="LB">Lebanon</option>
                                    <option value="LS">Lesotho</option>
                                    <option value="LR">Liberia</option>
                                    <option value="LY">Libya</option>
                                    <option value="LI">Liechtenstein</option>
                                    <option value="LT">Lithuania</option>
                                    <option value="LU">Luxembourg</option>
                                    <option value="MO">Macau</option>
                                    <option value="MK">Macedonia</option>
                                    <option value="MG">Madagascar</option>
                                    <option value="MY">Malaysia</option>
                                    <option value="MW">Malawi</option>
                                    <option value="MV">Maldives</option>
                                    <option value="ML">Mali</option>
                                    <option value="MT">Malta</option>
                                    <option value="MH">Marshall Islands</option>
                                    <option value="MQ">Martinique</option>
                                    <option value="MR">Mauritania</option>
                                    <option value="MU">Mauritius</option>
                                    <option value="ME">Mayotte</option>
                                    <option value="MX">Mexico</option>
                                    <option value="MI">Midway Islands</option>
                                    <option value="MD">Moldova</option>
                                    <option value="MC">Monaco</option>
                                    <option value="MN">Mongolia</option>
                                    <option value="MS">Montserrat</option>
                                    <option value="MA">Morocco</option>
                                    <option value="MZ">Mozambique</option>
                                    <option value="MM">Myanmar</option>
                                    <option value="NA">Nambia</option>
                                    <option value="NU">Nauru</option>
                                    <option value="NP">Nepal</option>
                                    <option value="AN">Netherland Antilles</option>
                                    <option value="NL">Netherlands (Holland, Europe)</option>
                                    <option value="NV">Nevis</option>
                                    <option value="NC">New Caledonia</option>
                                    <option value="NZ">New Zealand</option>
                                    <option value="NI">Nicaragua</option>
                                    <option value="NE">Niger</option>
                                    <option value="NG">Nigeria</option>
                                    <option value="NW">Niue</option>
                                    <option value="NF">Norfolk Island</option>
                                    <option value="NO">Norway</option>
                                    <option value="OM">Oman</option>
                                    <option value="PK">Pakistan</option>
                                    <option value="PW">Palau Island</option>
                                    <option value="PS">Palestine</option>
                                    <option value="PA">Panama</option>
                                    <option value="PG">Papua New Guinea</option>
                                    <option value="PY">Paraguay</option>
                                    <option value="PE">Peru</option>
                                    <option value="PH">Philippines</option>
                                    <option value="PO">Pitcairn Island</option>
                                    <option value="PL">Poland</option>
                                    <option value="PT">Portugal</option>
                                    <option value="PR">Puerto Rico</option>
                                    <option value="QA">Qatar</option>
                                    <option value="ME">Republic of Montenegro</option>
                                    <option value="RS">Republic of Serbia</option>
                                    <option value="RE">Reunion</option>
                                    <option value="RO">Romania</option>
                                    <option value="RU">Russia</option>
                                    <option value="RW">Rwanda</option>
                                    <option value="NT">St Barthelemy</option>
                                    <option value="EU">St Eustatius</option>
                                    <option value="HE">St Helena</option>
                                    <option value="KN">St Kitts-Nevis</option>
                                    <option value="LC">St Lucia</option>
                                    <option value="MB">St Maarten</option>
                                    <option value="PM">St Pierre &amp; Miquelon</option>
                                    <option value="VC">St Vincent &amp; Grenadines</option>
                                    <option value="SP">Saipan</option>
                                    <option value="SO">Samoa</option>
                                    <option value="AS">Samoa American</option>
                                    <option value="SM">San Marino</option>
                                    <option value="ST">Sao Tome &amp; Principe</option>
                                    <option value="SA">Saudi Arabia</option>
                                    <option value="SN">Senegal</option>
                                    <option value="SC">Seychelles</option>
                                    <option value="SL">Sierra Leone</option>
                                    <option value="SG">Singapore</option>
                                    <option value="SK">Slovakia</option>
                                    <option value="SI">Slovenia</option>
                                    <option value="SB">Solomon Islands</option>
                                    <option value="OI">Somalia</option>
                                    <option value="ZA">South Africa</option>
                                    <option value="ES">Spain</option>
                                    <option value="LK">Sri Lanka</option>
                                    <option value="SD">Sudan</option>
                                    <option value="SR">Suriname</option>
                                    <option value="SZ">Swaziland</option>
                                    <option value="SE">Sweden</option>
                                    <option value="CH">Switzerland</option>
                                    <option value="SY">Syria</option>
                                    <option value="TA">Tahiti</option>
                                    <option value="TW">Taiwan</option>
                                    <option value="TJ">Tajikistan</option>
                                    <option value="TZ">Tanzania</option>
                                    <option value="TH">Thailand</option>
                                    <option value="TG">Togo</option>
                                    <option value="TK">Tokelau</option>
                                    <option value="TO">Tonga</option>
                                    <option value="TT">Trinidad &amp; Tobago</option>
                                    <option value="TN">Tunisia</option>
                                    <option value="TR">Turkey</option>
                                    <option value="TU">Turkmenistan</option>
                                    <option value="TC">Turks &amp; Caicos Is</option>
                                    <option value="TV">Tuvalu</option>
                                    <option value="UG">Uganda</option>
                                    <option value="UA">Ukraine</option>
                                    <option value="AE">United Arab Emirates</option>
                                    <option value="GB">United Kingdom</option>
                                    <option value="U.S.A">United States of America</option>
                                    <option value="UY">Uruguay</option>
                                    <option value="UZ">Uzbekistan</option>
                                    <option value="VU">Vanuatu</option>
                                    <option value="VS">Vatican City State</option>
                                    <option value="VE">Venezuela</option>
                                    <option value="VN">Vietnam</option>
                                    <option value="VB">Virgin Islands (Brit)</option>
                                    <option value="VA">Virgin Islands (USA)</option>
                                    <option value="WK">Wake Island</option>
                                    <option value="WF">Wallis &amp; Futana Is</option>
                                    <option value="YE">Yemen</option>
                                    <option value="ZR">Zaire</option>
                                    <option value="ZM">Zambia</option>
                                    <option value="ZW">Zimbabwe</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div>
                                Mandatory
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator11" runat="server" ControlToValidate="Country"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                           </div>
                       
                </asp:Panel>
                <asp:Panel CssClass="container" ID="Panel5" runat="server" Wrap="true" ToolTip="Family Matter and Details"
                    GroupingText="Family Matter and Details">
                  
                              <div class="form-group">
                                  <label class="control-label " >Do you want children?</label>
                            
                                <select runat="server"  class="form-control" id="wantchildren" style="width: 350px;">
                                    <option selected="selected" value="Prefer Not To Say">Prefer Not To Say</option>
                                    <option value="Want children">Yes I Want children</option>
                                    <option value="Does not want children">Does not want children</option>
                                    <option value="Undecided/Open">I dont Know It's Undecided/Open</option>
                                </select>
                            </div>
                    
                </asp:Panel>
                <asp:Panel CssClass="container" ID="Panel6" runat="server" Wrap="true" ToolTip="Personal  Matter and Details"
                    GroupingText="Personal  Matter and Details">
                    
                              <div class="form-group">
                                  <label class="control-label " >Gender</label>
                           
                                <select runat="server"  class="form-control" style="width: 150px;" id="Iama">
                                    <option selected="selected" value="Male">Male</option>
                                    <option value="Female">Female</option>
                                </select>
                            </div>
                              <div class="form-group">
                                  <label class="control-label " >Marital Status</label>
                          
                                <select runat="server"  class="form-control" name="maritalstatus" style="width: 150px;" id="maritalstatus">
                                    <option selected="selected" value="Single">Single</option>
                                    <option value="Married">Married</option>
                                    <option value="Divorced">Divorced</option>
                                    <option value="Widowed">Widowed</option>
                                    <option value="Separated">Separated</option>
                                    <option value="Not Single/Not Looking">Not Single/Not Looking</option>
                                </select>
                            </div>
                           
                       
                              <div class="form-group">
                                  <label class="control-label " >Seeking</label>
                           
                                <select runat="server"  class="form-control" name="Seekinga" style="width: 150px;" id="Seekinga">
                                    <option selected="selected" value="Female">Female</option>
                                    <option value="Male">Male</option>
                                </select>
                            </div>
                              <div class="form-group">
                                  <label class="control-label " >Do you have children?</label>
                           
                                <select runat="server"  class="form-control" name="haschildren" style="width: 150px;" id="haschildren">
                                    <option selected="selected" value="Yes">Yes I have children</option>
                                    <option value="No">No</option>
                                    <option value="All my kids are 18+">All my kids are 18+</option>
                                </select>
                            </div>
                           
                        
                              <div class="form-group">
                                  <label class="control-label " >Height</label>
                           
                                <select runat="server"  class="form-control" name="height" style="width: 150px;" id="height">
                                    <option value="&lt; 152">="&lt; 5' (&lt; 152 cm)</option>
                                    <option selected="selected" value="152">5' 0" (152 cm)</option>
                                    <option value="155">5' 1" (155 cm)</option>
                                    <option value="157">5' 2" (157 cm)</option>
                                    <option value="160">5' 3" (160 cm)</option>
                                    <option value="163">5' 4" (163 cm)</option>
                                    <option value="165">5' 5" (165 cm)</option>
                                    <option value="168">5' 6" (168 cm)</option>
                                    <option value="170">5' 7" (170 cm)</option>
                                    <option value="173">5' 8" (173 cm)</option>
                                    <option value="175">5' 9" (175 cm)</option>
                                    <option value="178">5' 10" (178 cm)</option>
                                    <option value="180">5' 11" (180 cm)</option>
                                    <option value="183">6' 0" (183 cm)</option>
                                    <option value="185">6' 1" (185 cm)</option>
                                    <option value="188">6' 2"(188 cm)</option>
                                    <option value="191">6' 3" (191 cm)</option>
                                    <option value="193">6' 4" (193 cm)</option>
                                    <option value="196">6' 5" (196 cm)</option>
                                    <option value="198">6' 6" (198 cm)</option>
                                    <option value="201">6' 7" (201 cm)</option>
                                    <option value="203">6' 8" (203 cm)</option>
                                    <option value="206">6' 9" (206 cm)</option>
                                    <option value="208">6' 10" (208 cm)</option>
                                    <option value="211">6' 11" (211 cm)</option>
                                    <option value="213">7' 0" (213 cm)</option>
                                    <option value="999">&gt; 7' (&gt; 213 cm)</option>
                                </select>
                            </div>
                              <div class="form-group">
                                  <label class="control-label " >Do you smoke?</label>
                           
                                <select runat="server"  class="form-control" name="qigvnkic" style="width: 150px;" id="smoke">
                                    <option selected="selected" value="No">No</option>
                                    <option value="Occasionally">Occasionally</option>
                                    <option value="Often">Often</option>
                                </select>
                            </div>
                         
                       
                              <div class="form-group">
                                  <label class="control-label " >My Intention for Relationship</label>
                           
                                <select runat="server"  class="form-control" style="width: 150px;" name="searchtype" id="searchtype">
                                    <option  value="Long-term">Long-term</option>
                                    <option value="Dating">Dating</option>
                                    <option value="Friends">Friends</option>
                                 
                                    <option selected="selected" value="Marriage">Marriage</option>
                                </select>
                            </div>
                              <div class="form-group">
                                  <label class="control-label " >Do you do drugs?</label>
                          
                                <select runat="server"  class="form-control" name="drugs" style="width: 150px;" id="drugs">
                                    <option selected="selected" value="No">No</option>
                                    <option value="Socially">Socially</option>
                                    <option value="Often ">Often (&gt;3 times/week)</option>
                                </select>
                            </div>
                           
                      
                              <div class="form-group">
                                  <label class="control-label " >Hair</label>
                          
                                <select runat="server"  class="form-control" name="haircolor" style="width: 150px;" id="haircolor">
                                    <option value="Black">Black</option>
                                    <option selected="selected" value="Blond">Blond</option>
                                    <option value="Brown">Brown</option>
                                    <option value="Red">Red</option>
                                    <option value="Gray">Gray</option>
                                    <option value="Bald">Bald</option>
                                    <option value="Mixed Color">Mixed Color</option>
                                </select>
                            </div>
                              <div class="form-group">
                                  <label class="control-label " >Do you drink?</label>
                           
                                <select runat="server"  class="form-control" name="drink" style="width: 150px;" id="drink">
                                    <option selected="selected" value="Prefer Not To Say">Prefer Not To Say</option>
                                    <option value="No">No</option>
                                    <option value="Socially">Socially</option>
                                    <option value="Often">Often (&gt;3 times/week)</option>
                                </select>
                            </div>
                         
                              <div class="form-group">
                                  <label class="control-label " >Body Type</label>
                            
                                <select runat="server"  class="form-control" name="body" style="width: 150px;" id="body">
                                    <option selected="selected" value="Prefer Not To Say">Prefer Not To Say</option>
                                    <option value="Thin">Thin</option>
                                    <option value="Athletic">Athletic</option>
                                    <option value="Average">Average</option>
                                    <option value="A Few Extra Pounds">A Few Extra Pounds</option>
                                    <option value="Big Tall/BBW">Big &amp; Tall/BBW</option>
                                </select>
                            </div>
                            <div class="form-group">
                                  <label class="control-label " >Faith</label>
                            
                                <select runat="server"  class="form-control" style="width: 150px;" name="religion" id="religion">
                                    <option value="NON-RELIGIOUS">NON-RELIGIOUS</option>
                                    <option value="NEW AGE">NEW AGE</option>
                                    <option value="ISLAMIC">ISLAMIC</option>
                                    <option value="JEWISH">JEWISH</option>
                                    <option selected="SELECTED" value="CATHOLIC">CATHOLIC</option>
                                    <option value="BUDDHIST">BUDDHIST</option>
                                    <option value="HINDU">HINDU</option>
                                    <option value="ANGLICAN">ANGLICAN</option>
                                    <option value="SIKH">SIKH</option>
                                    <option value="METHODIST">METHODIST</option>
                                    <option value="CHRISTIAN - OTHER">CHRISTIAN - OTHER</option>
                                    <option value="BAPTIST">BAPTIST</option>
                                    <option value="LUTHERAN">LUTHERAN</option>
                                    <option value="PRESBYTERIAN">PRESBYTERIAN</option>
                                    <option value="OTHER">OTHER</option>
                                </select>
                            </div>
                           
                              <div class="form-group">
                                  <label class="control-label " >Ethnicity</label>
                          
                                <select runat="server"  class="form-control" name="ethnicity" style="width: 150px;" id="ethnicity">
                                    <option selected="selected" value="Prefer Not To Say">Prefer Not To Say</option>
                                    <option value="Asian">Asian</option>
                                    <option value="Black / African descent">Black African descent</option>
                                    <option value="East Indian">East Indian</option>
                                    <option value="Latino  Hispanic">Latino Hispanic</option>
                                    <option value="Middle Eastern">Middle Eastern</option>
                                    <option value="Native American">Native American</option>
                                    <option value="Pacific Islander">Pacific Islander</option>
                                    <option value="White / Caucasian">White / Caucasian</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                           <div class="form-group">
                                  <label class="control-label " >How often do you Exercise?</label>
                            
                                <select class ="form-control"  name="Exercise" runat="server" id="exercise">
                                    <option value="No answer">No answer</option>
                                    <option value="Exercise 5 or more times per week">Exercise 5 or more times per week</option>
                                    <option value="Exercise 3-4 times per week">Exercise 3-4 times per week</option>
                                    <option value="Exercise 1-2 times per week" selected="selected">Exercise 1-2 times per
                                week</option>
                                    <option value="Never">Never</option>
                                </select>
                            </div>
                           
                           
                              <div class="form-group">
                                  <label class="control-label " >Do You Own A Car?</label>
                          
                                <select runat="server"  class="form-control" style="width: 150px;" name="car" id="car">
                                    <option value="Prefer Not To Say">Prefer Not To Say</option>
                                    <option selected="selected" value="Yes">Yes</option>
                                    <option value="No">No</option>
                                </select>
                            </div>
                            <div class="form-group">
                                  <label class="control-label " >Age</label>
                           
                                <asp:TextBox class="form-control" Wrap="true" ID="age" runat="server" Text="30"></asp:TextBox>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator13" runat="server"
                                    ControlToValidate="age" ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            
                                
                                <asp:RegularExpressionValidator ForeColor="Red" ID="RegularExpressionValidator1" runat="server" ControlToValidate="age"
                                    ErrorMessage="Please Enter Only Numbers" ValidationExpression="[0-9]+" SetFocusOnError="true"></asp:RegularExpressionValidator>
                            </div>
                      
                </asp:Panel>
                <asp:Panel CssClass="container" ID="Panel7" runat="server" Wrap="true" ToolTip="Education" GroupingText="Education">
                        <div class="form-group">
                                  <label class="control-label " > Degree </label>
                            
                                <select runat="server"  class="form-control" id="college_id" name="college_id">
                                    <option value="High school">High school</option>
                                    <option value="Some college">Some college</option>
                                    <option selected="selected" value="Some university">Some university</option>
                                    <option value="Associates degree">Associates degree</option>
                                    <option value="Graduate degree">Graduate degree</option>
                                    <option value="PhD    Post Doctoral">PhD Post Doctoral</option>
                                    <option value="Bachelors degree">Bachelors degree</option>
                                    <option value="Masters degree">Masters degree</option>
                                </select>
                            </div>
                                 <div class="form-group">
                                  <label class="control-label " >What do you do for a living?</label>
                            
                                <select class ="form-control"  name="profession" id="profession"  runat="server">
                                    <option value="No answer">No answer</option>



                                    <option value="Banking Professional">Banking Professional</option>
                                    <option value="Chartered Accountant">Chartered Accountant</option>
                                    <option value="Company Secretary">Company Secretary</option>
                                    <option value="Finance Professional">Finance Professional</option>
                                    <option value="Investment Professional">Investment Professional</option>
                                    <option value="Accounting Professional (Others)">Accounting Professional (Others)</option>

                                    <option value="Admin Professional">Admin Professional</option>
                                    <option value="Human Resources Professional">Human Resources Professional</option>
                                    <option value="Actor">Actor</option>
                                    <option value="Advertising Professional">Advertising Professional</option>
                                    <option value="Entertainment Professional">Entertainment Professional</option>
                                    <option value="Event Manager">Event Manager</option>
                                    <option value="Journalist">Journalist</option>
                                    <option value="Media Professional">Media Professional</option>
                                    <option value="Public Relations Professional">Public Relations Professional</option>
                                    <option value="Farming">Farming</option>
                                    <option value="Horticulturist">Horticulturist</option>
                                    <option value="Agricultural Professional (Others)">Agricultural Professional (Others)</option>
                                    <option value="Air Hostess / Flight Attendant">Air Hostess / Flight Attendant</option>
                                    <option value="Pilot / Co-Pilot">Pilot / Co-Pilot</option>
                                    <option value="Other Airline Professional">Other Airline Professional</option>
                                    <option value="Architect">Architect</option>
                                    <option value="Interior Designer">Interior Designer</option>
                                    <option value="Landscape Architect">Landscape Architect</option>
                                    <option value="Animator">Animator</option>
                                    <option value="Commercial Artist">Commercial Artist</option>
                                    <option value="Web / UX Designers">Web / UX Designers</option>
                                    <option value="Artist (Others)">Artist (Others)</option>

                                    <option value="Beautician">Beautician</option>
                                    <option value="Fashion Designer">Fashion Designer</option>
                                    <option value="Hairstylist">Hairstylist</option>
                                    <option value="Jewellery Designer">Jewellery Designer</option>
                                    <option value="Designer (Others)">Designer (Others)</option>

                                    <option value="Customer Support / BPO / KPO Professional">Customer Support / BPO / KPO
                                    Professional</option>

                                    <option value="IAS / IRS / IES / IFS">IAS / IRS / IES / IFS</option>
                                    <option value="United States Police Services (IPS)">United States Police Services (IPS)</option>
                                    <option value="Law Enforcement Employee (Others)">Law Enforcement Employee (Others)</option>

                                    <option value="Airforce">Airforce</option>
                                    <option value="Army">Army</option>
                                    <option value="Navy">Navy</option>
                                    <option value="Defense Services (Others)">Defense Services (Others)</option>

                                    <option value="Lecturer">Lecturer</option>
                                    <option value="Professor">Professor</option>
                                    <option value="ReSearch Assistant">ReSearch Assistant</option>
                                    <option value="ReSearch Scholar">ReSearch Scholar</option>
                                    <option value="Teacher">Teacher</option>
                                    <option value="Training Professional (Others)">Training Professional (Others)</option>

                                    <option value="Civil Engineer">Civil Engineer</option>
                                    <option value="Electronics / Telecom Engineer">Electronics / Telecom Engineer</option>
                                    <option value="Mechanical / Production Engineer">Mechanical / Production Engineer</option>
                                    <option value="Non IT Engineer (Others)">Non IT Engineer (Others)</option>

                                    <option value="Chef / Sommelier / Food Critic">Chef / Sommelier / Food Critic</option>
                                    <option value="Catering Professional">Catering Professional</option>
                                    <option value="Hotel &amp; Hospitality Professional (Others)">Hotel &amp; Hospitality
                                    Professional (Others)</option>

                                    <option value="Software Developer / Programmer">Software Developer / Programmer</option>
                                    <option value="Software Consultant">Software Consultant</option>
                                    <option value="Hardware &amp; Networking professional">Hardware &amp; Networking professional</option>
                                    <option value="Software Professional (Others)">Software Professional (Others)</option>

                                    <option value="Lawyer">Lawyer</option>
                                    <option value="Legal Assistant">Legal Assistant</option>
                                    <option value="Legal Professional (Others)">Legal Professional (Others)</option>

                                    <option value="Dentist">Dentist</option>
                                    <option value="Doctor">Doctor</option>
                                    <option value="Medical Transcriptionist">Medical Transcriptionist</option>
                                    <option value="Nurse">Nurse</option>
                                    <option value="Pharmacist">Pharmacist</option>
                                    <option value="Physician Assistant">Physician Assistant</option>
                                    <option value="Physiotherapist / Occupational Therapist">Physiotherapist / Occupational
                                    Therapist</option>
                                    <option value="Psychologist">Psychologist</option>
                                    <option value="Surgeon">Surgeon</option>
                                    <option value="Veterinary Doctor">Veterinary Doctor</option>
                                    <option value="Therapist (Others)">Therapist (Others)</option>
                                    <option value="Medical / Healthcare Professional (Others)">Medical / Healthcare Professional
                                    (Others)</option>

                                    <option value="Merchant Naval Officer">Merchant Naval Officer</option>
                                    <option value="Mariner">Mariner</option>

                                    <option value="Marketing Professional">Marketing Professional</option>
                                    <option value="Sales Professional">Sales Professional</option>

                                    <option value="Biologist / Botanist">Biologist / Botanist</option>
                                    <option value="Physicist">Physicist</option>
                                    <option value="Science Professional (Others)">Science Professional (Others)</option>

                                    <option value="CxO / Chairman / Director / President">CxO / Chairman / Director / President</option>
                                    <option value="VP / AVP / GM / DGM">VP / AVP / GM / DGM</option>
                                    <option value="Sr. Manager / Manager">Sr. Manager / Manager</option>
                                    <option value="Consultant / Supervisor / Team Leads">Consultant / Supervisor / Team
                                    Leads</option>
                                    <option value="Team Member / Staff">Team Member / Staff</option>

                                    <option value="Agent / Broker / Trader / Contractor">Agent / Broker / Trader / Contractor</option>
                                    <option value="Business Owner / Entrepreneur">Business Owner / Entrepreneur</option>
                                    <option value="Politician">Politician</option>
                                    <option value="Social Worker / Volunteer / NGO">Social Worker / Volunteer / NGO</option>
                                    <option value="Sportsman">Sportsman</option>
                                    <option value="Travel &amp; Transport Professional">Travel &amp; Transport Professional</option>
                                    <option value="Writer">Writer</option>

                                    <option value="Student">Student</option>
                                    <option value="Retired">Retired</option>
                                    <option value="Not working">Not working</option>

                                </select>
                            </div>
                       
                </asp:Panel>
                <asp:Panel CssClass="container" ID="Panel8" runat="server" Wrap="true" ToolTip="Message For Viewers" GroupingText="Message For Viewers">
                         <div class="form-group">
                                  <label class="control-label " >Headline</label> (ex. looking for kind hearted man ,wealthy man )
                         
                                <input runat="server" id="headline" type="text" style="width: 300px;" size="21" maxlength="140"
                                    onchange="javascript:while(''+this.value.charAt(this.value.length-1)==' ')this.value=this.value.substring(0,this.value.length-1);" />
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator1" runat="server" ControlToValidate="headline"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            
                        </div>
                            <div class="form-group">
                                  <label class="control-label " >Interests</label> (Separate interests with commas)
                        
                                <input runat="server" id="interest" type="text" size="45" />
                          
                        </div>
                            <div class="form-group">
                         
                            <label class="control-label " >    When it comes to dating what best describes your intent?</label>
                                <select runat="server"  class="form-control" id="intent">
                                    <option value="I am looking for Casual dating/No Commitment.">1. I'm looking for Casual
                                dating/No Commitment.</option>
                                    <option selected="selected" value="I want to date but nothing serious.">2. I want to
                                date but nothing serious.</option>
                                    <option value="I want a relationship.">3. I want a relationship.</option>
                                    <option value="I am putting in serious effort to find someone.">4. I am putting in serious
                                effort to find someone.</option>
                                    <option value="I am serious and I want to find someone to marry.">5. I am serious and
                                I want to find someone to marry.</option>
                                </select>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator2" runat="server" ControlToValidate="intent"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                      
                       
                                <div class="form-group">
                               <label class="control-label " > What is the longest relationship you have been in?</label>
                                <select runat="server"  class="form-control" name="relationshipage_id" id="relationshipage_id">
                                    <option value="Under 1 year">Under 1 year</option>
                                    <option value="Over 1 year">Over 1 year</option>
                                    <option value="Over 2 years">Over 2 years</option>
                                    <option selected="selected" value="Over 3 years">Over 3 years</option>
                                    <option value="Over 4 years">Over 4 years</option>
                                    <option value="Over 5 years">Over 5 years</option>
                                    <option value="Over 6 years">Over 6 years</option>
                                    <option value="Over 7 years">Over 7 years</option>
                                    <option value="Over 8 years">Over 8 years</option>
                                    <option value="Over 9 years">Over 9 years</option>
                                    <option value="Over 10 years">Over 10 years</option>
                                </select>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator3" runat="server" ControlToValidate="relationshipage_id"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                     
                             <div class="form-group">
                                  <label class="control-label " >Income (Please share income <font size="-1" color="red">Mandatory )</font>
                                </label>
                                <select runat="server"  class="form-control" style="width: 150px;" id="income">
                                    <option value="Less Than 25,000">Less Than 25,000</option>
                                    <option value="25,001 to 35,000">25,001 to 35,000</option>
                                    <option value="35,001 to 50,000">35,001 to 50,000</option>
                                    <option selected="selected" value="50,001 to 75,000">50,001 to 75,000</option>
                                    <option value="75,001 to 100,000">75,001 to 100,000</option>
                                    <option value="100,001 to 150,000">100,001 to 150,000</option>
                                    <option value="150,000+">150,000+ </option>
                                </select>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator4" runat="server" ControlToValidate="income"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                           
                         <div class="form-group">
                             <label class="control-label " >   Would you date someone that has kids?</label>
                                <select runat="server"  class="form-control" name="datekids" id="datekids">
                                    <option value="No" selected="selected">No</option>
                                    <option value="Yes">Yes</option>
                                    <option value="I only date single parents">I only date single parents</option>
                                </select>

                            </div>
                       <div class="form-group">
                          <label class="control-label " >
                                Would you date someone that smokes?
                        </label>
                                 <select class="form-control" id="datesmokers" runat="server">
                                    <option selected="selected" value="No">No</option>
                                    <option value="Yes">Yes</option>
                                </select>
                            </div>
                      <div class="form-group">
                         <label class="control-label " >       About Me and My Profile <font size="-1"><br>
                            For your own safety, do not include your name, phone number or address. People will
                            read both your profile AND message when deciding if they should write back to you.
                            When people Search on the site the following description will be their first impression
                            of you.<br>If you want to be successful and not waste your time do this.Write a few words about
                            yourself - your personality, temperament, attitude towards life and people. What
                            distinguishes you from the crowd? What are your positive and negative traits?
                                1. Talk about your hobbies.
                                <br>
                                2. Talk about your goals/aspirations<br>
                                3. Talk about yourself and what makes you unique.
                                <br>
                                4. Your taste in music.
                                </label>
                              

                                <textarea class="form-control" rows="10" runat="server" wrap="soft" id="description"></textarea>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator6" runat="server" ControlToValidate="description"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                          
                            </div>
                        <div class="form-group">
                                  <label class="control-label " >First Date Meeting and Plans. (optional) </label>
                              
                                <textarea class="form-control" runat="server" wrap="soft" rows="7" id="firstdate"></textarea>
                            </div>
                       
                        <div class="form-group">
                           <label class="control-label " >     Describe what is your Partner Preference . 
                        </label>
                               
                                <textarea class="form-control" runat="server" wrap="soft" rows="7" name="pkostki"
                                    id="partnerpref"></textarea>
                                Mandatory  
                                <asp:RequiredFieldValidator ForeColor="Red" ID="RequiredFieldValidator8" runat="server" ControlToValidate="partnerpref"
                                    ErrorMessage="* Error" SetFocusOnError="true"></asp:RequiredFieldValidator>
                            </div>
                     <div class="form-group">        
      <div class="form-group">
                          <asp:Button CssClass="btn btn-primary" ID="Button3" runat="server" Text="Analyze Sentiment" OnClick="Button3_Click1" />
          </div></div>
          <div class="form-group">        
      <div class="form-group">
                            <div runat="server" wrap="soft" rows="7" name="pkostki" style="width: 710px;"
                                visible="false" id="Textarea1">
                            </div>
                            <div>
                         <label class="control-label " >       Check your  Sentiment Analysis Score: 
Analyzes text for positive or negative sentiment. Ex. 0.6002029591429056
                              </label>
                        </div>
                    </div>
              </div>
                </asp:Panel>
               <div class="form-group">        
      <div class="form-group">
                <asp:Button CssClass="btn btn-primary" ID="Button1" runat="server" text="Update" OnClick="Update_Click"                  />
                <asp:Button CssClass="btn btn-primary" ID="Button2" runat="server" text="Cancel" OnClick="Button2_Click"                     />
           
            <asp:CheckBox ID="CheckBox1" runat="server" Checked="true" Text=" I want to upload images" />
          </div>
        </div>
    </div>

</asp:content>
