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
import model.MyReservation;
import model.Reservation_Detail;
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

    public List<MyReservation> getAllReservationByUserID(int user_id) {
        List<MyReservation> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select r.reservation_id,s.service_title,r.created_date,rd.begin_time,rd.num_of_person,r.reservation_status,r.total_price,si.image_link,rd.slot\n" +
"  from reservation r \n" +
"  join reservation_detail rd on (r.reservation_id =rd.reservation_id) \n" +
"  join [service] s on (s.service_id=rd.service_id)\n" +
"  join [service_image] si on(si.service_id=s.service_id)\n" +
"  where r.user_id = ? order by r.created_date desc";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            List<Integer> listId = getAllDiffReservation(user_id);
            for (int i = 0; i < listId.size(); i++) {
                while (rs.next()) {
                     MyReservation myR = new MyReservation(rs.getInt(1), rs.getString(2), rs.getDate(3), rs.getDate(4), rs.getInt(5), rs.getInt(6), rs.getFloat(7),rs.getString(8),rs.getInt(9));
                       
                    if (myR.getReservation_id() == listId.get(i)) {
                        list.add(myR);
                        break;
                    }

                }
            }

            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<Integer> getAllDiffReservation(int user_id) {
        List<Integer> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = " select DISTINCT reservation.reservation_id from reservation,reservation_detail\n"
                    + " where reservation.reservation_id=reservation_detail.reservation_id and reservation.user_id = ?\n"
                    + " group by reservation.reservation_id,reservation_detail.service_id";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, user_id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                int n = rs.getInt("reservation_id");
                list.add(n);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ReservationDAO rs = new ReservationDAO();
        List<MyReservation> list = rs.getAllReservationByUserID(16);
        list.get(0).getReservation_id();
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i).getReservation_status());
        }
    }
}
