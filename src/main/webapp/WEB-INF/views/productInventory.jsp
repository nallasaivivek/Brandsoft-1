<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@include file="/WEB-INF/views/template/header.jsp"%>

 <script>
    $(document).ready(function(){

        $('.table').DataTable({
            "lengthMenu": [[1,2,3,5,10,-1], [1,2,3,5,10, "All"]]
        });
    });

</script> 
<!-- <script>
$(document).ready(function(){
    $('#myTable').dataTable();
});
</script> -->
  <div class="table-responsive">
<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1><u>MANGAE PRODUCTS</u></h1>

            <p class="lead">Here you can manage products</p>
        </div>

        <table class="table table-striped">
            <thead>
            <tr>
                <th>Photo Image</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th>View/Delete/Edit </th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${products}" var="product">
               
                
            <tr >
  <td><img src="<c:url value="/resources/Images/${product.productId}.png" /> " alt="Image" style="width:100%"/></td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}</td>
                    <td><a href="<spring:url value="/product/viewProduct/${product.productId}" />"
                    ><span class="glyphicon glyphicon-info-sign"></span></a>
                        <a href="<spring:url value="/admin/product/deleteProduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-remove"></span></a>
                        <a href="<spring:url value="/admin/product/editproduct/${product.productId}" />"
                        ><span class="glyphicon glyphicon-pencil"></span></a>
                    </td>
                </tr>
                </c:forEach>
                </tbody>
            
        </table>
        </div>
        </div>
        </div>
        

        <a href="<spring:url value="/admin/product/add"/>" class="btn btn-primary">Add Product</a>

        <%@include file="/WEB-INF/views/template/footer.jsp" %>
