package model;

import java.util.ArrayList;
import java.util.List;

public class FacultyCategoryModel {
    private int id;
    private String name;
    private List<FacultyModel> facultyModelList = new ArrayList<>();

    public FacultyCategoryModel(int id, String name, List<FacultyModel> facultyModelList) {
        this.id = id;
        this.name = name;
        this.facultyModelList = facultyModelList;
    }

    public List<FacultyModel> getFacultyModelList() {
        return facultyModelList;
    }

    public void setFacultyModelList(List<FacultyModel> facultyModelList) {
        this.facultyModelList = facultyModelList;
    }

    public FacultyCategoryModel() {
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

    public FacultyCategoryModel(int id, String name) {
        this.id = id;
        this.name = name;
    }
}
