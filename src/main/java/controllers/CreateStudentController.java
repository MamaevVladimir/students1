package controllers;

import entity.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Date;
import java.sql.Timestamp;

@WebServlet(name = "CreateStudentController", urlPatterns = "/createstudent")
public class CreateStudentController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/createstudent.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newSurname = req.getParameter("secondSurname");
        String newNameStudent = req.getParameter("secondNameStudent");
        String newGroupStudent = req.getParameter("secondGroupStudent");
        String newDateStudent = req.getParameter("secondDateStudent");
        DBManager.createStudent(newSurname, newNameStudent, newGroupStudent, newDateStudent);
        resp.sendRedirect("/students");
    }
}
