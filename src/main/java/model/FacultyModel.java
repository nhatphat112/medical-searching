package model;

import java.util.ArrayList;
import java.util.List;

public class FacultyModel {
    private int id;
    private String name;
    private List<ArticleModel> articleModelList = new ArrayList<>();

    public FacultyModel(int id, String name, List<ArticleModel> articleModelList) {
        this.id = id;
        this.name = name;
        this.articleModelList = articleModelList;
    }

    public List<ArticleModel> getArticleModelList() {
        return articleModelList;
    }

    public void setArticleModelList(List<ArticleModel> articleModelList) {
        this.articleModelList = articleModelList;
    }

    public FacultyModel(int id, String name) {
        this.id = id;
        this.name = name;
    }

    public FacultyModel() {

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
