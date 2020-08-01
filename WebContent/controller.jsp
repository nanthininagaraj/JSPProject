<%@page import="com.smi.logics.DBOperations"%>
<%@page import="com.smi.registry.*" %>
<%
	if (request.getParameter("q") != null) {
		String req = request.getParameter("q");
		if (req.equals("link")) {

			String fname = request.getParameter("fname") + ".html";
			
%>
<jsp:include page="<%=fname%>" />
<%
	} else if (req.equals("LOGIN")) {
			String name=request.getParameter("uname");
			String pass=request.getParameter("upass");
			UserRegistry user=new UserRegistry();
			user.setName(name);
			user.setPass(pass);
			if(new DBOperations().login(user)){				
				session.setAttribute("uname", name);
				out.println("<script>alert('login success');window.open('?','_self')</script>");
			}else{
				out.println("Login Fail");
			}
		}else if(req.equals("logout")){
			session.removeAttribute("uname");
			out.println("<script>window.open('?','_self')</script>");
		}
	} else {
%>
<%@include file="home.html"%>
<%
	}
%>