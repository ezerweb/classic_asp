<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="google-site-verification" content="" />
<title>Homesites For Sale</title>
<!--#include virtual="/includes/i-references.asp"-->
<!--#include virtual="/includes/i_database.asp"-->
<% Dim Conn, RS, SQL %>
<% getConnection Conn %>
<%community_name="WaterSound Beach"%>
</head>
<body>
	<div id="wrapper">
		<!--#include virtual="/includes/i-header.asp"-->          
		<div id="content">
			<div class="breadcrumbs">
				<a href="http://www.joe.com">JOE</a> &gt;<a href="/"><%=community_name%> (<%=community_name%>, Florida area)</a> &gt; <span class="current-page">Homesites for Sale</span>
			</div>
		<!--#include virtual="/includes/i-left-nav-home.asp"-->       
		<!--#include virtual="/contents/c-homesites.asp"-->
		<!--#include virtual="/includes/i-footer.asp"-->
		
		</div>
	</div>
	<div id="ErrorNotification"></div>
<!--#include virtual="/includes/i-bottom-scripts.asp"-->   
</body>
</html>
<% closeConnection Conn %>