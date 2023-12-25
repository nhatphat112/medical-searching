package repository;

import config.MySqlConfig;
import model.ArticleModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ArticleRepository {
    public List<ArticleModel> findByFacultyId(int id){
        List<ArticleModel> articleModelList = new ArrayList<>();
        Connection connection = null;
        try {
            connection = MySqlConfig.getConnection();
            String sql = "select * from article a where a.faculty_id =?;";
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                ArticleModel model = new ArticleModel();
                model.setId(rs.getInt("id"));
                model.setName(rs.getString("name"));
                model.setLink(rs.getString("link"));
                articleModelList.add(model);
            }
        }catch (Exception e){
            System.out.println("Error at ArticleRepository.findByFacultyId:"+e.getMessage());
        }
        return articleModelList;
    }
}
