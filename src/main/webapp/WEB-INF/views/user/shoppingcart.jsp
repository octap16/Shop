<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>

<div class="row">
						<div class="col-md-12  "  style="padding:0 16% 0 14%;">
							<nav class="navbar navbar-inverse" style="margin:-2px 2px 0px 0px; background:#292d39;">
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
															<span id ="cart_items">Кошик</span>
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
					</div>
					
				<div class="row" style="background: #f4f4f4;">
							<div class="col-md-12"  style="padding:0 16% 0 14%;">
										<div class="breadcrumb_wrap">
												<ul class="breadcrumb">
													<li>
														<a href="/?size=4" class="homepage-link">Головна</a>
													</li>
													<li>
														<span class="page-title">Кошик</span>
													</li>
												</ul>
											</div>
											<h2 class="page_heading">Придбаний товар</h2>
											<div class="col-md-12"  style="margin-top:30px;  background:#292d39; color: white; font-size:16px; text-align: center; ">	
												<div class="col-md-6" style=" border-right:1px solid #f4f4f4;">	
													Продукт
												</div>
												<div class="col-md-3" style=" border-right:1px solid #f4f4f4;">	
													Ціна
												</div>
												
												<div class="col-md-3">	
												Видалити
												</div>
									</div>
										
											<c:forEach items="${carts.items}" var="cart">
										<div class="col-md-12 cart_item " style="background:white; border-bottom:1px solid #f4f4f4; ">	
											<div class="col-md-6" style="height:300px; border-right:1px solid #f4f4f4; text-align: left;">	
												<div class="col-md-6">	
												 <h1><img class="img-rounded" width="100%" src="/images/item/${cart.id}.jpg?version=${cart.version}"></h1>
												</div>
												<div class="col-md-6">	
												<ul class="cart-1">
												<li style="font-size: 15px; color: #26a0d7; ">Виробник: <span class="price">${cart.producer.name}  </span></li>
												<li style="font-size: 15px; color: #26a0d7; ">Марка:<span class="price">${cart.model.name}</span></li>
												<li style="font-size: 15px; color: #26a0d7; ">Розмір:<span class="price">${cart.size}</span></li>
												<li style="font-size: 15px; color: #26a0d7; ">Сезон:<span class="price">${cart.season.name}</span></li>
												<li style="font-size: 15px; color: #26a0d7; ">Колір:<span class="price">${cart.color.name}</span></li>
												<li style="font-size: 15px; color: #26a0d7; ">Категорія:<span class="price">${cart.category.name}</span></li>
												
												</ul>
												</div>
											</div>
											<div class="col-md-3" style="height:300px; border-right:1px solid #f4f4f4; text-align: center;">	
												<div class="product_price">${cart.price}<span class="price">грн</span></div>
											</div>
										
											<div class="col-md-3" style=" text-align: center;">	
												<a class="cart_item__remove" style="font-size: 30px;"title="1" href="/shoppingcart/delete/${cart.id}"><i class="fa fa-trash"></i></a>
											</div>
										</div>
										</c:forEach>
							</div>		
						
				
				
				</div>
				<div class="row" style="margin-right: 0px;">
					<div class="col-md-12"  style="padding:0 16% 0 14%; background: #f4f4f4;">
				<div style="height:30px;"></div>
				</div>
			</div>