/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.romualdlemattre.tp_mars_poo_web_romu;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author romua
 */
public class nombreMystere1 extends HttpServlet {
  
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
            
        Random hasard = new Random();
        
        int iNbCoups=0;
        int chiffreAuHasard;
        int eChiffreAuHasard = 0;
        int topRandom = 0;
        int coupInitial = 1;
        ArrayList<Integer> tableauScore = new ArrayList();
        ArrayList<Integer> tableauRandom = new ArrayList();
        
        chiffreAuHasard = hasard.nextInt(101);
        tableauRandom.add(0);
    
        HttpSession session = request.getSession(true);
        
        if (session.getAttribute("nbCoups") != null) {
            iNbCoups = (int) session.getAttribute("nbCoups");
            }
        
        if (session.getAttribute("iChiffreAuHasard") != null)   {
            eChiffreAuHasard = (int) session.getAttribute("iChiffreAuHasard");
        }
        
        if (session.getAttribute("tableauScore") != null)   {
            tableauScore = (ArrayList<Integer>) session.getAttribute("tableauScore");
        }
        
        if (session.getAttribute("tableauRandom") != null)   {
            tableauRandom = (ArrayList<Integer>) session.getAttribute("tableauRandom");
        }
                
        tableauScore.add(iNbCoups);
                
        tableauRandom.add(eChiffreAuHasard);
        Collections.sort(tableauRandom, Collections.reverseOrder());
        topRandom = tableauRandom.get(0);
        
        Collections.sort(tableauScore);
        int topCoups = tableauScore.get(0);
      
        session.setAttribute("chiffreAuHasard", chiffreAuHasard);
        session.setAttribute("tableauScore", tableauScore);
        session.setAttribute("tableauRandom", tableauRandom);
        session.setAttribute("topRandom", topRandom);
        session.setAttribute("topCoups", topCoups);
        session.setAttribute("coupInitial", coupInitial);

        RequestDispatcher rd = request.getRequestDispatcher("/nombreMystere.jsp");

        rd.forward(request, response);
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
        processRequest(request, response);
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
