package service;

import model.*;
import repository.ArticleRepository;
import repository.FacultyCategoryRepository;
import repository.FacultyRepository;
import repository.NewSletterRepository;

import java.util.ArrayList;

public class DetailService {
    private NewSletterRepository repository = new NewSletterRepository();
    private FacultyCategoryRepository facultyCategoryRepository = new FacultyCategoryRepository();
    private FacultyRepository facultyRepository = new FacultyRepository();
    private ArticleRepository articleRepository = new ArticleRepository();
    public NewSletterResponse findById(int id){
        NewSletterModel model = repository.findById(id);
        NewSletterResponse response = new NewSletterResponse();
        response.setTitle(model.getTitle());
        String info[]= model.getContent().split(";");
        for(int i = 0;i<info.length;i++){
            if(i%2==0){
                response.getSubTitleList().add(info[i]);
            }else {
                response.getSubContentList().add(info[i]);
            }
        }
        return  response;
    }
    public ArrayList<FacultyCategoryModel> getOtherDocument(){
        ArrayList<FacultyCategoryModel> facultyCategoryModelArrayList = new ArrayList<>();
        facultyCategoryModelArrayList = (ArrayList<FacultyCategoryModel>) facultyCategoryRepository.findAll(); // get list FCList
        // set Flist
        for (FacultyCategoryModel facultyCategoryModel : facultyCategoryModelArrayList){
            facultyCategoryModel.setFacultyModelList(facultyRepository.findByFacultyCategoryId(facultyCategoryModel.getId()));
            // set ArticleList for faculty;
            for(FacultyModel facultyModel:facultyCategoryModel.getFacultyModelList()){
                facultyModel.setArticleModelList(articleRepository.findByFacultyId(facultyModel.getId()));
            }

        }
        return facultyCategoryModelArrayList;
    }
}
