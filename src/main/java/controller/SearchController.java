package controller;

import model.NewSletterResponse;
import service.DetailService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = "/detail")
public class SearchController extends HttpServlet {
    private DetailService service = new DetailService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        int id = -1;
        try {
            id = Integer.parseInt(req.getParameter("id"));
        }catch (Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        NewSletterResponse response = service.findById(id);
        req.setAttribute("title",response.getTitle());
        req.setAttribute("subTitleList",response.getSubTitleList());
        req.setAttribute("subContentList",response.getSubContentList());
        req.setAttribute("otherDocument",service.getOtherDocument());
        req.getRequestDispatcher("/detail.jsp").forward(req,resp);
    }
}
