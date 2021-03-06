<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css">

    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular.min.js"></script>

    <script src="/webstore/resources/js/controllers.js"></script>

    <title>Products</title>
</head>
<body>
<section>
    <div class="jumbotron">
        <div class="container">
            <h1>Products</h1>
        </div>
    </div>
</section>
<section class="container" data-ng-app="cartApp">
    <div class="row">
        <div class="col-md-5">
            <img src="<c:url value="/webstore/img/${product.productId}.png"></c:url>" alt="image"  style = "width:100%"/>
        </div>
        <div class="col-md-5">
            <h3>${product.name}</h3>
            <p>${product.description}</p>
            <div><p>
                <strong>Item Code : </strong>
                <a href="#" class="btn btn-warning btn-large">${product.productId}</a>
            </p></div>
            <p><strong>manufacturer</strong> : ${product.manufacturer} </p>
            <p><strong>category</strong> : ${product.category} </p>
            <p><strong>Availble units in stock </strong> : ${product.unitsInStock} </p>
            <h4> ${product.unitPrice} USD </h4>
            <p data-ng-controller="cartCtrl">

                <a href="<spring:url value="/cart" />" class="btn btn-default">
                     <span class="glyphicon-hand-right glyphicon"></span> View Cart
                </a>

                <a href="#" class="btn btn-warning btn-large"  data-ng-click="addToCart('${product.productId}')">
                     <span class="glyphicon-shopping-cartglyphicon"></span> Order Now
                </a>
            </p>
            <p>
                <a href="<spring:url value="/webstore/market/products" />" class="btn btn-default">
                    <span class="glyphicon-hand-left glyphicon"></span> back
                </a>

            </p>

        </div>
    </div>
</section>
</body>
</html>

