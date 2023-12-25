package model;

import java.util.ArrayList;

public class NewSletterListModel {
    private ArrayList<NewSletterModel> newSletterModels;

    public NewSletterListModel(ArrayList<NewSletterModel> newSletterModels) {
        this.newSletterModels = newSletterModels;
    }

    public NewSletterListModel() {

    }

    public ArrayList<NewSletterModel> getNewSletterModels() {
        return newSletterModels;
    }

    public void setNewSletterModels(ArrayList<NewSletterModel> newSletterModels) {
        this.newSletterModels = newSletterModels;
    }
}
