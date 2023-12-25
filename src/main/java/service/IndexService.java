package service;

import model.*;
import repository.ArticleRepository;
import repository.FacultyCategoryRepository;
import repository.FacultyRepository;
import repository.NewSletterRepository;

import java.util.ArrayList;

public class IndexService {
    private NewSletterRepository repository = new NewSletterRepository();
    private FacultyCategoryRepository facultyCategoryRepository = new FacultyCategoryRepository();
    private FacultyRepository facultyRepository = new FacultyRepository();
    private ArticleRepository articleRepository = new ArticleRepository();
    public ArrayList<NewSletterModel> findByName(String title){
        return repository.findByTitle(title).getNewSletterModels();
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
        for (FacultyCategoryModel facultyCategoryModel:facultyCategoryModelArrayList){
            System.out.println("FacultyCategoryID:"+facultyCategoryModel.getId());
            for (FacultyModel facultyModel:facultyCategoryModel.getFacultyModelList()){
                System.out.println("-   -   -FacultyID:"+facultyModel.getId());
                for (ArticleModel articleModel: facultyModel.getArticleModelList()){
                    System.out.println("-   -   -   -ArticleID:"+articleModel.getId());
                }
            }
        }
        return facultyCategoryModelArrayList;
    }
}
