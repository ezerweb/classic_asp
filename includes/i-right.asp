<div class="sidebar-rt">				  
	<div class="home_contact">
		<h4>Find out more about<br />WaterSound Beach</h4>
		<img src="/cms/CommunitySites/images/bpof-logo-small.png" alt="Beach Properties Of Florida" style="margin-left:3px;" width="250px" />
		<h4>Sales Center:  1.844.563.2582 </h4>
		<form name="form1" action="" method="POST" onsubmit="return validateForm()">
			<input type="hidden" name="oid" value="00DC0000000Pk9R">
			<input type="hidden" id="00NC0000004ieSS" name="00NC0000004ieSS" value="WATSND">
			<input type="hidden" id="lead_source" name="lead_source" value="Internet">
			<input type="hidden" id="00NC0000004isre"  name="00NC0000004isre"  value="Web-to-lead form">
			<input type="hidden" name="retURL" value="<%=SITEURL%>/thank-you.asp">
			<div id="LeadErrorNotification"></div>
			<div style="display:none;"><textarea name="comments"/></textarea></div>
			<p>* denotes required fields</p>
			<p><label for="name">First Name:*</label><input id="first_name" maxlength="40" name="first_name" size="20" type="text" /></p>
			<p><label for="name">Last Name:*</label><input id="last_name" maxlength="80" name="last_name" size="20" type="text" /></p>
			<p><label for="email">Email:*</label><input id="email" maxlength="80" name="email" size="20" type="text" /></p>
			<p><label for="phone">Phone:</label><input id="phone" maxlength="40" name="phone" size="20" type="text" /></p>
			<p><label for="country">Country:*</label>
				<% setSelectCountries "country", "US", " style='width:150px;' onchange='javascript:checkCountry();' " %>
			</p>
			<p><label for="state">State/Province:*</label>
				<% setSelectStates "state", "", " style='width:150px;' onchange='javascript:checkState();' " %>
			</p>
			<p><label for="zip">Zip/Postal Code:*</label><input  id="zip" maxlength="20" name="zip" size="20" type="text" /></p>
			<p><label for="comments">Questions or Comments:</label><textarea maxlength="1450"  id="00NC0000004iT3a" name="00NC0000004iT3a" type="text" wrap="soft"></textarea></p>
			<p><input  id="00NC0000004im3q" name="00NC0000004im3q" type="checkbox" value="1" checked="1"/><br />
				Please add me to your email list for newsletters, updates and events.</label></p>
			<p><input type="submit" class="contact_widget-submit" value="Submit" />
			<span class="submit-notes">An associate will follow-up with you shortly.</span></p>
			<p class="contact-call"> <span class="phone"></span></p>
		</form>
  
	</div><!-- // end .home_contact-->
</div><!-- // end .sidebar-rt-->

<script>
function validateForm() {
with (document.form1) {
	var userComment = document.getElementById("00NC0000004iT3a").value
var ck_Comment = /http|https/g
if (ck_Comment.test(userComment)) {
return false;
 }

	if(comments.value != "") 
	return false;
	else
var alertMsg = "The following REQUIRED fields\nhave been left empty:\n";
if (first_name.value == "") alertMsg += "\nFirst Name";
if (last_name.value == "") alertMsg += "\nLast Name";
if (email.value == "") alertMsg += "\nEmail";
if (country.value == "") alertMsg += "\nCountry";
if (state.value == "") alertMsg += "\nState";
if (zip.value == "") alertMsg += "\nZip";
if (alertMsg != "The following REQUIRED fields\nhave been left empty:\n") {
alert(alertMsg);
return false;
} else {
    document.form1.action="/submit-i-right.asp";
		document.form1.submit();
} } }
</script>
<!--#include virtual="/includes/i-state-country-v2.asp"-->