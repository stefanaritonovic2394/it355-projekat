<%-- 
    Document   : cart
    Created on : 21.03.2017., 18.31.52
    Author     : stefa
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<script>
    $(document).ready(function () {
        $('#example').DataTable({
            scrollY: '50vh',
            scrollCollapse: true,
            paging: false
        });
    });
</script>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Korpa</h1>
                    <p>Svi izabrani proizvodi u vasoj korpi</p>
                </div>
            </div>
        </section>

        <section class="container">

            <div>
                <c:if test="${not empty error}"><div class="alert-box error"><span>Greska: </span>${error}</div></c:if>
                <a href="${pageContext.request.contextPath}/customer/cart/checkout" class="btn btn-success pull-right"><span class="glyphicon glyphicon-shopping-cart"></span> Kupi</a>
            </div>

            <br/><br/><br/>

            <table id="example" class="display" cellspacing="0" width="100%">
                <tr>
                    <th>Opcije</th>
                    <th>Slika</th>
                    <th>Ime</th>
                    <th>Cena</th>
                    <th>Kolicina</th>
                    <th>Ukupno</th>
                </tr>
                <c:set var="s" value="0"></c:set>
                <c:forEach var="item" items="${sessionScope.cart}" varStatus="i">
                    <c:set var="s" value="${s + item.product.productPrice * item.quantity}"></c:set>
                    <tr>
                        <td><a href="${pageContext.request.contextPath}/customer/cart/delete/${i.index}"><span class="glyphicon glyphicon-remove" style="color: red"></span></a></td>
                        <td><a href="${pageContext.request.contextPath}/product/viewProduct/${item.product.productId}"><img src="${item.product.productImage}" alt="image"/></a></td>
                        <td>{{item.product.productName}}</td>
                        <td>{{item.product.productPrice}}</td>
                        <td>{{item.quantity}}</td>
                        <td>${item.product.productPrice * item.quantity}</td>
                    </tr>
                </c:forEach>
                <tr>
                    <td colspan="6" align="right"><b>Suma</b></td>
                    <td>${s}</td>
                </tr>
            </table>

            <a href="${pageContext.request.contextPath}/product/productList/all" class="btn btn-primary">Nastavite kupovinu</a>

        </section>

        <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>