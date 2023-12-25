package controller;

import model.NewSletterModel;
import service.IndexService;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
@MultipartConfig
@WebServlet(name = "indexController",urlPatterns = {"/index"})
public class IndexController extends HttpServlet {
    private IndexService service = new IndexService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String title = req.getParameter("title");
        ArrayList<NewSletterModel> newSletterModels = service.findByName(title);
        req.setAttribute("title",title);
        req.setAttribute("newSletterModels",newSletterModels);
        req.setAttribute("otherDocument",service.getOtherDocument());

        req.getRequestDispatcher("/search.jsp").forward(req,resp);

    }
    @Override
    protected void doPost(HttpServletRequest req,HttpServletResponse resp) throws ServletException,IOException{
        doGet(req, resp);
    }

}
