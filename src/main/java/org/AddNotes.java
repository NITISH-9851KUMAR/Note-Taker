package org;

import org.hibernate.Session;
import org.hibernate.Transaction;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/add-notes")
public class AddNotes extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");

        // Find the notes_title and notes_description using request
        String note_t = request.getParameter("notes_title").toUpperCase();
        String note_title = note_t.toUpperCase();
        String note_description = request.getParameter("notes_description");

        ZonedDateTime istTime = ZonedDateTime.now(ZoneId.of("Asia/Kolkata"));
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss");
        String date_time = istTime.format(formatter);

        // Hibernate Code
        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();

        // Create the object of Note and set the value
        Note note = new Note(note_title, note_description, date_time);

        // Save into session and commit
        session.save(note);
        tx.commit();

        // close the session and factory;
        session.close();

        RequestDispatcher rd= request.getRequestDispatcher("add_notes_succ.jsp");
        rd.forward(request, response);

    }

}
