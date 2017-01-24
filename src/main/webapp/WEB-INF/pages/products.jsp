<%@ taglib prefix="s" uri="/struts-tags" %>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="nav.jsp"></jsp:include>
<div class="container">
	<div class="row">
<div class="col-md-12">
		<h3 class="text-center">Saludos <s:property value="#session.user" /></h3>
	</div>
	<div id="carousel-example-generic" class="carousel slide hidden-xs"
		data-ride="carousel">
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				<div class="row">
<s:iterator  value="product">  
	<div class="col-sm-4">
						<div class="col-item">
							<div class="photo">
								<img src="img/<s:property value="img"/>" class="img-responsive"
									alt="img/<s:property value="img"/>" />
							</div>
							<div class="info">
								<div class="row">
									<div class="price col-md-6">
										<h5>
											<s:property value="name"/></h5>
										<h5 class="price-text-color">
											$<s:property value="price"/></h5>
									</div>
									<!--  <div class="rating hidden-sm col-md-6">
										<i class="price-text-color fa fa-star"></i><i
											class="price-text-color fa fa-star"> </i><i
											class="price-text-color fa fa-star"></i><i
											class="price-text-color fa fa-star"> </i><i
											class="fa fa-star"></i>
									</div>-->
								</div>
								<div class="separator clear-left">
									<p class="btn-add">
										 <i class="fa fa-shopping-cart"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm">A&ntilde;adir al carrito</a></p>
									<p class="btn-details">
										<i class="fa fa-list"></i><a
											href="Detalle?prod=<s:property value="id"/>" class="hidden-sm">Mas
											detalles</a>
									</p>
								</div>

								<div class="clearfix"></div>

							</div>
						</div>
					</div>
</s:iterator>  

			</div>
			</div>
		</div>
	</div>

</div>
</div>


<jsp:include page="footer.jsp"></jsp:include>
