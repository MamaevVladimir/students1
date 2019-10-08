package controllers;

import entity.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TermStudentProgressController", urlPatterns = "/termStudentProgress")
public class TermStudentProgressController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStud = req.getParameter("idStudentProgress");
        Student student = DBManager.getStudentById(idStud);

        List<Semestr> semestrs = DBManager.getAllActiveSemestrs();
        Semestr selectedStudentProgressTerm = semestrs.get(0);

        List<Mark> marks = DBManager.getMarksByStudentSemestr(idStud, selectedStudentProgressTerm.getId());

        req.setAttribute("marks", marks);
        req.setAttribute("selectedStudentProgressTerm", selectedStudentProgressTerm);
        req.setAttribute("semestrs", semestrs);
        req.setAttribute("student", student);
        req.getRequestDispatcher("/WEB-INF/jsp/records.jsp").forward(req, resp);
    }
}
