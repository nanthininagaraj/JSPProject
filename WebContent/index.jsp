<!DOCTYPE HTML>
<html>

<head>
<title>textured_green</title>
<meta name="description" content="website description" />
<meta name="keywords" content="website keywords, website keywords" />
<meta http-equiv="content-type"
	content="text/html; charset=windows-1252" />
<link rel="stylesheet" type="text/css" href="style/style.css"
	title="style" />
</head>

<body>
	<div id="main">
		<div id="header">
			<div id="logo">
				<div id="logo_text">
					<!-- class="logo_colour", allows you to change the colour of the text -->
					<h1>
						<a href="?">sample Project<span class="logo_colour">from
								JSP</span></a>
					</h1>
					<h2>Example for JSP Work</h2>
					<%
						if (session.getAttribute("uname") != null) {
					%>
					<h2 align="right">
						Welcome !
						<%=session.getAttribute("uname")%></h2>
					<%
						}
					%>
				</div>
			</div>
			<div id="menubar">
				<ul id="menu">
					<!-- put class="selected" in the li tag for the selected page - to highlight which page you're on -->
					<li class="selected"><a href="?">Home</a></li>

					<%
						if (session.getAttribute("uname") == null) {
					%>

					<li><a href="?q=link&fname=examples">Examples</a></li>
					<li><a href="?q=link&fname=page">A Page</a></li>
					<li><a href="?q=link&fname=another_page">Another Page</a></li>
					<li><a href="?q=link&fname=contact">Contact Us</a></li>
					<li><a href="?q=link&fname=login">Login</a> <%
 	} else {
 %> 
 			<li><a href="?q=link&fname=inbox">Inbox</a></li>
 			<li><a href="?q=link&fname=outbox">Outbox</a></li>
 			<li><a href="?q=logout">Logout</a></li>
 			
 <%
 	}
 %>
				</ul>
			</div>
		</div>
		<div id="site_content">
			<div class="sidebar">
				<!-- insert your sidebar items here -->

			</div>
			<div id="content">
				<!--  Dynamic Contnet -->
				<jsp:include page="controller.jsp"></jsp:include>
			</div>
		</div>
		<div id="footer">Copyright &copy; jsp project creations | SMI</div>
	</div>
</body>
</html>
