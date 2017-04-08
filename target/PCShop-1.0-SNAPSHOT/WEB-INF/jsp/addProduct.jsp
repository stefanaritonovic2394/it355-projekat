<%-- 
    Document   : addProduct
    Created on : 21.03.2017., 18.16.03
    Author     : stefa
--%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/jsp/templates/header.jsp" %>

<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Dodaj proizvod</h1>


            <p class="lead">Popunite informacije ispod da biste dodali proizvod:</p>
        </div>

        <form:form action="${pageContext.request.contextPath}/admin/product/addProduct" method="post" commandName="product" enctype="multipart/form-data">
            <div class="form-group">
                <label for="name">Ime</label>
                <form:errors path="productName" cssStyle="color:#ff0000;" />
                <form:input path="productName" id="productName" class="form-Control" />
            </div>
            
            <div class="form-group">
                <label for="description">Opis</label>
                <form:textarea path="productDescription" id="productDescription" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="category">Kategorija</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="desktop" />Desktop</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="laptop" />Laptop</label>
                <label class="checkbox-inline"><form:radiobutton path="productCategory" id="productCategory" value="komponenta" />Komponenta</label>
            </div>

            <div class="form-group">
                <label for="price">Cena</label>
                <form:errors path="productPrice" cssStyle="color:#ff0000;" />
                <form:input path="productPrice" id="productPrice" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="status">Status</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="active" />Aktivan</label>
                <label class="checkbox-inline"><form:radiobutton path="productStatus" id="status" value="inactive" />Neaktivan</label>
            </div>

            <div class="form-group">
                <label for="unitInStock">Jedinica u skladistu</label>
                <form:errors path="unitInStock" cssStyle="color:#ff0000;" />
                <form:input path="unitInStock" id="unitInStock" class="form-Control" />
            </div>

            <div class="form-group">
                <label for="manufacturer">Proizvodjac</label>
                <form:input path="productManufacturer" id="productManufacturer" class="form-Control" />
            </div>

            <div class="form-group">
                <label class="control-label" for="productImage">Ucitaj sliku</label>
                <input id="productImage" type="file" class="form-control" name="file"/>
            </div>

            <br/><br/>

            <input type="submit" value="Dodaj proizvod" class="btn btn-default">
            <a href="<c:url value="/admin/productInventory" />" class="btn btn-default">Otkazi</a>

        </form:form>

        <%@ include file="/WEB-INF/jsp/templates/footer.jsp" %>