<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="com.helper.*,com.entities.*,org.hibernate.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>

<div class="container">
 <%@include file="navbar.jsp"%>
 <h1>This is edit page</h1>
 <%
int nodeId=Integer.parseInt(request.getParameter("note_id").trim());
 Session s=FactoryProvider.getFactory().openSession();
 
 %>
 
 
 
 <form action="SaveNoteServlet" method="post">
 <%-- means in which page I want to submit the form
 ,so here I will give the name of a servlet
  with the post method the data will not be
  visible in the url.--%>
  <div class="form-group">
    <label for="title">Note Title</label>
    <!--if i want to not let anyone add black field we will
    use an attribute required in input tag(now we won't be able 
    to add blank data on clicking the add button-->
    <input name="title"
     required type="text" 
    class="form-control" 
    id="title"
    aria-describedby="emailHelp" 
    placeholder="Enter here">
  </div>
  
   <div class="form-group">
    <label for="content">Note Content</label>
    <textarea 
    name="content"
    required id="content" 
    placeholder="Enter your content here"
    class="form-control"
     style="height:300px;">
    </textarea>
    <!--this form-control class is of
    bootstrap to make the form perfect -->
   </div>
      <div class="container text-center">
       <button type="submit" class="btn btn-primary">Add</button>
      </div> 
    
     </form>
 </div>
</body>
</html>