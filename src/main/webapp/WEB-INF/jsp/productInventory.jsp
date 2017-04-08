<%-- 
    Document   : productInventory
    Created on : 21.03.2017., 18.46.32
    Author     : stefa
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
        <div class="page-header">
            <h1>Strana za upravljanje proizvodima</h1>

            <p class="lead">Ovo je strana za upravljanje proizvodima!</p>
            <a href="<spring:url value="/admin" />" class="btn btn-default">Nazad na stranu za administratora</a>

            <table id="example" class="display" cellspacing="0" width="100%">
                <thead>
                    <tr class="bg-primary">
                        <th>Slika</th>
                        <th>Ime proizvoda</th>
                        <th>Kategorija</th>
                        <th>Cena</th>
                        <th>Pregledaj proizvod</th>
                        <th>Ukloni proizvod</th>
                        <th>Izmeni proizvod</th>
                    </tr>
                </thead>
                <c:forEach items="${products}" var="product">
                    <tr>
                        <td><img src="${product.productImage}" alt="image" style="width:100%"/></td>
                        <td>${product.productName}</td>
                        <td>${product.productCategory}</td>
                        <td>${product.productPrice}</td>
                        <td>
                            <a href="<spring:url value="/product/viewProduct/${product.productId}" />"><span class="glyphicon glyphicon-info-sign"></span></a>
                        </td>
                        <td><a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"><span class="glyphicon glyphicon-remove"></span></a></td>
                        <td><a href="<spring:url value="/admin/product/editProduct/${product.productId}" />"><span class="glyphicon glyphicon-pencil"></span></a></td>
                    </tr>
                </c:forEach>
            </table>

            <a href="<spring:url value="/admin/product/addProduct" />" class="btn btn-primary">Dodaj proizvod</a>

            <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>