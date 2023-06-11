<?php
$host = 'magallanes.inf.unap.cl'; // Normalmente es localhost
$port = '5432'; // Por defecto es 5432
$dbname = 'sistemalogin';
$user = 'brojas';
$password = 'Gt95x5cDq1';
//$nombre = $_POST['nombre'];
//$edad = $_POST['edad'];
//$correo = $_POST['correo'];
// Establecer conexión
$dsn =
"pgsql:host=$host;port=$port;dbname=$dbname;user=$user;password=$passw
ord";
try {
$conexion = new PDO($dsn);
// Consulta a una tabla específica
//$sql = "INSERT INTO Persona () values() ";
$sql = "SELECT * FROM usuario";
$stmt = $conexion->query($sql);
// Generar el contenido de la tabla HTML
$tableContent = '';
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
$tableContent .= "<tr>";
$tableContent .= "<td>" . $row['nombre_usuario'] . "</td>";
$tableContent .= "<td>" . $row['email_usuario'] . "</td>";
$tableContent .= "</tr>";
}
} catch (PDOException $e) {
echo "Error al conectarse a la base de datos: " . $e-
>getMessage();
}