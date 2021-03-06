<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="com.HoliGuide.model.*" %>

<t:master_tourGuide>
	<jsp:attribute name="css">
		<link href="" rel="stylesheet">
		  <link href="/lib/css/tooltip.css" rel="stylesheet">
	  	<style type="text/css">
	  	
	  	.content {
	        background-color: #fff;
	        padding: 20px;
	        margin: 0 -20px; /* negative indent the amount of the padding to maintain the grid system */
	        -webkit-border-radius: 0 0 6px 6px;
	           -moz-border-radius: 0 0 6px 6px;
	                border-radius: 0 0 6px 6px;
	        -webkit-box-shadow: 0 1px 20px rgba(0,0,0,.15);
	           -moz-box-shadow: 0 1px 20px rgba(0,0,0,.15);
	                box-shadow: 0 1px 20px rgba(0,0,0,.15);
	      }
	      body{
	      	background: url('/lib/img/whitespace_filler.jpg');
	      }
	      .page-header {
	        background-color: #2a2a2a;
	        padding: 20px 20px 10px;
	        margin: -20px -10px 20px;
	         -webkit-border-radius: 0 0 50px 50px;
	           -moz-border-radius: 0 0 50px 50px;
	                border-radius: 0 0 50px 50px;
	      }
	      
	      .page-header-content{
	      	color: yellow; 
	      	text-align:center;
	      	padding-top:0.5cm;
	      	padding-right:1cm;
	      	padding-left:1cm;
	      }
	      
		.bubble 
		{
			position: relative;
			padding-left: 30px;
			padding-right: 30px;
			padding-bottom: 15px;
			padding-top: 15px;
			background: #e5f2fb;
			-webkit-border-radius: 30px;
			-moz-border-radius: 30px;
			border-radius: 30px;
			border: #C0C0C0 solid 1px;
			-webkit-box-shadow: 5px 5px 20px rgba(0,0,0,.15);
	        -moz-box-shadow: 5px 5px 20px rgba(0,0,0,.15);
	        box-shadow: 5px 5px 20px rgba(0,0,0,.15);
		}
	
		.bubble:after 
		{
			content: '';
			position: absolute;
			border-style: solid;
			border-width: 16px 16px 16px 0;
			border-color: transparent #e5f2fb;
			display: block;
			width: 0;
			z-index: 1;
			left: -13px;
			top: 50px;
		}
	
		.bubble:before 
		{
			content: '';
			position: absolute;
			border-style: solid;
			border-width: 16px 16px 16px 0;
			border-color: transparent #C0C0C0;
			display: block;
			width: 0;
			z-index: 0;
			left: -15px;
			top: 50px;
		}
		.img-responsive:hover
		{
			-webkit-filter: contrast(180%); 
			border:2px double #bbb;
			color:#aaa;
			text-decoration:"See More";
			background:#e6e6e6
		}
		
		h2 span { 
		   color: yellow; 
		   font: bold 55px/0px Helvetica, Sans-Serif; 
		   -webkit-font-smoothing: antialiased;
		}
		
		.tooltipfont{ 
		   font-size: 13px;
		}
		
		.headerDDLStyle{
			width: 150px; 
			display:inline; 
			vertical-align:top;
		}
		
		.toTheRight{
			overflow: hidden;
			float: right;
		}
		
		.buttonRightPositioning{
			overflow: hidden;
			float: right;
			padding-right:50px;
		}
		
		.imageSize{
			padding-right:20px;
			padding-bottom:10px;
		}
	  	</style>
  </jsp:attribute>
  <jsp:attribute name="js">
		<script src="/lib/js/view_itinerary_list.js"></script>
  </jsp:attribute>
<jsp:body>
   <div class="content">   
	<div class="page-header">
          	<div class="page-header-content">
	          	  Filter by:
	          	 <input type="text" class="form-control headerDDLStyle filter-country" placeholder="Search Country..." />
	          	 <input type="text" class="form-control headerDDLStyle filter-status" placeholder="Search Status..." />
	          	 <input type="text" class="form-control headerDDLStyle filter-date" placeholder="Search Date..." />
        		 <button type="button" class="btn btn-warning">Show All</button>
			  </div>
     </div> 
      
     <div id="Indonesia">

<c:forEach items="${itineraryList}" var="guide">
     <div class="row itinerary">
		  <div class="col-xs-6 col-sm-6 col-md-4 imageSize"><img src="..\lib\img\The_Spa_Club_Med_Bali.jpg" class="img-responsive img-rounded" alt="Responsive image"></div>
		  <div class="bubble col-xs-6 col-sm-6 col-md-8">
			<div class="row">
				 <div class="col-xs-6"> 
				 	<div class="row">
						<div class="country-name"><h4><strong><c:out value="${guide.destination}"/></strong></h4></div>
					</div>
				</div>
				 <div class="col-xs-6"> 
				 	<div class="row">
				 		<h4><strong>Status: <c:out value="${guide.status}"/></strong> <a class="tooltips" href="#">?<span>
				 		<ul class="tooltipfont">
						  <li>Pending Review</li>
						  		Itinerary that is still waiting to be reviewed by any tour guide.<p>	
						  <li>Reviewed</li>
						  		Itinerary that has already received one or more reviews from the tour guides.<p>
						  <li>Closed</li>
						  		Itinerary whose owner has already selected a tour guide.
						</ul>
				 		</span></a></h4>
				 	</div>
				 </div>		
			</div>
			
			<div class="row " style="">
				 <div class="col-xs-6 "> 
					 <div class="row">
					 	Travel Period: <c:out value="${guide.travelPeriod}"/>
					 </div>
					 <div class="row">
					 	Budget: <c:out value="${guide.budget}"/>
					 </div>
					 <div class="row">
					 	Number of Pax: <c:out value="${guide.noOfPax}"/>
					 </div>
					 
				 </div>
				<div class="col-xs-6 ">
					 <div class="row">
					 	Creation Date: <c:out value="${guide.creationDate}"/>
					 </div>
					
				</div>
			</div>
			
		</div>
	</div>
 </c:forEach> 			
	</div>
		<div style="overflow: hidden;">
		    <div style="float: right;">
				<ul class="pagination" >
				  <li><a href="#">&laquo;</a></li>
				  <li><a href="#">1</a></li>
				  <li><a href="#">2</a></li>
				  <li><a href="#">3</a></li>
				  <li><a href="#">4</a></li>
				  <li><a href="#">5</a></li>
				  <li><a href="#">&raquo;</a></li>
				</ul>
			</div>
		</div>
	</div>
	</jsp:body>
</t:master_tourGuide>
