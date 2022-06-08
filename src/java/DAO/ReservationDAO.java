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
import model.RevuBycate;

import model.reservation;
import model.reservation_counts;

/**
 *
 * @author admin
 */
public class ReservationDAO {

    public List<reservation> getAllReservation() {
        List<reservation> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [category]";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reservation rev = new reservation(rs.getInt("reservation_id"), rs.getInt("user_id"), rs.getFloat("total_price"), rs.getString("note"), rs.getInt("reservation_status"), rs.getDate("created_date"));

                list.add(rev);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public int CountReservationByStatus(int id) {

        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select COUNT(*) as 'ThanhCong' from reservation where reservation_status = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int n = rs.getInt("ThanhCong");
                return n;
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public float RevenuesAll() {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select SUM(price) as 'TotalPrice' from reservation_detail red\n"
                    + "join reservation re\n"
                    + "on red.reservation_id = re.reservation_id";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int n = rs.getInt("TotalPrice");
                return n;
            }

        } catch (Exception e) {
        }
        return 0;
    }

    public List<Float> RevenuesByCategoryID() {
        List<Float> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select SUM(price) as 'Total', category_id from reservation_detail\n"
                    + "group by category_id order by category_id";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Float n = rs.getFloat(1);

                list.add(n);
            }
            return list;
        } catch (Exception e) {
        }
        return list;
    }

    public List<reservation_counts> getAllReservation7days() {
        List<reservation_counts> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select re.created_date,COUNT(res.service_id) Count_Service from reservation re\n"
                    + "join reservation_detail res\n"
                    + "on re.reservation_id = res.reservation_id\n"
                    + "group by re.created_date\n"
                    + "order by created_date\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reservation_counts rev = new reservation_counts(rs.getDate(1), rs.getInt(2));
                list.add(rev);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<reservation_counts> getAllReservationSuccess7days() {
        List<reservation_counts> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select re.created_date,COUNT(res.service_id) Count_Service from reservation re\n"
                    + "join reservation_detail res\n"
                    + "on re.reservation_id = res.reservation_id\n"
                    + "where re.reservation_status = 1\n"
                    + "group by re.created_date\n"
                    + "order by created_date\n"
                    + "DESC";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                reservation_counts rev = new reservation_counts(rs.getDate(1), rs.getInt(2));
                list.add(rev);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ReservationDAO rs = new ReservationDAO();
        System.out.println(rs.RevenuesByCategoryID().get(1));
    }
}
