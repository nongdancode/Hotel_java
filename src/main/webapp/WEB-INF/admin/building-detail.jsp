<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>

<c:set var="getEmployeeInBuildingUrl"
	value="${pageContext.request.contextPath }/management/building/getEmployeeInBuilding" />
<c:set var="getFloorInBuildingUrl"
	value="${pageContext.request.contextPath }/management/building/getFloorInBuilding" />
<c:set var="updateBuildingDetailUrl" value="${pageContext.request.contextPath }/management/building/building-detail.html" />


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Administrator panel</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport'>

<c:import url="import.jsp" />
</head>
<body class="skin-blue">
	<div class="wrapper">

		<!-- Main Header -->
		<c:import url="header.jsp" />

		<!-- Left side column. contains the logo and sidebar -->
		<c:import url="aside.jsp" />

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>Building Details</h1>
				<ol class="breadcrumb">
					<li><a
						href="${pageContext.request.contextPath }/management/index.html"><i
							class="fa fa-dashboard"></i> Home</a></li>
					<li class="active">Building</li>
				</ol>
			</section>

			<!-- Main content -->
			<section
				style='width: 98%; margin: 20px auto 0 auto; border: 1px; border-style: ridge; border-color: blue; min-height: 400px; border-radius: 10px'>
				<div class='tabs-x tabs-above'>
					<ul id="myTab-1" class="nav nav-tabs" role="tablist">
						<li class="active"><a href="#detail-infor" role="tab"
							data-toggle="tab">Detail Information</a></li>
						<li><a href="#update-infor" role="tab	" data-toggle="tab">Update
								Information</a></li>
						<li><a href="#uploadImage" role='tab' data-toggle='tab'>Upload
								Image </a></li>
					</ul>
					<div id="myTabContent-1" class="tab-content">
						<div class="tab-pane fade in active" id="detail-infor">
							<div class="panel panel-primary">
								<div class="panel-heading">
									<h3 class="panel-title">Detail Apartment Information</h3>
								</div>
								<div class="panel-body">
									<div class='container-fluid'>
										<div class='row'>
											<h5 class='col-md-2'>Building Name:</h5>
											<span class='col-md-6'>${building.name }</span>
										</div>
										<div class='row'>
											<h5 class='col-md-2'>Address:</h5>
											<span class='col-md-6'>${building.address.addressName }
												${building.address.wardName }
												${building.address.district.name },
												${building.address.district.city.name }</span>
										</div>
										<div class='row'>
											<h5 class='col-md-2'>Phone Number:</h5>
											<span class='col-md-6'>${building.phone }</span>
										</div>
										<div class='row'>
											<h5 class='col-md-2'>Building Size:</h5>
											<span class='col-md-6'>${building.buildingSize }</span>
										</div>
										<div class='row'>
											<h5 class='col-md-2'>Year of Building:</h5>
											<span class='col-md-6'>${building.yearBuild }</span>
										</div>
										<div class='row'>
											<h5 class='col-md-2'>Car Garage:</h5>
											<span class='col-md-6'>${building.hasCarGarage ? "<i class='fa fa-check'></i>" : "" }</span>
										</div>
										<div class='row'>
											<h5 class='col-md-2'>Basement:</h5>
											<span class='col-md-6'>${building.hasBasement ? "<i class='fa fa-check'></i>" : "" }</span>
										</div>
										<div class='row mt20'>
											<div class='box box-solid box-primary'>
												<div class='box-header'>
													<h4 class='box-title col-md-12'>Images:</h4>
													<div class='box-tools pull-right'>
														<button class='btn btn-primary btn-sm'
															data-widget='collapse'>
															<i class='fa fa-minus'></i>
														</button>
													</div>
												</div>
												<div class='box-body'>
													<div class='row'>
														<div id="links" class='col-md-12'>
															<c:forEach var="image" items="${building.images }">
																<a
																	href="${pageContext.request.contextPath }/resources/${image.imagePath }"
																	title="${image.name }" data-gallery> <img
																	src="${pageContext.request.contextPath }/resources/${image.imagePath }"
																	alt="${image.name }" width="180" height="120">
																</a>
															</c:forEach>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>
								</div>
							</div>


							<div class="box box-solid box-primary">
								<div class="box-header">
									<h3 class="box-title">List of employees</h3>
									<div class='box-tools pull-right'>
										<button class='btn btn-primary btn-sm' data-widget='collapse'>
											<i class='fa fa-minus'></i>
										</button>
									</div>
								</div>
								<div class="box-body">
									<div class='container-fluid table-responsive'>
										<table id="table1">
											<thead>
												<tr>
													<th>Options</th>
													<th>Employee Name</th>
													<th>Employee Code</th>
													<th>Position</th>
													<th>Assigned Date</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

							</div>

							<div class="box box-solid box-primary">
								<div class="box-header">
									<h3 class="box-title">List of floors</h3>
									<div class='box-tools pull-right'>
										<button class='btn btn-primary btn-sm' data-widget='collapse'>
											<i class='fa fa-minus'></i>
										</button>
									</div>
								</div>
								<div class="box-body">
									<div class='container-fluid table-responsive'>
										<table id="table2">
											<thead>
												<tr>
													<th>Options</th>
													<th>Floor Name</th>
													<th>Number of rooms</th>
													<th>Number of available rooms</th>
													<th>Occupation Rate</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
													<td></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>

							</div>
						</div>
						<div class="tab-pane fade update-detail-info" id="update-infor">
							<spring:form action='#' method="post" modelAttribute="building">
								<div class='container-fluid'>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>Building Name: </label> <span
											class='col-md-9 col-sm-8'><spring:input path="name" cssClass="form-control"/>
											 </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>Building Size: </label> <span
											class='col-md-9 col-sm-8'><spring:input path="buildingSize" cssClass="form-control"/> </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>Year of Building: </label> <span
											class='col-md-3 col-sm-3'><spring:input path="yearBuild" cssClass="form-control"/> </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>Address: </label> <span
											class='col-md-9 col-sm-8'><spring:input path="address.addressName" cssClass="form-control"/> </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>Ward: </label> <span
											class='col-md-9 col-sm-8'><spring:input path="address.wardName" cssClass="form-control"/> </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>District: </label> <span
											class='col-md-9 col-sm-8'> <spring:select path="address.district.id"  cssClass="form-control">
											<c:forEach var="district" items="${listDistrict }">
												<spring:option value="${district.id }">${district.name } - ${district.city.name }</spring:option>
											</c:forEach>
											</spring:select> </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>City: </label> <span
											class='col-md-9 col-sm-8'><spring:select path="address.district.city.id"  cssClass="form-control">
											<c:forEach var="city" items="${listCity }">
												<spring:option value="${city.id }">${city.name }</spring:option>
											</c:forEach>
											</spring:select> </span>
									</div>
									<div class='row'>
										<label class='col-md-3 col-sm-4'>Phone Number: </label> <span
											class='col-md-9 col-sm-8'><spring:input path="phone" cssClass="form-control"/> </span>
									</div>
									<div class='row mt20'>
										<button
											class='btn btn-primary col-md-offset-6 col-sm-offset-6 col-xs-offset-4 col-md-1 col-sm-2 col-xs-3'
											type="submit">Save</button>
									</div>

								</div>
							</spring:form>
						</div>
						<div class="tab-pane fade" id="uploadImage">
							<form action='#' method="post" enctype="multipart/form-data">
								<div class='container-fluid table-responsive'>
									<div class='row'>
										<div class='col-md-12 col-sm-12 col-xs-12'>
											<input id="upload-image" type="file" multiple>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</section>

			<div id="blueimp-gallery" class="blueimp-gallery">
				<!-- The container for the modal slides -->
				<div class="slides"></div>
				<!-- Controls for the borderless lightbox -->
				<h3 class="title"></h3>
				<a class="prev">‹</a> <a class="next">›</a> <a class="close">×</a> <a
					class="play-pause"></a>
				<ol class="indicator"></ol>
				<!-- The modal dialog, which will be used to wrap the lightbox content -->
				<div class="modal fade">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" aria-hidden="true">&times;</button>
								<h4 class="modal-title"></h4>
							</div>
							<div class="modal-body next"></div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default pull-left prev">
									<i class="glyphicon glyphicon-chevron-left"></i> Previous
								</button>
								<button type="button" class="btn btn-primary next">
									Next <i class="glyphicon glyphicon-chevron-right"></i>
								</button>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- /.content -->
		</div>
		<!-- /.content-wrapper -->

		<footer class="main-footer">
			<div class="pull-right hidden-xs">
				<b>Version</b> 2.0
			</div>
			<strong>Copyright &copy; 2014-2015 <a
				href="http://almsaeedstudio.com">Almsaeed Studio</a>.
			</strong> All rights reserved.
		</footer>

	</div>
	<!-- ./wrapper -->


	<script type="text/javascript">
		$(document)
				.ready(
						function(e) {
							var table1 = $('#table1')
									.DataTable(
											{
												'dom' : '<"clear"><"row"<"col-md-3 col-sm-3 col-xs-12"l>'
														+ '<"col-md-6 col-sm-6 col-xs-12"fr><"col-md-3 col-sm-3 col-xs-12"RC>>tip',
												"processing" : false,
												"serverSide" : false,
												"autoWidth" : true,
												"ajax" : {
													"url" : "${getEmployeeInBuildingUrl}",
													"data" : {
														"buildingId" : "${building.id}"
													}
												},
												"colVis" : {
													showAll : "Show all",
													showNone : "Show none"
												},
												"deferRender" : true,
												"createdRow" : function(row,
														data, index) {
												},
												"lengthMenu" : [
														[ 10, 25, 50, -1 ],
														[ 10, 25, 50, "All" ] ],
												"paging" : true,
												"ordering" : true,
												"filter" : true,
												"lengthChange" : true,
												"sort" : true,
												"info" : true,
												"order" : [ [ 1, "asc" ] ],
												columnDefs : [ {
													"searchable" : false,
													"orderable" : false,
													"targets" : 0,
												} ],

												"pagingType" : "full_numbers",
												/* "scrollY" : "330px",
												"scrollCollapse" : true,
												"scrollX" : true, */
												"language" : {
													"decimal" : ",",
													"thousands" : "."
												},
												"columns" : [
														{
															"data" : null,
															"mRender" : function(
																	data, type,
																	full) {
																return "<a href='#update_building' class='mr10 alert_update' data-toggle='modal' data-target='#modalUpdate'>"
																		+ "<span class='fa-1x2 fa fa-pencil-square-o'></span></a>"
																		+ "<a href='#view_detail' class='mr10 view_detail'><span class='fa-1x2 fa fa-th'></span></a>"
																		+ "<a href='#delete_building' class='alert_delete' ><span class='fa-1x2 fa fa-trash-o'></span></a>";
															}
														},
														{
															"data" : "fullName"
														},
														{
															"data" : "employeeCode"
														},
														{
															"data" : "position"
														},
														{
															"data" : "assignedDate"
														}, ],
												"language" : {
													"search" : ""
												},

											});

							$('.dataTables_filter input').attr("placeholder",
									"enter seach terms here");

							var table1 = $('#table2')
									.DataTable(
											{
												'dom' : '<"clear"><"row"<"col-md-3 col-sm-3 col-xs-12"l>'
														+ '<"col-md-6 col-sm-6 col-xs-12"fr><"col-md-3 col-sm-3 col-xs-12"RC>>tip',
												"processing" : false,
												"serverSide" : false,
												"autoWidth" : true,
												"ajax" : {
													"url" : "${getFloorInBuildingUrl}",
													"data" : {
														"buildingId" : "${building.id}"
													}
												},
												"colVis" : {
													showAll : "Show all",
													showNone : "Show none"
												},
												"deferRender" : true,
												"createdRow" : function(row,
														data, index) {
												},
												"lengthMenu" : [
														[ 10, 25, 50, -1 ],
														[ 10, 25, 50, "All" ] ],
												"paging" : true,
												"ordering" : true,
												"filter" : true,
												"lengthChange" : true,
												"sort" : true,
												"info" : true,
												"order" : [ [ 1, "asc" ] ],
												columnDefs : [ {
													"searchable" : false,
													"orderable" : false,
													"targets" : 0,
												} ],

												"pagingType" : "full_numbers",
												/* "scrollY" : "330px",
												"scrollCollapse" : true,
												"scrollX" : true, */
												"language" : {
													"decimal" : ",",
													"thousands" : "."
												},
												"columns" : [
														{
															"data" : null,
															"mRender" : function(
																	data, type,
																	full) {
																return "<a href='#update_building' class='mr10 alert_update' data-toggle='modal' data-target='#modalUpdate'>"
																		+ "<span class='fa-1x2 fa fa-pencil-square-o'></span></a>"
																		+ "<a href='#view_detail' class='mr10 view_detail'><span class='fa-1x2 fa fa-th'></span></a>"
																		+ "<a href='#delete_building' class='alert_delete' ><span class='fa-1x2 fa fa-trash-o'></span></a>";
															}
														},
														{
															"data" : "name"
														},
														{
															"data" : "numberApartment"
														},
														{
															"data" : "numberAvailableApartment"
														},
														{
															"data" : "occupationRate"
														}, ],
												"language" : {
													"search" : ""
												},

											});

							/* $('#table2')
									.DataTable(
											{
												"footerCallback" : function(
														row, data, start, end,
														display) {
													var api = this.api(), data;

													// Remove the formatting to get integer data for summation
													var intVal = function(i) {
														return typeof i === 'string' ? i
																.replace(
																		/[\$,]/g,
																		'') * 1
																: typeof i === 'number' ? i
																		: 0;
													};

													// Total over all pages
													total = api
															.column(4)
															.data()
															.reduce(
																	function(a,
																			b) {
																		return intVal(a)
																				+ intVal(b);
																	});

													// Total over this page
													pageTotal = api
															.column(
																	4,
																	{
																		page : 'current'
																	})
															.data()
															.reduce(
																	function(a,
																			b) {
																		return intVal(a)
																				+ intVal(b);
																	}, 0);

													// Update footer
													$(api.column(4).footer())
															.html(
																	'$'
																			+ pageTotal
																			+ ' ( $'
																			+ total
																			+ ' total)');
												}
											}); */

							$("#upload-image").fileinput({
								maxFileCount : 10,
								allowedFileTypes : [ "image" ],

							});
						});
	</script>
</body>
</html>