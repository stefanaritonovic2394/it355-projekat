<%-- 
    Document   : registerCustomer
    Created on : 21.03.2017., 18.59.43
    Author     : stefa
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Registracija kupca</h1>

            <p class="lead">Molimo Vas popunite svoje podatke ispod:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/register" method="post" commandName="customer">

            <h3>Osnovni podaci:</h3>

            <div class="form-group">
                <label for="name">Ime</label>
                <form:errors path="customerName" cssStyle="color: #ff0000" />
                <form:input path="customerName" id="name" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <span style="color: #ff0000">${emailMsg}</span>
                <form:errors path="customerEmail" cssStyle="color: #ff0000" />
                <form:input path="customerEmail" id="email" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="phone">Telefon</label>
                <form:input path="customerPhone" id="phone" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="streetname">Ime ulice</label>
                <form:errors path="customerStreetName" cssStyle="color: #ff0000" />
                <form:input path="customerStreetName" id="streetname" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="city">Grad</label>
                <form:errors path="customerCity" cssStyle="color: #ff0000" />
                <form:input path="customerCity" id="city" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="country">Drzava</label>
                <form:errors path="customerCountry" cssStyle="color: #ff0000" />
                <form:input path="customerCountry" id="country" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="username">Korisnicko ime</label>
                <span style="color: #ff0000">${usernameMsg}</span>
                <form:errors path="username" cssStyle="color: #ff0000" />
                <form:input path="username" id="username" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="password">Lozinka</label>
                <form:errors path="password" cssStyle="color: #ff0000" />
                <form:password path="password" id="password" class="form-Control" />
            </div>

            <br/>

            <br/><br/>

            <input type="submit" value="Registruj se" class="btn btn-default">
            <a href="<c:url value="/" />" class="btn btn-default">Otkazi</a>

        </form:form>

        <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>