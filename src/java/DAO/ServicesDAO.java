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
            String sql = "select * from service\n"
                    + "order by service_title";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
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
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
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
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
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

    public List<service> getAllServicesByTitle(String txt) {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from service\n"
                    + "where\n"
                    + "freetext(service_title,?)\n"
                    + "or\n"
                    + "CONTAINS(service_title,?)\n"
                    + "or\n"
                    + "service_title like ?\n"
                    + "order by service_title";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "\"" + txt + "*\"");
            ps.setString(2, "\"" + txt + "*\"");
            ps.setString(3, "%" + txt + "%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
//        ServicesDAO ser = new ServicesDAO();
//        System.out.println(ser.getNext3Services(4).get(0).getCategory_id());
    }

    public List<service> getTop3Services() {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select top 3 * from service\n"
                    + "order by service_created_date";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<service> getNext3Services(int amount) {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "SELECT * from service\n"
                    + "ORDER BY service_created_date\n"
                    + "OFFSET ? ROWS \n"
                    + "FETCH NEXT 3 ROWS ONLY";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, amount);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<service> getAllServicesByCate(int cate) {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from service\n"
                    + "where category_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, cate);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                List<image> listX = getAllIMGbyServiceID(rs.getInt("service_id"));
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"), rs.getInt("service_vote"), listX);
                list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
}
