<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.usuarios.negocio.*"%>
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
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
		Nota nota = new Nota();
		Usuario user = new Usuario();
		int id_usuario = user.consultarUsuario();
		int resp1 = Integer.parseInt(request.getParameter("year"));
		String[] resp2 = request.getParameterValues("checkbox");
		int resp3 = Integer.parseInt(request.getParameter("cmbRascacielos"));
		int resp4 = Integer.parseInt(request.getParameter("inlineRadioOptions"));
		int resp5 = Integer.parseInt(request.getParameter("conexion"));
		int nota1 = nota.calcularNota1(resp1);
		int nota2 = nota.calcularNota2(resp2);
		int nota3 = nota.calcularNota3(resp3);
		int nota4 = nota.calcularNota4(resp4);
		int nota5 = nota.calcularNota5(resp5);
		int notaf = nota1 + nota2 + nota3 + nota4 + nota5;
		nota.ingresarNota(nota1, nota2, nota3, nota4, nota5, notaf, id_usuario);
		%>
		<section class="text-end" style="margin: 20px">
			<a class="btn btn-primary" href="tabla.jsp"> Mostrar Tabla de
				Posiciones </a>
		</section>
		<section class="centrar">
			<div class="card" style="width: 50rem;">
				<div class="card-body" style="padding: 20px;">
					<h1>Tu Puntaje es:</h1>
					<h2><%=notaf%>/5
					</h2>
					<p>
						Gracias por haber participado en nuestra evaluación. <br> Por
						favor puntúanos y déjanos tus sugerencias para seguir mejorando
						nuestra página.
					</p>
				</div>
			</div>
			<form action="gracias.jsp?id_usuario=<%=id_usuario%>" method="post">
				<div class="col-12">
					<div class="card">
						<div class="card-header">
							<h2>Calificanos</h2>
						</div>
						<div class="card-body">
							<div class="col-12 centrar">
								<span class="fa fa-star" onclick="calificar(this)"
									style="cursor: pointer;" id="1estrella"></span> <span
									class="fa fa-star" onclick="calificar(this)"
									style="cursor: pointer;" id="2estrella"></span> <span
									class="fa fa-star" onclick="calificar(this)"
									style="cursor: pointer;" id="3estrella"></span>
							</div>
						</div>
					</div>
				</div>

				<div class="card">
					<div class="card-header">
						<h2>Sugerencias</h2>
					</div>
					<div class="card-body">
						<textarea class="form-control" id="exampleFormControlTextarea1"
							rows="3" name="sugerencia" placeholder="Sugerencia..."></textarea>
					</div>
				</div>
				<div class="invisible">
					<input class="hidden" type="text" name="cal" id="cal">
				</div>
				<div class="centrar">
					<input type="submit" value="Enviar" />
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
	<script>
		var contador;
		function calificar(item) {
			let setDataEstrella = document.getElementById("cal");
			console.log(setDataEstrella);
			contador = item.id[0];
			let nombre = item.id.substring(1);
			setDataEstrella.value = contador;
			for (let i = 0; i < 3; i++) {
				if (i < contador)
					document.getElementById((i + 1) + nombre).style.color = "orange";
				else
					document.getElementById((i + 1) + nombre).style.color = "black";
			}
		}
	</script>
</body>
</html>