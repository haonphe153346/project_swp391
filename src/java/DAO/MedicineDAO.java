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
import model.medicine;

/**
 *
 * @author win
 */
public class MedicineDAO {
    public List<medicine> getAllMedicine() {
        List<medicine> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select * from [medicine]";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                medicine m = new medicine(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5), rs.getInt(6));
                list.add(m);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        MedicineDAO m = new MedicineDAO();
        List<medicine> list = m.getAllMedicine();
        System.out.println(list.get(0).getMedicine_name());
    }
}
