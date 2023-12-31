<%-- 
    Document   : addDailyPlanFinal
    Created on : Jul 15, 2023, 10:14:12 AM
    Author     : khang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Delideli</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--      Bootstrap         -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css"/>
        <!--      CSS         -->
        <link rel="stylesheet" href="./styles/userStyle.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Fira+Sans+Extra+Condensed:wght@300;400;500;600;700&display=swap"
            rel="stylesheet">
    </head>
    <body>
        <div class="a1">
            <!--         The navigation bar       -->
            <%@include file="header.jsp" %>

            <!--         Recipe Plan       -->
            <div class="blank-background">
                <div class="container">
                    <div class="row add-plan">
                        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item"><a href="#"> Plan</a></li> 
                                <li class="breadcrumb-item"><a href="#"> Add Plan</a></li> 
                                <li class="breadcrumb-item"><a href="#"> Daily Plan</a></li> 
                                <li class="breadcrumb-item current-link" aria-current="page">Add Plan Template</li>
                            </ol>
                        </nav>
                        <form action="UserController" method="POST">
                            <div class="add-plan-header">
                                <p>Add Plan Template</p>
                                <p>
                                    Add recipe to plan for one day, use every other day
                                </p>
                            </div>
                            
                            

                            <div class=" add-recipe-info-submit">
                                <button type="submit" name="action" value="addDailyPlanTemplate">
                                    Use Template
                                </button>
                            </div>
                        </form>    

                    </div>
                </div>
            </div>

            <%@include file="footer.jsp" %>

            <script src="bootstrap/js/bootstrap.min.js" ></script>
    </body>
</html>
