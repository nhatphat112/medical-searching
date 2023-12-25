package repository;

import config.MySqlConfig;
import model.NewSletterListModel;
import model.NewSletterModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class NewSletterRepository {
    public NewSletterListModel findByTitle(String title){
        NewSletterListModel newSletterListModel = new NewSletterListModel();
        newSletterListModel.setNewSletterModels(new ArrayList<>());
        Connection connection = null;
        try {
            String sql = "select * from newsletter where remove_diacritics(title_search) COLLATE utf8mb4_unicode_ci like  concat('%',remove_diacritics(?) COLLATE utf8mb4_unicode_ci,'%');";
            connection = MySqlConfig.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1,title);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                NewSletterModel model = new NewSletterModel();
                model.setId(Integer.parseInt(rs.getString("id")));
                model.setTitle(rs.getString("title_search"));
                newSletterListModel.getNewSletterModels().add(model);
            }
        }catch (Exception e){
            System.out.println("Error at NewSletterRepository.findByTitle");
            e.printStackTrace();
        }finally {
            MySqlConfig.closeConnection(connection);
        }
        return  newSletterListModel;
    }
    public NewSletterModel findById(int id){

        Connection connection = null;
        try {
            String sql = "select * from newsletter where id =?;";
            connection = MySqlConfig.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                NewSletterModel model = new NewSletterModel();
                model.setId(Integer.parseInt(rs.getString("id")));
                model.setTitle(rs.getString("title"));
                model.setContent(rs.getString("content"));
                return model;
            }

        }catch (Exception e){
            System.out.println("Error at NewSletterRepository.findByTitle");
            e.printStackTrace();
        }finally {
            MySqlConfig.closeConnection(connection);
        }
        return  null;
    }
}
