package repository;

import config.MySqlConfig;
import model.FacultyModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FacultyRepository {
    public List<FacultyModel> findByFacultyCategoryId(int id){
        List<FacultyModel> facultyModelList = new ArrayList<>();
        Connection connection = null;

        try {
            String sql = "select * from faculty  where faculty_category_id = ?;";
            connection = MySqlConfig.getConnection();
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()){
                FacultyModel model = new FacultyModel();
                model.setId(rs.getInt("id"));
                model.setName(rs.getString("name"));
                facultyModelList.add(model);
            }

        }catch (Exception e){
            System.out.println("Error at FacultyRepository.findByFacultyCategoryId:"+e.getMessage());
        }finally {
            MySqlConfig.closeConnection(connection);
        }
        return facultyModelList;

    }
}
