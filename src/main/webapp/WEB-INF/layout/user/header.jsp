<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="/WEB-INF/custom.tld" prefix="custom"%>
<header style="padding:0 14%; ">

				<div class="container-fluid">
					<div class="row">
						<div  class="col-md-12 text-center">
						<div  class="col-md-12 text-right">
									
									<ul class="nav nav-pills" style="float:right">
									<li><a href="https://vk.com/"><i class="fa fa-vk" ></i></a><li>
									<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a><li>
									 <security:authorize access="!isAuthenticated()">
										<li><a href="/login">Увійти</a></li>
										<li><a href="/registration">Реєстрація</a></li>
										</security:authorize>
										 <security:authorize access="isAuthenticated()">
										 <h2></h2>
										 <form:form class="navbar-form navbar-right" action="/logout" method="POST">
					                        <button class="btn btn-primary">Вийти</button>
					                        </form:form>
										 </security:authorize>
										</ul>
										
														
					</div>	
					</div>
				<div class="row">
					<div  class="col-md-12 text-center" style="margin-bottom:20px;">
						<div class="col-md-3 text-center">
							<div class="logo_main">	
							<a href="/">
							<img src="/resources/images/logo.png"></img>
							</a>
							</div>
						</div>	
						<div class="col-md-6 text-center">
							<div class="head_search">
							<form:form modelAttribute="filter" action="/filters/search" method="get" class="search-form">
							<div class="form-group">
								<form:input path="search"  id="search-field" class="span 3 search-query"/>
								<custom:hiddenInputs excludeParams="search"/>
								<button id="search-submit" type="submit">Пошук</button>
								</div>
							</form:form>
							</div>
						</div>
						<div class="col-md-3 text-center">
							<div class="custom_header">
							<i class="fa fa-phone" aria-hidden="true"></i>
							<span>0800-88-88</span>
							</div>
							</div>
					</div>
				</div>
					
				</div>
				</div>
			</header>