<%@page import="com.usuarios.negocio.Usuario"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.usuarios.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Evaluación</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<link href="css/estilos.css" rel="stylesheet">
<link href="imagenes/dubai.ico" rel="icon">
</head>
<body>
	<header style="background-color: #CFFDF5">
		<nav class="navbar navbar-expand-lg">
			<div class="container-fluid">
				<a class="navbar-brand"> <img src="imagenes/Banner_dubai.png"
					alt="Banner Dubái" class="d-flex mb-3 mb-md-0 me-md-auto"
					width="200px">
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse justify-content-end"
					id="navbarSupportedContent">
					<ul class="navbar-nav">
						<li class="nav-item"><a href="index.jsp" class="nav-link">Inicio</a></li>
						<li class="nav-item"><a href="Comida.jsp" class="nav-link">Comida</a></li>
						<li class="nav-item"><a href="Hospedaje.jsp" class="nav-link">Hospedaje</a></li>
						<li class="nav-item"><a href="Interes.jsp" class="nav-link">Lugar
								Interes</a></li>
						<li class="nav-item"><a href="Mapa.jsp" class="nav-link">Mapa</a></li>
						<li class="nav-item"><a href="Evaluacion.jsp"
							class="nav-link active" aria-current="page">Evaluacion</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<%
		Usuario user = new Usuario();
		String nombre = request.getParameter("txtNombre");
		String foto = request.getParameter("txtfoto");
		user.ingresarUsuario(nombre, foto);
		%>
		<section style="padding: 50px">
			<form action="resultado.jsp" method="post">
				<div class="mb-3 row">
					<label for="inputYear" class="col-sm-3 col-form-label">¿En
						que año la poblacion de Dubái era de un millón de personas?</label>
					<div class="col-sm-8" style="align-self: center;">
						<input type="number" class="form-control" id="inputPassword"
							name="year" required>
					</div>
				</div>

				<div class="mb-3 row">
					<label for="inputYear" class="col-sm-3 col-form-label"
						style="align-self: center;">¿Qué Idiomas Predominan en
						Dubái?</label>
					<div class="col-sm-8" style="align-self: center;">
						<div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="1"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault" > Inglés
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="2"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault">
									Portugues </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="3"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault">
									Punyabí </label>
							</div>
						</div>
						<div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="4"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault"> Chino
								</label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="5"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault">
									Español </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="6"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault">
									Esperanto </label>
							</div>
						</div>
						<div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="7"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault">
									Frances </label>
							</div>
							<div class="form-check form-check-inline">
								<input class="form-check-input" type="checkbox" value="8"
									id="flexCheckDefault" name="checkbox"> <label
									class="form-check-label" for="flexCheckDefault"> Árabe</label>
							</div>
						</div>
					</div>
				</div>
				<div class="input-group">
					<label class="col-sm-3 col-form-label">¿Cuál es el
						Rascacielos más Grande del Mundo que está Ubicado en Dubái?</label>
					<div class="col-sm-8" style="align-self: center;">
						<select name="cmbRascacielos" class="form-select " aria-label="Default select example">
							<option value="0" selected>Seleccione...</option>
							<option value="1">Burj Al Arab</option>
							<option value="2">Dubai Mall</option>
							<option value="3">Burj Khalifa</option>
							<option value="4">Kingkey 100</option>
						</select>
					</div>
				</div>
				<div class="input-group">
					<label class="col-sm-3 col-form-label">¿Cuál es la Religión
						oficial de Dubái?</label>
					<div style="align-self: center;">
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio1" value="1" required>
							<label class="form-check-label" for="inlineRadio1">Cristianismo</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio2" value="2">
							<label class="form-check-label" for="inlineRadio2">Islam</label>
						</div>
						<div class="form-check form-check-inline">
							<input class="form-check-input" type="radio"
								name="inlineRadioOptions" id="inlineRadio3" value="3">
							<label class="form-check-label" for="inlineRadio3">Hinduísmo</label>
						</div>
					</div>
				</div>
				<div class="mb-3 row">
					<label for="inputYear" class="col-sm-3 col-form-label">¿Cuántas
						conexiones son necesarias para el vuelo de Quito a Dubái?</label>
					<div class="col-sm-8" style="align-self: center;">
						<input name="conexion" type="number" class="form-control" id="inputPassword" required>
					</div>
				</div>
				<div class="centrar">
					<input type="submit" value="Siguiente" /> <input type="reset"
						value="Borrar">
				</div>
			</form>
		</section>
	</main>
	<footer
		class="d-flex flex-wrap justify-content-between align-items-center py-3 mt-0 border-top"
		style="background-color: #ECE2C6;">
		<div class="col-md-4 d-flex align-items-center">
			<span class="mb-3 mb-md-0 text-muted">&copy; 2022 Visit Dubái</span>
		</div>

		<ul class="nav col-md-4 justify-content-end list-unstyled d-flex">
			<li class="ms-3"><a class="text-muted"
				href="https://www.facebook.com/camachinJ/"><img
					src="SVG/facebook.svg" alt="Facebook" width="16" height="16"></a></li>

			<li class="ms-3"><a class="text-muted"
				href="https://wa.me/593998350438"><img src="SVG/whatsapp.svg"
					alt="Whatsapp" width="16" height="16"></a></li>
			<li class="ms-3"><a class="text-muted"
				href="https://github.com/thehaterr"><img src="SVG/github.svg"
					alt="GitHub" width="16" height="16"></a></li>
		</ul>
	</footer>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
		crossorigin="anonymous"></script>
</body>
</html>