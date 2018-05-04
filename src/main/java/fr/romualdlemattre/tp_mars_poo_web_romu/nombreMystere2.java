/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package fr.romualdlemattre.tp_mars_poo_web_romu;

import java.io.IOException;
import java.io.PrintWriter;
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
public class nombreMystere2 extends HttpServlet {

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
                        
            int iNombreChoisi = 0;
            int iChiffreAuHasard = 0;
            boolean resultat = false;
            String indication = "";
            int nbCoups=0;
            int iCoups=0;
                                    
            HttpSession session = request.getSession();
            
                if (request.getParameter("choixJoueur") != null) {
                
                    iNombreChoisi = Integer.parseInt(request.getParameter("choixJoueur"));
                }
                if (session.getAttribute("chiffreAuHasard") != null)  {
                    
                    iChiffreAuHasard = (int) session.getAttribute("chiffreAuHasard");
                }
                if (session.getAttribute("coupInitial") != null) {
                
                    iCoups = (int) session.getAttribute("coupInitial");
                }
                if (iNombreChoisi == iChiffreAuHasard)   {
                    
                    resultat = true;
                    nbCoups=iCoups;
                }
                else {
                    
                    resultat = false;
                    iCoups++;
                                        
                    if (iNombreChoisi < iChiffreAuHasard)   {
                    
                        indication = "Le chiffre est plus grand que votre choix";
                    }
                    else {
                    
                        indication = "Le chiffre est plus petit que votre choix";
                    }
                }
                
                
                session.setAttribute("resultat", resultat);
                session.setAttribute("indication", indication);
                session.setAttribute("iCoups", iCoups);
                session.setAttribute("nbCoups", nbCoups);
                session.setAttribute("iChiffreAuHasard", iChiffreAuHasard);
                
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
