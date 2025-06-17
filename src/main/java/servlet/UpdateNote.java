package servlet;


import entities.Note;
import hibernate.FactoryProvider;
import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/UpdateNote")
public class UpdateNote extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        // Fetch Title, Content of add_notes
        String title= request.getParameter("title");
        String content= request.getParameter("content");
        int id= Integer.parseInt(request.getParameter("note_id").trim());

        // Perform Hibernate Operation
        try{

            Session session= FactoryProvider.getSessionFactory().openSession();
            Transaction tx= session.beginTransaction();

            Note note= session.get(Note.class, id);
            note.setTitle(title);
            note.setContent(content);


            tx.commit();
            session.close();
            response.sendRedirect("shownotes.jsp");
        }
        catch (java.lang.Exception e){}


    }

}
