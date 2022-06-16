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
import model.InformationReservation;
import model.InformationUserReservation;
import model.ListServiceOfReservation;
import model.RevuBycate;
import model.image;

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

    public InformationUserReservation getInformationUserByReserId(int i) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select DISTINCT u.user_id, u.user_fullname, u.user_gender, u.user_email, u.user_phone\n"
                    + "from [user] u inner join reservation r on u.user_id = r.user_id\n"
                    + "inner join reservation_detail rt on r.reservation_id=rt.reservation_id\n"
                    + "inner join [service] s on rt.service_id=s.service_id\n"
                    + "inner join service_image si on s.service_id=si.service_id\n"
                    + "where r.reservation_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, i);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new InformationUserReservation(
                        rs.getInt("user_id"),
                        rs.getString("user_fullname"),
                        rs.getBoolean("user_gender"),
                        rs.getString("user_email"),
                        rs.getString("user_phone")
                );
                // list.add(rev);
            }
            //  return list;
        } catch (Exception e) {
        }
        return null;
    }

    public InformationReservation getInformationByReservationId(int i) {
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select DISTINCT r.reservation_id, r.created_date, r.total_price, r.reservation_status, rt.slot\n" +
"                    from [user] u inner join reservation r on u.user_id = r.user_id\n" +
"                    inner join reservation_detail rt on r.reservation_id=rt.reservation_id\n" +
"                    inner join [service] s on rt.service_id=s.service_id\n" +
"                    inner join service_image si on s.service_id=si.service_id\n" +
"                    where rt.reservation_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, i);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new InformationReservation(
                        rs.getInt("reservation_id"),
                        rs.getDate("created_date"),
                        rs.getFloat("total_price"),
                        rs.getInt("reservation_status"),
                        rs.getInt("slot")
                );
                // list.add(rev);
            }
            //  return list;
        } catch (Exception e) {
        }
        return null;
    }

    public List<ListServiceOfReservation> getListServiceOfReservation(int i) {
        List<ListServiceOfReservation> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select DISTINCT si.image_link, s.service_title,\n"
                    + "s.service_price, rt.num_of_person, r.total_price\n"
                    + "from [user] u inner join reservation r on u.user_id = r.user_id\n"
                    + "inner join reservation_detail rt on r.reservation_id=rt.reservation_id\n"
                    + "inner join [service] s on rt.service_id=s.service_id\n"
                    + "inner join service_image si on s.service_id=si.service_id\n"
                    + "where r.reservation_id = ?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, i);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ListServiceOfReservation listServiceOfReservation = new ListServiceOfReservation(
                        rs.getString("image_link"),
                        rs.getString("service_title"),
                        rs.getFloat("service_price"),
                        rs.getInt("num_of_person"),
                        rs.getFloat("total_price")
                );
                list.add(listServiceOfReservation);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }

    public static void main(String[] args) {
        ReservationDAO rs = new ReservationDAO();
        System.out.println(rs.getListServiceOfReservation(6));
    }

}
