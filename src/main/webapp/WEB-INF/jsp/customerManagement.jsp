<%-- 
    Document   : customerManagement
    Created on : 21.03.2017., 18.38.52
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
            <h1>Strana za upravljanje korisnicima</h1>

            <p class="lead">Ovo je strana za upravljanje korisnicima!</p>
            <a href="<spring:url value="/admin" />" class="btn btn-default">Nazad na stranu za administratora</a>
        </div>

        <table id="example" class="display" cellspacing="0" width="100%">
            <thead>
                <tr class="bg-info">
                    <th>Ime</th>
                    <th>Email</th>
                    <th>Telefon</th>
                    <th>Korisnicko ime</th>
                    <th>Omogucen</th>
                </tr>
            </thead>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerName}</td>
                    <td>${customer.customerEmail}</td>
                    <td>${customer.customerPhone}</td>
                    <td>${customer.username}</td>
                    <td>${customer.enabled}</td>
                </tr>
            </c:forEach>
        </table>

        <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>