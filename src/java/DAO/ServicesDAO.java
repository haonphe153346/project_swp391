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
import model.hotservices;
import model.image;
import model.service;

/**
 *
 * @author admin
 */
public class ServicesDAO extends DBContext {

    public List<service> getAllServices() {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [service]";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<image> getAllIMGbyServiceID(int id) {
        List<image> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from service_image where service_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                image image = new image(rs.getInt("image_id"), rs.getInt("service_id"), rs.getString("image_link"));
                list.add(image);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<service> getServicesByCategoryIDforIndex(int id) {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select TOP 3 * from [service] where category_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public service getServicesByServicesID(int id) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select TOP 3 * from [service] where service_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), listX);
                return ser;
            }        
        } catch (Exception e) {
        }
        return null;
    }
    
    public List<hotservices> getHotServices() {
        List<hotservices> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select Distinct top 3 COUNT(*) 'HotService',service_id from reservation_detail\n"
                    + "group by (service_id)\n"
                    + "order by (COUNT(*))\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                hotservices hotser = new hotservices(rs.getInt("HotService"), rs.getInt("service_id"));
                list.add(hotser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
//     public service getServicesByServicesID(int id) {
//        try {
//            Connection conn = new DBContext().getConnection();
//            String sql = "select TOP 3 * from [service] where service_id = ?";
//            PreparedStatement ps = conn.prepareStatement(sql);
//            ps.setInt(1, id);
//            ResultSet rs = ps.executeQuery();
//            while (rs.next()) {
//                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
//                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), listX);
//                return ser;
//            }        
//        } catch (Exception e) {
//        }
//        return null;
//    }
    public static void main(String[] args) {
        ServicesDAO ser = new ServicesDAO();
        for(int i =0 ;i<ser.getHotServices().size()-1;i++){
            System.out.println(ser.getServicesByServicesID(ser.getHotServices().get(i).getServices_id()).getService_title());
        }
    }
}
