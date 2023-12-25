package model;

import java.lang.reflect.Array;
import java.util.ArrayList;

public class NewSletterResponse {
    private int id;
    private String title;
    private ArrayList<String> subTitleList = new ArrayList<>();
    private ArrayList<String> subContentList = new ArrayList<>();

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public ArrayList<String> getSubTitleList() {
        return subTitleList;
    }

    public void setSubTitleList(ArrayList<String> subTitleList) {
        this.subTitleList = subTitleList;
    }

    public ArrayList<String> getSubContentList() {
        return subContentList;
    }

    public void setSubContentList(ArrayList<String> subContentList) {
        this.subContentList = subContentList;
    }

    public NewSletterResponse() {
    }

    public NewSletterResponse(int id, String title, ArrayList<String> subTitleList, ArrayList<String> subContentList) {
        this.id = id;
        this.title = title;
        this.subTitleList = subTitleList;
        this.subContentList = subContentList;
    }
}
