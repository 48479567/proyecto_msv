<?php require_once './conexion.php';

$sql = "SELECT * FROM proyectos";
$result = $conn->query($sql);
$cantidad_proyectos = $result->num_rows + 1;

echo '
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div style="display: inline-block;" >
<fieldset>
        <legend>Ingenieria de Sistemas de Gestión</legend>
        <form action="validacion_usuario.php" method="POST">
            <label for="cant_proyecto">Clave del Proyecto</label><input type="text"  name="cant_proyecto" value="PRY'.$cantidad_proyectos.'"><br/>
            <label for="nom_proyecto">Nombre del Proyecto</label><input type="text" name="nom_proyecto" ><br/>
            <label for="nom_equipo">Nombre del Equipo</label><input type="text" name="nom_equipo" ><br/>
            <label for="nom_perspectiva">Nombre de la Perspectiva</label><input type="text" name="nom_perspectiva" >
            <input type="submit" value="Crear Proyecto">  
        </form>
        </fieldset>
</div>
</body>
</html>'
?>
