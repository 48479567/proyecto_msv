<!DOCTYPE html>
<html lang="en">
<head>
  <title>Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="row">
  <div class="col-md-4"  div style="text-align:center">Modelo de Sistema Viable</div>
  <div class="col-md-8">

<?php
$cons_usuario="root";
$cons_contra="";
$cons_base_datos="msv001";
$cons_equipo="localhost";

$obj_conexion = mysqli_connect($cons_equipo,$cons_usuario,$cons_contra,$cons_base_datos);
if(!$obj_conexion)
{
    echo "<h3>No se ha podido conectar PHP - MySQL, verifique sus datos.</h3><hr><br>";
}
else
{
    }

$var_consulta= "select * from usuarios";
$var_resultado = $obj_conexion->query($var_consulta);

if($var_resultado->num_rows>0)
  {
    echo"<table>
     <tr bgcolor='#E6E6E6'>
        <th>BIENVENIDO</th>
    </tr>";

while ($var_fila=$var_resultado->fetch_array())
{
    echo "<tr>
    <td>".$var_fila["nom_usuario"]."</td></tr>";
 }
}
else
  {
    echo "No hay Registros";
  }
?>
</table>
</div>
<div class="col-xs-12 col-sm-6 col-md-12" ></div>

<div class="col-xs-12 col-sm-6 col-md-4" div style="text-align:center"></div></p>
<div class="col-xs-12 col-sm-6 col-md-8">
  	<input type ='button' value = 'CREAR NUEVO PROYECTO' onclick="window.open('crear_proyecto.php');"/></div> 
 <div class="col-xs-12 col-sm-6 col-md-4" >
	  <TABLE>
	  	<th>PROYECTOS</th>
	  	<tr><td><a href="./diagramador/Tutorial4.html">PROYECTO 1</a></td></tr>	
	  	<tr><td><a href="./diagramador/Tutorial4.html">PROYECTO 2</a></td></tr>
	  	<tr><td><a href="./diagramador/Tutorial4.html">PROYECTO 3</a></td></tr>
	  	<tr><td><a href="./diagramador/Tutorial4.html">PROYECTO 4</a></td></tr>
	  	<tr><td><a href="./diagramador/Tutorial4.html">PROYECTO 5</a></td></tr>
	  </TABLE>
  </div>
  
</body>
</html>