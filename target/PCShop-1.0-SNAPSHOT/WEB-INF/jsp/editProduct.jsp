<%-- 
    Document   : editProduct
    Created on : 21.03.2017., 18.41.35
    Author     : stefa
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Izmeni proizvod</h1>


            <p class="lead">Azurirajte informacije o proizvodu ovde:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/editProduct" method="post" commandName="product" enctype="multipart/form-data">

            <form:hidden path="productId" value="${product.productId}" />

            <div class="form-group">
                <label for="name">Ime</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="name" class="form-Control" value="${product.productName}"/>
            </div>

            <div class="form-group">
                <label for="category">Kategorija</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="desktop" />Desktop</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="laptop" />Laptop</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="category" value="komponenta" />Komponenta</label>
            </div>

            <div class="form-group">
                <label for="description">Opis</label>
                <form:textarea path="productDescription" id="description" class="form-Control" value="${product.productDescription}"/>
            </div>

            <div class="form-group">
                <label for="price">Cena</label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="price" class="form-Control" value="${product.productPrice}" />
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Aktivan</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Neaktivan</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Jedinica u skladistu</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" value="${product.unitInStock}"/>
            </div>

            <div class="form-group">
                <label for="manufacturer">Proizvodjac</label>
                <form:input path="productManufacturer" id="manufacturer" class="form-Control" value="${product.productManufacturer}"/>
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Ucitaj sliku</label>
                <form:input id="productImage" path="productImage" type="file" class="form:input-large" />
            </div>

            <br/><br/>

            <input type="submit" value="Azuriraj proizvod" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Otkazi</a>

        </form:form>

<%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>