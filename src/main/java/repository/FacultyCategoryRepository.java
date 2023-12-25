package repository;

import config.MySqlConfig;
import model.FacultyCategoryModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class FacultyCategoryRepository {
        public List<FacultyCategoryModel> findAll(){
            List<FacultyCategoryModel> facultyCategoryModelList = new ArrayList<>();
            Connection connection = null;
            try {
                String sql = "select * from medical_searching_db.faculty_category;";
                connection = MySqlConfig.getConnection();
                PreparedStatement ps = connection.prepareStatement(sql);
                ResultSet rs = ps.executeQuery();
                while (rs.next()){
                    FacultyCategoryModel model = new FacultyCategoryModel();
                    model.setId(Integer.parseInt(rs.getString("id")));
                    model.setName(rs.getString("name"));
                    facultyCategoryModelList.add(model);
                }

            }catch (Exception e){
                System.out.println("Error at FacultyCategoryRepository.findAll:"+e.getMessage());
            }
            finally {
                MySqlConfig.closeConnection(connection);
            }
            return facultyCategoryModelList;
        }
}
