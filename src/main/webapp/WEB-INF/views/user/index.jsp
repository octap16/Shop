<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
<%@ page import="ua.entity.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<div class="row">
						<div class="col-md-12  "  style="padding:0 16% 0 14%;">
						
							<div class="col-md-9  col-md-push-3">
								<nav class="navbar navbar-inverse" style="margin:-1px 2px 0px 0px; background:#292d39;">
									<div class="container-fluid">
									<div class="navbar-header navbar-right" >
													<button type="button" class="navbar-toggle colapsed" data-toggle="collapse" data-target="#one">
														<span class="sr-only">Navigation</span>
														<span class="icon-bar"></span>
														<span class="icon-bar"></span>
														<span class="icon-bar"></span>
									
													</button>
														
													<div class="header_cart" >
															<a href="/shoppingcart/">
															<i class="fa fa-shopping-cart"></i>
															<span id ="cart_items"> <security:authorize access="isAuthenticated()">  </security:authorize>Кошик </span>
															</a>
														</div>		
									</div>
										<div class="collapse navbar-collapse" id="one" >
											<ul class="nav navbar-nav" style="padding-top: 5px;" >
												<li class="megamenu_item">
													<a href="/">ГОЛОВНА</a>
												</li>
												
												<li class="megamenu_item">
													<a href="#">РОЗПРОДАЖ</a>
												</li>
												
												<li class="megamenu_item">
													<a href="#">КОНТАКТИ</a>
												</li>
												
												<li class="megamenu_item">
													<a href="https://novaposhta.ua/">ОПЛАТА І ДОСТАВКА</a>
												</li>
												
											</ul>
													
										</div>
										
									</div>
									
								</nav>
														
						</div>
						<div class=" col-md-3  col-md-pull-9"   >
							<h3 class="widget_header" style="margin: 0 -5px 0 -4px;" >
							Категорії
							</h3>
						</div>
						</div>
					</div>
					
					<section>
				<div class="container-fluid" style="padding:0 14%;  ">
					<div class="row">
					<div class="sidebar col-md-3 ">
						
						<div class="widget_content" >
							<ul class="list_links" >
							<li><a href="/filters/2">Кросовки для жінок</a></li>
							<li><a href="/filters/1">Кросовки для чоловіків</a></li>
							<li><a href="/filters/3">Дитячі кросовки</a></li>
							
							</ul>
						</div>
					</div>
					<div class="main_content col-md-9 " style="padding-top:30px;" >
							<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
							  <!-- Indicators -->
							  <ol class="carousel-indicators">
							    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
							    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
							  </ol>
							
							  <!-- Wrapper for slides -->
							  <div class="carousel-inner" role="listbox">
							    <div class="item active">
							      <img src="resources/images/01.jpg" >
							      <div class="carousel-caption">
							        
							      </div>
							    </div>
							    <div class="item">
							      <img src="resources/images/02.jpg" >
							      <div class="carousel-caption">
							       
							      </div>
							    </div>
							  	  <div class="item">
							      <img src="resources/images/03.jpg" >
							      <div class="carousel-caption">
							       
							      </div>
							    </div>
							  </div>
							
							  <!-- Controls -->
							  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
							    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							    <span class="sr-only">Previous</span>
							  </a>
							  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
							    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
							    <span class="sr-only">Next</span>
							  </a>
							</div>
						</div>
					
					</div>
				</div>
			<div class="row" style="margin-right: 0px;">
			
				<div class="col-md-12" style=" margin:30px 0; padding:0 15%; ">
				
							
							<div class="main_content col-md-12 "  >
						<c:forEach items="${page.content}" var="item">
							<div class="product col-md-3" style="float:left; background:#fff; list-style:none; position:relative;  margin: 2% 2% 0 0;  width:240px;">
								<div class="product_wrapper">
									<div class="product_img">
									<a class="imd change" href="/info/${item.id}">
									<img class="img-rounded" width="100%" src="/images/item/${item.id}.jpg?version=${item.version}">
									</a>
									</div>
									<div class="product_info">
									<div class="product_price">${item.price}<span class="price">грн</span></div>
									<div class="product_price">${item.producer.name} <span class="product_name">${item.model.name}</span></div>
									
									<div class="product_desc product_desc_short" style="height: 85px; overflow: hidden;text-overflow: ellipsis;">${item.context}</div> 
									<div class="product_links">
										<a href="/filters/ordernow/${item.id}">
										<button class ="btn btn-card" type="submit">
										<i class="fa fa-shopping-cart"></i>
										</button>
										</a>
										<a class="btn" href="/info/${item.id}">
										<i class="fa fa-eye"></i>
										</a>
									</div>	
									</div>
								</div>
							</div>
						</c:forEach>	
						</div>
									
				</div>
				</div>
			<div class="row" style="margin-right: 0px;">
				<div style="height:30px;"></div>
			</div>
		</section>
<div class="col-md-12 col-xs-12 text-center" style="background: #f4f4f4;">
		<custom:pageable page="${page}" cell="<li></li>" container="<ul class='pagination'></ul>" />
			</div>