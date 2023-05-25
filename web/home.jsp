<%-- 
    Document   : home
    Created on : May 23, 2023, 8:09:36 AM
    Author     : Admin
--%>
<%@page import="Recipe.RecipeDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Recipe.RecipeDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Delideli</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--      Bootstrap         -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
        <!--      CSS         -->
        <link rel="stylesheet" href="./styles/userStyle.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Fira+Sans+Extra+Condensed:wght@300;400;500&display=swap"
              rel="stylesheet">
    </head>
    <body>
        <!--         The navigation bar       -->
        <%@include file="header.jsp" %>


        <!--         The banner       -->
        <div class="container-fluid banner">
            <div class="container">
                <a href="" class="row ">
                    <div class="banner-content col-md-3">
                        <p>All new</p>
                        <p>Perfect Breakfast</p>
                        <p>Try out our new recipes for an easy and delicious breakfast that everybody can enjoy</p>
                    </div>
                </a>
            </div>

        </div>




        <!--         The news section      -->
        <div class="new">
            <div class="container">
                <div class="row">
                    <header>
                        <a href="" class="header">
                            <p>What's New</p>
                            <img src="./assets/arrow.svg" alt="">
                        </a>
                    </header>
                </div>
                <div class="row">
                    <a href="" class="col-md-8 first-new ">
                        <img src="./pictures/gorden.jpg" alt="">
                        <p>Gordon Ramsey's recipes that can help you lose weight effectively</p>
                    </a>
                    <div class="col-md-4 other-news">
                        <a href="" class="second-new">
                            <img src="./pictures/banana.jpg" alt="">
                            <p>6 nutritional benefits that bananas can give you</p>
                        </a>
                        <a href="" class="third-new">
                            <img src="./pictures/fried-food.png" alt="">
                            <p>Fried foods: To eat or not to eat</p>
                        </a>
                    </div>
                </div>
            </div>
        </div>





        <!--         Recommendation 1       -->
        <div class="recommendation-1">
            <div class="container ">
                <div class="row">
                    <header>
                        <a href="" class="header">
                            <p>Mr. Worldwide</p>
                            <img src="./assets/arrow.svg" alt="">
                        </a>
                    </header>
                </div>
                <div class="row recommendation-content">
                    <%
                        ArrayList<RecipeDTO> listRecipe = RecipeDAO.getAllRecipes();
                        if (listRecipe != null && listRecipe.size() != 0) {
                            for (RecipeDTO r : listRecipe) {
                    %>
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                                <img src="<%= RecipeDAO.getThumbnailByRecipeId(r.getId())%>" alt="">
                        </div>
                        <div>
                            <p><%= RecipeDAO.getCategoryByRecipeId(r.getId())%></p>
                            <p><%= r.getTitle()%></p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <%
                                for (int i = 0; i < RecipeDAO.getRatingByRecipeId(r.getId()); i++) {
                            %>
                            <img src="./assets/full-star.png" alt="">
                            <%
                                }
                            %>
                            <p class="recommendation-content-reciew-rating"></p>
                        </div>
                    </a>
                    <%
                            }

                        }
                    %>
                </div>
            </div>
        </div>







        <!--         Recommendation 2       -->
        <div class="recommendation-2">
            <div class="container">
                <div class="row">
                    <header>
                        <a href="" class="header">
                            <p>Vegan Season</p>
                            <img src="./assets/arrow.svg" alt="">
                        </a>
                    </header>
                </div>
                <div class="row recommendation-content">
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                            <img src="./pictures/egg1.jpeg" alt="">
                        </div>
                        <div>
                            <p>Indian</p>
                            <p>Chicken Curry</p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <p class="recommendation-content-reciew-rating">2 ratings</p>
                        </div>
                    </a>
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                            <img src="./pictures/egg1.jpeg" alt="">
                        </div>
                        <div>
                            <p>Indian</p>
                            <p>Chicken Curry</p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <p class="recommendation-content-reciew-rating">2 ratings</p>
                        </div>
                    </a>
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                            <img src="./pictures/egg1.jpeg" alt="">
                        </div>
                        <div>
                            <p>Indian</p>
                            <p>Chicken Curry</p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <p class="recommendation-content-reciew-rating">2 ratings</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>



        <!--         Recommendation 3       -->
        <div class="recommendation-3">
            <div class="container">
                <div class="row">
                    <header>
                        <a href="" class="header">
                            <p>Eggcelent Recipes</p>
                            <img src="./assets/arrow.svg" alt="">
                        </a>
                    </header>
                </div>
                <div class="row recommendation-content">
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                            <img src="./pictures/egg1.jpeg" alt="">
                        </div>
                        <div>
                            <p>Indian</p>
                            <p>Chicken Curry</p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <p class="recommendation-content-reciew-rating">2 ratings</p>
                        </div>
                    </a>
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                            <img src="./pictures/egg1.jpeg" alt="">
                        </div>
                        <div>
                            <p>Indian</p>
                            <p>Chicken Curry</p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <p class="recommendation-content-reciew-rating">2 ratings</p>
                        </div>
                    </a>
                    <a href="" class="col-md-4 recommendation-content-post">
                        <div class="recommendation-content-picture">
                            <img src="./pictures/egg1.jpeg" alt="">
                        </div>
                        <div>
                            <p>Indian</p>
                            <p>Chicken Curry</p>
                        </div>
                        <div class="recommendation-content-reciew">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <img src="./assets/full-star.png" alt="">
                            <p class="recommendation-content-reciew-rating">2 ratings</p>
                        </div>
                    </a>
                </div>
            </div>
        </div>


        <!--         Footer       -->
        <div class="footer">
            <div class="container">
                <div class="row">
                    <div class="website-social-media col-md-6">
                        <a href="homePage.html" class="website-social-media-logo">
                            <img src="./assets/Logo2.png" alt="">
                        </a>
                        <div class="website-social-media-icons">
                            <span>Follow us:</span>
                            <a href="#"><img src="./assets/facebook-icon.svg" alt="Facebook Logo"></a>
                            <a href="#"><img src="./assets/twitter-icon.svg" alt="Twitter Logo"></a>
                        </div>
                    </div>
                    <nav class="navigation-bar-footer col-md-3">
                        <ul class="navigation-bar-footer-content">
                            <li><a href="">CATEGORIES</a></li>
                            <li><a href="">INGREDIENTS</a></li>
                            <li><a href="">CUISINES</a></li>
                            <li><a href="">DIFFICULTIES</a></li>
                            <li><a href="">NEWS</a></li>
                        </ul>
                    </nav>
                    <nav class="website-infomation-bar col-md-3">
                        <ul class="website-infomation-bar-content">
                            <li><a href="">About us</a></li>
                            <li><a href="">Privacy Policies</a></li>
                            <li><a href="">Term of Services</a></li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <!--      Bootstrap for JS         -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
        crossorigin="anonymous"></script>
    </body>
</html>
