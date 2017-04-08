<%-- 
    Document   : thanks
    Created on : 04.04.2017., 11.02.52
    Author     : stefa
--%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <section>
            <div class="jumbotron">
                <div class="container">
                    <h1>Zahvaljujemo se na kupovini!</h1>
                    <h2>Kliknite <a href="${pageContext.request.contextPath}/product/productList/all">ovde</a> da pogledate jos proizvoda</h2>
                </div>
            </div>
        </section>

        <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>
