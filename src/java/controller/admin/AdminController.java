/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import DAO.CategoryDAO;
import DAO.ReservationDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.category;
import model.reservation_counts;
import model.user;

/**
 *
 * @author win
 */
public class AdminController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AdminController</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AdminController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        user user1 = (user) request.getSession().getAttribute("admin");
        if (user1 == null){
            PrintWriter out = response.getWriter();
            out.println("Access denied");
        }else{
        //1. Reservations Success
        ReservationDAO reserDAO = new ReservationDAO();
        int countReserSuccess = reserDAO.CountReservationByStatus(1);
        request.setAttribute("countReserSuccess", countReserSuccess);
        //2. Reservation Cancelled
        int countReserCencelled = reserDAO.CountReservationByStatus(2);
        request.setAttribute("countReserCencelled", countReserCencelled);
        //3. Reservation Submited 
        int countReserSubmited = reserDAO.CountReservationByStatus(3);
        request.setAttribute("countReserSubmited", countReserSubmited);
        //4. Revenues All
        float RevenuesAll = reserDAO.RevenuesAll();
        request.setAttribute("RevenuesAll", RevenuesAll);
        //5. Revenues By Category
        
        
        CategoryDAO cateDAO = new CategoryDAO();
        List<category> cateList = cateDAO.getAllCategory();
        List<Float> revenuesOfCate = reserDAO.RevenuesByCategoryID();
        request.setAttribute("cateList", cateList);
        request.setAttribute("revenuesOfCate", revenuesOfCate);
        
        //6. The trend of reservation counts (success, all) by day for the last 7 days 
        List<reservation_counts> listSuccessRes = reserDAO.getAllReservationSuccess7days();
        List<reservation_counts> listAllRes = reserDAO.getAllReservationSuccess7days();
        request.setAttribute("listSuccessRes", listSuccessRes);
        request.setAttribute("listAllRes", listAllRes);
        
        request.getRequestDispatcher("AdminDashBoard.jsp").forward(request, response);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
