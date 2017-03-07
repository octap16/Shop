<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
<%@ page import="ua.entity.*" %>
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
													<a href="https://novaposhta.ua/">КОНТАКТИ</a>
												</li>
												
												<li class="megamenu_item">
													<a href="#">ОПЛАТА І ДОСТАВКА</a>
												</li>
												
											</ul>
													
										</div>
										
									</div>
									</nav>
									</div>
					</div>
					<% Item item = new Item();%>
					<div class="row">
							<div class="col-md-12  " style=" padding-left: 8%; margin-top:30px;" >	
								<div class="col-md-6" >
								<div class="slider ">
									<input type="radio" name="slide_switch" id="id7" checked="checked"/>
									<label for="id7">
											<img src="/resources/images/e8u8s95J.jpeg" width="100" />
									</label>
									<img src="/resources/images/e8u8s95J.jpeg" />
									<!--Lets show the second image by default on page load-->
									<input type="radio" name="slide_switch" id="id2"/>
									<label for="id2">
											<img src="/resources/images/x9cu2vbk.jpeg" width="100" />
									</label>
									<img src="/resources/images/x9cu2vbk.jpeg" />
									
									<input type="radio" name="slide_switch" id="id3"/>
									<label for="id3">
										<img src="/resources/images/uB7oXz4L.jpeg" width="100" />
									</label>
									<img src="/resources/images/uB7oXz4L.jpeg" />
									
									<input type="radio" name="slide_switch" id="id4"/>
									<label for="id4">
											<img src="/resources/images/x9cu2vbk.jpeg" width="100" />
									</label>
									<img src="/resources/images/x9cu2vbk.jpeg" />
									
									<input type="radio" name="slide_switch" id="id5"/>
									<label for="id5">
										<img src="/resources/images/uB7oXz4L.jpeg" width="100" />
									</label>
									<img src="/resources/images/uB7oXz4L.jpeg" />
									<script src="http://thecodeplayer.com/uploads/js/prefixfree.js" type="text/javascript"></script>
									</div>
								</div>
							<div class="col-md-6" >
									<div class="product_name_1"> Кроссовки ${item.producer.name} ${item.model.name}</div>
									<div class="dp_val">${item.price} грн.</div>
								<div class="detail_structure">
									<ul>
										<li class="jQtooltip">Розмір — ${item.size}</li>
											<li class="jQtooltip">Категорія  — ${item.category.name}</li>
											<li class="jQtooltip">Колір  — ${item.color.name}</li>
											<li class="jQtooltip">Скзон  — ${item.season.name}</li>
											<li class="jQtooltip">Материал подкладки — 100% вовна</li>
											<li class="jQtooltip">Верхня тканина — замша</li>
									</ul>
								</div>
								<div id="purchase">
								<a href="/filters/ordernow/${item.id}">
								<button class="btn btn-cart" type="submit" id="add-to-cart">Додати в Кошик</button>
								</a>
								</div>
							</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12  " style="padding:30px 10%;" >
						<div class="col-md-8  " style="    font-size: 18px; color: black;  ">${item.context}</div>
						<div class="col-md-4  " ></div>
							</div>
							</div>
						
						<div class="row">
							<div class="col-md-12  " style="height:30px;" >
							</div>
							</div>
							<div class="row">
							<div class="col-md-12  " style="padding-right:6%; padding 30px 0;" >	
							<div class="col-md-3"></div>
							<div class="col-md-6">
							<div class="embed-responsive embed-responsive-16by9">
							 <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/9lJu1gLvctQ" ></iframe>
								 </div>
								</div>
							<div class="col-md-3"> </div>
							</div>
							</div>
							<div class="row">
							<div class="col-md-12  " style="height:30px;" >
							</div>
							</div>