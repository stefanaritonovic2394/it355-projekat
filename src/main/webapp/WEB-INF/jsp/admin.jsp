<%-- 
    Document   : admin
    Created on : 21.03.2017., 18.27.11
    Author     : stefa
--%>

<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Strana za administratora</h1>

            <p class="lead">Ovo je strana za administratora!</p>
        </div>

        <c:if test="${pageContext.request.userPrincipal.name != null}">
            <h2>
                Dobrodosli: ${pageContext.request.userPrincipal.name} |
                <a href="<c:url value="/j_spring_security_logout"/>">Izloguj se</a>
            </h2>

        </c:if>

        <h3>
            <a href="<c:url value="/admin/productInventory" /> ">Upravljanje proizvodima</a>
        </h3>

        <p>Ovde mozete da pregledate, proveravate i izmenite informacije o proizvodima!</p>

        <br/><br/>

        <h3>
            <a href="<c:url value="/admin/customer" /> ">Upravljanje korisnicima</a>
        </h3>

        <p>Ovde mozete da pregledate informacije o korisnicima!</p>

        <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>