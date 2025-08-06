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
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

@WebServlet("/update-notes")
public class UpdateNotes extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Get the notes id
        int note_id = Integer.parseInt(request.getParameter("note_id"));
        String note_title = request.getParameter("notes_title");
        String note_description = request.getParameter("notes_description");

        LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy  HH-mm");
        String date = formatter.format(now);

        Session session = FactoryProvider.getFactory().openSession();
        Transaction tx = session.beginTransaction();
        Note note = session.get(Note.class, note_id);

        note.setAddDate(date);
        note.setTitle(note_title);
        note.setDescription(note_description);

        session.update(note);
        tx.commit();

        RequestDispatcher rd = request.getRequestDispatcher("show-notes.jsp");
        rd.forward(request, response);

        session.close();

    }

}
