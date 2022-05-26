/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author admin
 */
public class slider {

    public int slider_id;
    public String slider_title;
    public int category_id;
    public boolean slider_status;

    public slider() {
    }

    public slider(int slider_id, String slider_title, int category_id, boolean slider_status) {
        this.slider_id = slider_id;
        this.slider_title = slider_title;
        this.category_id = category_id;
        this.slider_status = slider_status;
    }

    public int getSlider_id() {
        return slider_id;
    }

    public void setSlider_id(int slider_id) {
        this.slider_id = slider_id;
    }

    public String getSlider_title() {
        return slider_title;
    }

    public void setSlider_title(String slider_title) {
        this.slider_title = slider_title;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public boolean isSlider_status() {
        return slider_status;
    }

    public void setSlider_status(boolean slider_status) {
        this.slider_status = slider_status;
    }

}
