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
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"));
                 list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public List<service> getHotServices() {
        List<service> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select top 4 * from [service] s join reservation_detail re on (s.service_id=re.service_id) order by s.service_rateStar";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                service ser = new service(rs.getInt("service_id"), rs.getString("service_title"), rs.getString("service_bi"), rs.getDate("service_created_date"), rs.getInt("category_id"), rs.getFloat("service_price"), rs.getFloat("service_discount"), rs.getString("service_detail"), rs.getInt("service_rateStar"));
                 list.add(ser);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        ServicesDAO ser = new ServicesDAO();
        List<service> list = ser.getAllServices();
        System.out.println(list.get(0).getService_title());
    }
}
