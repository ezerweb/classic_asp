<%
thisCommunity = "WaterSound Beach"
thisPropertyType = "Residential Land"

SQL = " SELECT "
SQL = SQL & " COUNT(a.id) as rescount"
SQL = SQL & " FROM Property a"
SQL = SQL & " INNER JOIN communities b "
SQL = SQL & " ON a.community_name = b.id "
SQL = SQL & " WHERE a.listing_active = 'True' "
SQL = SQL & " AND b.community_name= '" & thisCommunity & "' "
SQL = SQL & " AND a.property_type = '" & thisPropertyType & "' "

Set RS = Conn.execute(SQL)
If Not RS.eof Then 
homeCount = RS("rescount")
End If 
closeRecordset RS
%>
<div class="main-content wide-wrapper">
	<div class="main-content_header"></div>
	<div class="main-content_body">
	<% If homeCount > 0 Then %>
	<div class="gallery-row">
		<h2 class="gallery-row-heading">Homesites</h2>
			<div class="gallery-row-viewing" id="listings_visible_range">
				Viewing <span id="listing_from_to" style="display: inline"></span> of <%=homeCount%>
			</div>
			<a href="#" class="gallery-left"></a>
			<ul class="gallery-list jcarousel-skin-photo listings_top">

<%

SQL = " Select "
SQL = SQL & " a.id, a.address, a.city, a.state, "
SQL = SQL & " a.beds, a.baths, a.garage, a.Sqft, a.list_price, a.price_description, "
SQL = SQL & " isnull(( Select top 1 filename From listingPhotos Where listingid = a.id AND Active = 1 order by photoOrder, listingID ),'landnophoto_sm.jpg') as img "
SQL = SQL & " FROM Property a"
SQL = SQL & " INNER JOIN communities b "
SQL = SQL & " ON a.community_name = b.id "
SQL = SQL & " WHERE a.listing_active = 'True' "
SQL = SQL & " AND b.community_name='" & thisCommunity & "' "
SQL = SQL & " AND a.property_type = '" & thisPropertyType & "'"
SQL = SQL & " ORDER by a.list_price"

'Response.write SQL
'Response.end
Set RS = Conn.execute(SQL)
if NOT RS.EOF then

	Do While NOT RS.EOF
		this_id = RS("id")
		this_address = RS("address")
		this_city = RS("city")
		this_state = RS("state")
		this_beds = RS("beds")
		this_baths = RS("baths")
		this_garage = RS("garage")
		this_sqft = RS("Sqft")
		this_list_price = RS("list_price")
		this_price_description=RS("price_description")
		this_img = RS("img")
		
%>
				<li class="gallery-item">
					<a href="/Property/listing.asp?real-estate=<%=this_id%>" alt="<%=this_address%>"><img src="<%=SITEURL%>/images/uploads/<%=this_img%>" height="110px" width="147px" class="gallery-img" onerror="ImgError(this);"/></a>
					<div class="gallery-item-price"><%=this_price_description%></div>
					<div class="move-in-ready-type">HOMESITE</div>
					<div class="gallery-item-address"><%=this_address%><br><%=this_city%>&nbsp;<%=this_state%></div>
					<% if (this_sqft<>"") then %>
					<ul class="gallery-item-features">
						<li><%=this_sqft%> sq. ft</li>
					</ul>
					<% end if %>
					<p><a href="/Property/listing.asp?real-estate=<%=this_id%>" >Photos & Details</a></p>
				</li>
<%
		RS.MoveNext()
	loop
end if
closeRecordset RS
%>              
                
			</ul>            
			<!-- end .gallery-row -->
			
		</div>
		<% End If %>
<%
homeCount=0

SQL = " SELECT "
SQL = SQL & " COUNT(a.id) as rescount"
SQL = SQL & " FROM Property a"
SQL = SQL & " INNER JOIN communities b "
SQL = SQL & " ON a.community_name = b.id "
SQL = SQL & " WHERE a.listing_active = 'True' "
SQL = SQL & " AND b.community_name= '" & thisCommunity & "' "
SQL = SQL & " AND a.property_type = '" & thisPropertyType & "' "
SQL = SQL & " AND isnull(a.Waterfront,'') not in ('', 'none' ) "

Set RS = Conn.execute(SQL)
If Not RS.eof Then 
homeCount = RS("rescount")
End If 
closeRecordset RS
 
%>
		<% If homeCount > 0 Then %>
        <div class="gallery-row">
			<h2 class="gallery-row-heading"> Homesites &ndash; Waterfront</h2>
			
			<br>
			<span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>
			<span>No Listings Found</span>
			<div style="width:1px; height:218px;"></div>
			<% Else %>
			<div class="gallery-row-viewing" id="waterfront_listings_range">
				Viewing <span style="display: inline"></span> of <%=homeCount%>
			</div>
			<ul class="gallery-list jcarousel-skin-photo listings_bottom">
<%

SQL = " SELECT "
SQL = SQL & " a.id, a.address, a.city, a.state, "
SQL = SQL & " a.beds, a.baths, a.garage, a.Sqft, a.list_price, a.price_description, "
SQL = SQL & " isnull(( Select top 1 filename From listingPhotos Where listingid = a.id AND Active = 1 order by photoOrder, listingID ),'landnophoto_sm.jpg') as img "
SQL = SQL & " FROM Property a"
SQL = SQL & " INNER JOIN communities b "
SQL = SQL & " ON a.community_name = b.id "
SQL = SQL & " WHERE a.listing_active = 'True' "
SQL = SQL & " AND b.community_name='" & thisCommunity & "'"
SQL = SQL & " AND a.property_type = '" & thisPropertyType & "' "
SQL = SQL & " AND isnull(a.Waterfront,'') not in ('', 'none' ) "
SQL = SQL & " ORDER by a.list_price"
'Response.write SQL
'Response.end

Set RS = Conn.execute(SQL)
if NOT RS.EOF then

	Do While NOT RS.EOF
		this_id = RS("id")
		this_address = RS("address")
		this_city = RS("city")
		this_state = RS("state")
		this_beds = RS("beds")
		this_baths = RS("baths")
		this_garage = RS("garage")
		this_sqft = RS("Sqft")
		this_list_price = RS("list_price")
		this_price_description = RS("price_description")
		this_img = RS("img")
%>
				<li class="gallery-item">
					<a href="/Property/listing.asp?real-estate=<%=this_id%>" alt="<%=this_address%>"><img src="<%=SITEURL%>/images/uploads/<%=this_img%>" height="110px" width="147px" class="gallery-img" onerror="ImgError(this);"/></a>
					<div class="gallery-item-price"><%=this_price_description%></div>
					<div class="move-in-ready-type">HOMESITE</div>
					<div class="gallery-item-address"><%=this_address%><br><%=this_city%>&nbsp;<%=this_state%></div>
					<% if (this_sqft<>"") then %>	
					<ul class="gallery-item-features">
						<li><%=this_sqft%> sq. ft</li>
					</ul>
					<% end if %>
					<p><a href="/Property/listing.asp?real-estate=<%=this_id%>">Photos &amp; Details</a></p>
				</li>
<%
		RS.MoveNext()
	loop
end if
closeRecordset RS
%>             
			</ul>
			
		</div>
<% End If %>
	</div>
</div>