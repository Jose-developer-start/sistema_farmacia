<?php
session_start();
include '../../../models/conexion.php';
include '../../../models/procesos.php';
include '../../../controllers/procesos.php';

$id_sucursal = $_GET['id_sucursal'];

$nombres = $_GET['nombres'];
$apellidos = $_GET['apellidos'];
//$fecha_v = $_GET['fecha_v']; //Generado desde input
$fecha_v = date("Y-m-d"); //Desde el equipo
$tabla = "clientes";
$campo = "nombres,apellidos,edad";
$valores = "'$nombres','$apellidos',NULL";
$descuento = isset($_GET['descuento']) ? $_GET['descuento'] : '';

$query = "INSERT INTO $tabla ($campo) VALUES($valores)";
$insert = U_I_D($query);
//Obteniendo ID cliente
$query_client = "SELECT MAX(id_cliente) as id FROM `clientes`";
$result = SelectData($query_client, 'i');
foreach ($result as $result) {
    $id_client = $result['id'];
}
//Insertar en la tabla venta
$total_pago = 0;
foreach ($_SESSION['CARRITO'] as $result) {
    $total_pago += $result['PRECIO_V'];
}
//Calculando descuento
if ($descuento != '') {
    $descuento_pago = ($total_pago * $descuento) / 100;
    $total_pago = $total_pago - $descuento_pago;
}

$query_venta = "INSERT INTO `ventas` (`fecha_venta`, `total_pago`, `descuento`, `id_cliente`) VALUES ('$fecha_v','$total_pago','$descuento',$id_client)";
$result = U_I_D($query_venta);

//Obteniendo ID venta
$query_client = "SELECT MAX(id_venta) as id FROM `ventas`";
$result = SelectData($query_client, 'i');
foreach ($result as $result) {
    $id_venta = $result['id'];
}
//Datos a guardar en detalle venta
foreach ($_SESSION['CARRITO'] as $result) {
    $id_producto = $result['ID'];
    $precio_unitario = $result['PRECIO_V'];
    //Insertar en la tabla venta
    $query_detalle_venta = "INSERT INTO `detalle_venta` (`id_venta`, `id_producto`, `id_sucursal`, `precio_unitario`, `cantidad_prod`) VALUES ('$id_venta', '$id_producto', '$id_sucursal', '$precio_unitario', '1')";
    $result = U_I_D($query_detalle_venta);
    //Actualizar inventario
    $query = "UPDATE `inventarios` SET `stock`=`stock` - 1  WHERE id_producto='$id_producto'";
    $result = U_I_D($query);
}
//Destruyendo session carrito
unset($_SESSION['CARRITO']);
?>
<?php if ($result) : ?>
    <script>
        $(document).ready(function() {
            alertify.alert("Estado venta", "Productos vendidos");
            $("#contenido-usuario").load("ventas/principal.php");
            event.preventDefault();
            window.open("ventas/reporte_venta.php");
        });
    </script>
<?php else : ?>
    <script>
        $(document).ready(function() {
            alertify.alert("Estado venta", "Error al realizar la venta");
            $("#contenido-usuario").load("ventas/principal.php");
            event.preventDefault();
        });
    </script>
<?php endif ?>