package com.servlets;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.entities.Note;
import com.helper.FactoryProvider;

public class SaveNoteServlet extends HttpServlet
{	private static final long serialVersionUID = 1L;
    public SaveNoteServlet() 
    {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try
		{
			String title=request.getParameter("title");
			String content=request.getParameter("content");
			Note note=new Note(title,content,new Date());		
			Session s= FactoryProvider.getFactory().openSession();
			Transaction tx=s.beginTransaction();
			s.save(note);//now in our database the things will get saved
			tx.commit();
			s.close();
			response.setContentType("text/html");
			PrintWriter out=response.getWriter();
			out.println("<h1 style='text-align:center;'>Note is added successfully</h1>");
			out.println("<h1 style='text-align:center;'><a href='all_notes.jsp'>view all notes</a></h1>");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}
}
//so here on doing  open session it will give
//us hibernate session

//here we are telling that the data which we are sending 
//is a text of html type,so that the browser may resolve it.

//in browser we can also send that we are sending data
//of html type.
			
			
			//close the session immediately as it is not thread safe
			//System.out.println(note.getId()+" : "+note.getTitle());
			//but we don't want to print this data
			//we want to store this data into our database
			//so now we will do the work of hibernate save
			//at the time we learn advance java we were
			//doing a lot of work as we have to make the dao classes
			//again and again now we don't have to make any
			//dao class,we were writing queries again and again 
			//but here all the queries will be seen by hibernate
			//so now we just have to make a factory and we have
			//made a class on helper (Factory Provider)
			//and here we will call the method get factory method 
			//of this factory provider

//when we are submitting out form then our form is 
	//getting submitted with the help of post so we can 
	//remove the do get method and its constructor
	//so in come to will fetch the value that we coming
	//from the form(here title and content in coming from
	//the form so 1st here we will write try catch so that any
	//exception get handled.
	//so here 1st of all we have to fetch title from request
	//so we will use the object of request here.
	//so we use request.getParameter("here we have to give 
	//the name of that field whose data we want");
   //so just go to the addnotes.jsp page and see 
	//the name in the input field

