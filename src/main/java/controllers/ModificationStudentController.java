package controllers;

import entity.DBManager;
import entity.Student;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ModificationStudentController", urlPatterns = "/modificationstudent")
public class ModificationStudentController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idStud = req.getParameter("idModifStud");
        Student student = DBManager.getStudentById(idStud);
        req.setAttribute("student", student);
        req.getRequestDispatcher("/WEB-INF/jsp/modificationstudent.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newSurname = req.getParameter("secondSurname");
        String newName = req.getParameter("secondNameStudent");
        String newGroup = req.getParameter("secondGroupStudent");
        String newDate = req.getParameter("secondDateStudent");
        String idStud = req.getParameter("studId");
        DBManager.modifyStudent(idStud, newSurname, newName, newGroup, newDate);
        resp.sendRedirect("/students");
    }
}
