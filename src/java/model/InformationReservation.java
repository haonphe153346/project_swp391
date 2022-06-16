/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author truon
 */
public class InformationReservation {

    private int reservation_id;
    private Date created_date;
    private float total_price;
    private int reservation_status;
    private int reservation_slot;

    public InformationReservation() {
    }

    public InformationReservation(int reservation_id, Date created_date, float total_price, int reservation_status, int reservation_slot) {
        this.reservation_id = reservation_id;
        this.created_date = created_date;
        this.total_price = total_price;
        this.reservation_status = reservation_status;
        this.reservation_slot = reservation_slot;
    }

    public int getReservation_id() {
        return reservation_id;
    }

    public void setReservation_id(int reservation_id) {
        this.reservation_id = reservation_id;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    }

    public float getTotal_price() {
        return total_price;
    }

    public void setTotal_price(float total_price) {
        this.total_price = total_price;
    }

    public int getReservation_status() {
        return reservation_status;
    }

    public void setReservation_status(int reservation_status) {
        this.reservation_status = reservation_status;
    }

    public int getReservation_slot() {
        return reservation_slot;
    }

    public void setReservation_slot(int reservation_slot) {
        this.reservation_slot = reservation_slot;
    }

}
