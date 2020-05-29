<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Registro de nuevo proyecto</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/registro.css">
</head>
<body>
   <div class="container-fluid">
  <div class="row no-gutter">
    <div class="d-none d-md-flex col-md-4 col-lg-6 bg-image"></div>
    <div class="col-md-8 col-lg-6">
      <div class="login d-flex align-items-center py-5">
        <div class="container">
          <div class="row">
            <div class="col-md-9 col-lg-8 mx-auto">
              <h3 class="login-heading mb-4">Registro de Proyecto</h3>
              <form action="register_project" method="post">
              
                <div class="form-label-group">
                  <input type="text" id="inputNombre" name="nombre" class="form-control" placeholder="Nombre" required autofocus>
                  <label for="inputNombre">Nombre</label>
                </div>
                
                <div class="form-label-group">
                  <input type="text" id="inputResumen" class="form-control" name="resumen" placeholder="Resumen" required autofocus>
                  <label for="inputResumen">Resumen</label>
                </div>

                <div class="form-label-group">
                  <input type="text" id="inputVideo" class="form-control" name="video" placeholder="Video" required>
                  <label for="inputVideo">Video</label>
                </div>
                
                <div class="form-label-group">
                  <input type="text" id="inputCategoria" class="form-control" name="categoria" placeholder="Categoria" required>
                  <label for="inputCategoria">Categoria</label>
                </div>
                
                <div class="form-label-group">
                  <input type="text" id="inputAsignatura" class="form-control" name="asignatura" placeholder="Asignatura" required>
                  <label for="inputCategoria">Asignatura</label>
                </div>
                
                 <div class="form-label-group">
                  <input type="text" id="inputTipo" class="form-control" name="tipo" placeholder="Tipo" required>
                  <label for="inputTipo">Tipo</label>
                </div>
                
                <div class="form-label-group">
                  <input type="text" id="inputEvento" class="form-control" name="evento" placeholder="Evento" required>
                  <label for="inputTipo">Evento</label>
                </div>

              
               
                
                <button class="btn btn-lg btn-primary btn-block btn-login text-uppercase font-weight-bold mb-2" type="submit">Registrar</button>

              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</body>
</html>