/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.service;
import model.slider;

/**
 *
 * @author admin
 */
public class SliderDAO {
    public List<slider> getAllSlider() {
        List<slider> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from slider";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) { 
                slider sli = new slider(rs.getInt("slider_id"), rs.getString("slider_title"), rs.getInt("category_id"), rs.getBoolean("slider_status"));
                list.add(sli);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        SliderDAO ser = new SliderDAO();
        List<slider> list = ser.getAllSlider();
        System.out.println(list.get(0).getSlider_title());
    }
}
