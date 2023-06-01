/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlet;

import Direction.DirectionDAO;
import Direction.DirectionDTO;
import IngredientDetail.IngredientDetailDAO;
import IngredientDetail.IngredientDetailDTO;
import Recipe.RecipeDAO;
import Recipe.RecipeDTO;
import Review.ReviewDAO;
import Review.ReviewDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class RecipeDetailServlet extends HttpServlet {

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
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            String id = request.getParameter("id"); //Requires the recipeID Param
            System.out.println("[RECIPE_DETAILED]: ID Recieved = " + id);
            
            //RECIPE----------------------------------------------------------------------------------
            RecipeDTO recipe = RecipeDAO.getRecipeByRecipeId(new Integer(id));
            request.setAttribute("recipe", recipe);
            
            String owner = RecipeDAO.getRecipeOwnerByRecipeId(new Integer(id));
            request.setAttribute("owner", owner);
            
            int totalReview = RecipeDAO.getTotalReviewByRecipeId(new Integer(id));
            request.setAttribute("totalReview", totalReview);

            double avgRating = RecipeDAO.getRatingByRecipeId(new Integer(id));
            request.setAttribute("avgRating", avgRating);
            
            String thumbnail = RecipeDAO.getThumbnailByRecipeId(new Integer(id));
            request.setAttribute("thumbnail", thumbnail);

            ArrayList<IngredientDetailDTO> ingredientDetailList = IngredientDetailDAO.getIngredientDetailByRecipeId(new Integer(id));
            request.setAttribute("ingredientDetailList", ingredientDetailList);

            ArrayList<DirectionDTO> directionList = DirectionDAO.getDirectionByRecipeId(new Integer(id));
            request.setAttribute("directionList", directionList);

            String image = RecipeDAO.getImageByRecipeId(new Integer(id));
            request.setAttribute("image", image);

            //REVIEW----------------------------------------------------------------------------------
            ArrayList<ReviewDTO> reviewList = ReviewDAO.getReviewByRecipeId(new Integer(id));
            request.setAttribute("reviewList", reviewList);
            
            request.getRequestDispatcher("recipeDetail.jsp").forward(request, response);

//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet RecipeDetailServlet</title>");
//            out.println("</head>");
//            out.println("<body>");
//            out.println("<h1>Recipe id: " + id + "</h1>");
//            out.println("</body>");
//            out.println("</html>");
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