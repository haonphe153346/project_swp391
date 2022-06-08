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
import model.blog;
import model.service;

/**
 *
 * @author admin
 */
public class BlogsDAO {
    public List<blog> getBlogsIndexNew() {
        List<blog> list = new ArrayList<>();
        try {
            Connection conn = new DBContext().getConnection();
            String sql = "select TOP 9 * from blogs order by blog_created_date";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                blog blog = new  blog(rs.getInt("blog_id"), rs.getInt("user_id"), rs.getString("title"), rs.getString("bi"), rs.getDate("blog_created_date"), rs.getInt("category_id"), rs.getString("detail"), rs.getString("blog_image"), rs.getBoolean("view_able"));
                list.add(blog);
            }
            return list;
        } catch (Exception e) {
        }
        return null;
    }
    public static void main(String[] args) {
        BlogsDAO ser = new BlogsDAO();
        
    }
}
