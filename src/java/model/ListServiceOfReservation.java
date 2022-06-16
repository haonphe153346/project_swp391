/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author truon
 */
public class ListServiceOfReservation {
    private String image;
    private String service_title;
    private float service_price;
    private int num_of_person;
    private float total_price;

    public ListServiceOfReservation() {
    }

    public ListServiceOfReservation(String image, String service_title, float service_price, int num_of_person, float total_price) {
        this.image = image;
        this.service_title = service_title;
        this.service_price = service_price;
        this.num_of_person = num_of_person;
        this.total_price = total_price;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getService_title() {
        return service_title;
    }

    public void setService_title(String service_title) {
        this.service_title = service_title;
    }

    public float getService_price() {
        return service_price;
    }

    public void setService_price(float service_price) {
        this.service_price = service_price;
    }

    public int getNum_of_person() {
        return num_of_person;
    }

    public void setNum_of_person(int num_of_person) {
        this.num_of_person = num_of_person;
    }

    public float getTotal_price() {
        return total_price;
    }

    public void setTotal_price(float total_price) {
        this.total_price = total_price;
    }
    
    

}