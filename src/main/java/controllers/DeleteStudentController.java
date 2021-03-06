package controllers;

import entity.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DeleteStudentController", urlPatterns = "/deletestudent")
public class DeleteStudentController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    String ids = req.getParameter("idsDeleteStud");
    String[] idsMass = ids.split(",");
    for(String id : idsMass){
        DBManager.deleteStudent(id);
    }
    resp.sendRedirect("/students");
    }
}
