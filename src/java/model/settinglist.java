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
public class settinglist {
    private int setting_id;
    private String setting_name;
    private boolean setting_status;

    public settinglist() {
    }

    public settinglist(int setting_id, String setting_name, boolean setting_status) {
        this.setting_id = setting_id;
        this.setting_name = setting_name;
        this.setting_status = setting_status;
    }

    public int getSetting_id() {
        return setting_id;
    }

    public void setSetting_id(int setting_id) {
        this.setting_id = setting_id;
    }

    public String getSetting_name() {
        return setting_name;
    }

    public void setSetting_name(String setting_name) {
        this.setting_name = setting_name;
    }

    public boolean isSetting_status() {
        return setting_status;
    }

    public void setSetting_status(boolean setting_status) {
        this.setting_status = setting_status;
    }
    
}
