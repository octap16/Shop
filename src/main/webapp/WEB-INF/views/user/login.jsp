<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

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
											<a href="/" class="homepage-link">Головна</a>
										</li>
										<li>
											<span class="page-title">Аккаунт</span>
										</li>
									</ul>
								</div>
								<h2 class="page_heading">Ввійдіть або зареєструйте новий акаунт</h2>
									<div id="account_login">
										<div class="account_wrapper">
											<div class="account_left">
												<div class="account_section">
													<h4>Що нового?</h4>
													<p class="note">Реєстрація безплатна і легка!</p>
													<ul>
														<li>Швидка покупка</li>
														<li>Збереження адресу</li>
														<li>Перегляд та відсежування замовлення і більше</li>
													</ul>
													<a id="account_register__link" class="btn" href="/registration">Створити акаунт</a>
												</div>
											</div>

											<div class="account_right">
												<div class="account_section">
														<form:form class="form-horizontal" action="/login" method="POST">
													<input type="hidden" value="customer_login" name="form_type">
													<p class="alert-form-info"></p>
														<input type="hidden" name="utf8" value="✓">
													<p class="alert-form-info"></p>
														<h4>Вже зареєстрований?</h4>
														<div class="form-group">
															<label for="login" class="control-label">Логін</label>
															<input class="form-control" name="login" id="login">
														</div>
															<div class="form-group">
																<label for="password" class="control-label">Пароль</label>
																<input class="form-control" name="password" id="password">
															</div>
															<div class="form-group">
														<label class="custom-control custom-checkbox mb-2 mr-sm-2 mb-sm-0">
													    <input type="checkbox" class="custom-control-input">
													    <span class="custom-control-indicator"></span>
													    <span class="custom-control-description">Remember my preference</span>
													  </label>
											</div>
															
															<input class="btn" type="submit" value="Увійти" ><p class="alert-form-info"></p>
											</form:form>
													</div>
												</div>
											</div>
										</div>
									</div>
							
						
				
				<div class="row" style="margin-right: 0px;">
				<div style="height:30px;"></div>
			</div>
				</div>