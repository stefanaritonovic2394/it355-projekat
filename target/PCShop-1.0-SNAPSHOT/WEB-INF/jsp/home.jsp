<%-- 
    Document   : home
    Created on : 21.03.2017., 15.11.03
    Author     : stefa
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<!-- Carousel
================================================== -->
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner" role="listbox">
        <div class="item active">
            <img class="first-slide home-image" src="<c:url value="/resources/images/pozadi1.jpg" />" alt="First slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Dobrodosli u PC prodavnicu</h1>
                    <p>Ovde mozete da kupite laptopove, desktop racunare i komponente!</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="second-slide home-image" src="<c:url value="/resources/images/pozadi2.jpg" />" alt="Second slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Dobrodosli u PC prodavnicu</h1>
                    <p>Ovde mozete da kupite laptopove, desktop racunare i komponente!</p>
                </div>
            </div>
        </div>
        <div class="item">
            <img class="third-slide home-image " src="<c:url value="/resources/images/pozadi3.jpg" />" alt="Third slide">
            <div class="container">
                <div class="carousel-caption">
                    <h1>Dobrodosli u PC prodavnicu</h1>
                    <p>Ovde mozete da kupite laptopove, desktop racunare i komponente!</p>
                </div>
            </div>
        </div>
    </div>
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Prethodni</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Sledeci</span>
    </a>
</div><!-- /.carousel -->


<div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
        <div class="col-lg-4">
            <img class="img-rounded" src="<c:url value="/resources/images/desktop.gif"/>" alt="Desktop Image" width="140" height="140">
            <h2>Desktop:</h2>
            <p>Dobre konfiguracije sa pristupacnom cenom</p>
        </div>

        <div class="col-lg-4">
            <img class="img-rounded" src="<c:url value="/resources/images/laptop.jpg"/>" alt="Laptop Image" width="140" height="140">
            <h2>Laptop:</h2>
            <p>Veliki izbor laptopova proverenih proizvodjaca</p>
        </div>

        <div class="col-lg-4">
            <img class="img-rounded" src="<c:url value="/resources/images/komponenta.jpg"/>" alt="Komponente Image" width="140" height="140">
            <h2>Komponente:</h2>
            <p>Sve vrste komponenti za desktop racunare</p>
        </div>
    </div>

    <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>