<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
											<span class="page-title">Аккаунт</span>
										</li>
									</ul>
								</div>
								<h2 class="page_heading">Ввійдіть або зареєструйте новий акаунт</h2>
									<div id="account_register" class="account_section" style="display: block; overflow: hidden;">
											<h4>Створіть аккаунт <span><a class="link_close account_register__cancel" href="#">Закрити</a></span></h4>

									<div class="form-horizontal">
										<form:form class="form-horizontal" action="/registration" method="POST" modelAttribute="user">
											

											<div class="clearfix form-group">
												<label for="username" class="control-label col-sm-4">Логін</label>
												<div class="col-sm-4"><form:input type="text"  class="form-control" path="username" id="username" /></div>
											</div>
											<div class="form-group">
													<label for="username" class="col-sm-6"><form:errors path="username"/></label>
											</div>

											<div class="clearfix form-group">
												<label for="email" class="control-label col-sm-4">Електронна адресса</label>
												<div class="col-sm-4"><form:input type="text"  class="form-control" path="email" id="email"/></div>
											</div>
											<div class="form-group">
													<label for="email" class="col-sm-6"><form:errors path="email"/></label>
											</div>
											
												<div class="clearfix form-group">
												<label for="phoneNumber" class="control-label col-sm-4">Номер телефону</label>
												<div class="col-sm-4"><form:input type="text"  class="form-control" path="phoneNumber" id="phoneNumber"/></div>
											</div>
											<div class="form-group">
													<label for="phoneNumber" class="col-sm-6"><form:errors path="phoneNumber"/></label>
											</div>
																	
											<div class="clearfix form-group">
												<label for="password" class="control-label col-sm-4">Пароль</label>
												<div class="col-sm-4"><form:password  class="form-control" path="password" id="password"/></div>
											</div>
												<div class=" form-group">
													<label for="password" class=" col-sm-6"><form:errors path="password"/></label>
											</div>
											<div class="form-group">
												<div class="col-sm-offset-4 col-sm-4">
													<button class="btn btn-primary" type="submit">Зареєструвати</button>
													<a class="account_register__cancel" href="/login">Скасувати</a>
												</div>
											</div>
										</form:form>
									</div>
								</div>
							</div>
						
				
				<div class="row" style="margin-right: 0px;">
				<div style="height:30px;"></div>
			</div>
				</div>
	
