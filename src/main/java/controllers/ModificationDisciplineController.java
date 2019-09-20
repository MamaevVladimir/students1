package controllers;

import entity.DBManager;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "ModificationDisciplineController", urlPatterns = "/modifydiscipline")
public class ModificationDisciplineController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idDisc = req.getParameter("idModifDisc");
        Discipline discipline = DBManager.getDisciplineById(idDisc);
        req.setAttribute("discipline", discipline);
        req.getRequestDispatcher("/WEB-INF/jsp/modificationdiscipline.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newName = req.getParameter("secondName");
        String idDisc = req.getParameter("idDisc");
        DBManager.modifyDiscipline(idDisc, newName);
        resp.sendRedirect("/disciplines");
    }
}

