<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp" %>
</head>
<body>
 <div class="container">
 <%@include file="navbar.jsp"%>
 <br>
 <h1>Please fill your note detail</h1>
 <br>
 <!-- this is add form -->
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
<!-- on clicking the add button i am going to SaveNoteServlet.So my we will make
this servlet and then I will add my values to database-->
</body>
</html>