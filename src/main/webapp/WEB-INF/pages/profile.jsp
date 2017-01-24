<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="header.jsp" />
<jsp:include page="nav.jsp"></jsp:include>
<div class="col-md-12">
		<h3 class="text-center">Saludos <s:property value="#session.user" /></h3>
	</div>
<div class="container">
	<div class="row">
		<div class="col-md-6 text-center">
			<a href="products">
				<h3>Productos</h3>
			</a>
		</div>
		<div class="col-md-6 text-center">
			<a href="">
				<h3>Pedidos</h3>
			</a>
		</div>
	</div>
</div>
<jsp:include page="footer.jsp" />