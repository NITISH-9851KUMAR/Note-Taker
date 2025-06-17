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

@WebServlet("/DeleteNote")
public class DeleteNote extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws IOException, ServletException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Fetch Title, Content of add_notes
        int note_id = Integer.parseInt(request.getParameter("note_id").trim());

        Session session = FactoryProvider.getSessionFactory().openSession();
        Transaction tx= session.beginTransaction();

        Note note = session.get(Note.class, note_id);
        session.delete(note);
        tx.commit();
        session.close();

        // Send into shownotes.jsp page
        response.sendRedirect("shownotes.jsp");

    }

}
