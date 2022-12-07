<?php
header('Content-Type: application/json');
require "pdo.php";

switch ($_GET['accion']) {
case 'listar':
    $sql = "SELECT 
        clientes.cliente_nombre,
        clientes.cliente_apellido,
        clientes.cliente_telefono1,
        domicilios.domi_dir_elegida,
        domicilios.domi_barrio_elegido,
        domicilios.domi_observacion,
        domicilios.domi_factura,
        domicilios.domi_valor,
        domicilios.domi_hora_reg,
        domicilios.domi_hora_asig,
        domicilios.domi_hora_entrega,
        domicilios.domi_hora_llegada,
        transportadores.trans_nombre
        FROM domicilios
        INNER JOIN clientes
        ON domicilios.cliente_id=clientes.cliente_id
        INNER JOIN transportadores
        ON domicilios.trans_id=transportadores.trans_id";
    $stmt = $pdo -> prepare($sql);
    $stmt -> execute();
    $result = $stmt -> fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
    break;

case 'agregar':
    $sql = "INSERT INTO articulos(descripcion,precio,tipo) VALUES ('$_POST[descripcion]',$_POST[precio],'$_POST[tipo]')";
    $response = $pdo->exec($sql);
    echo json_encode($response);
    break;

case 'borrar':
    $sql = "DELETE FROM articulos where codigo=$_GET[codigo]";
    $response = $pdo->exec($sql);
    echo json_encode($response);
    break;

case 'consultar':
    $sql = "SELECT codigo,descripcion,precio,tipo FROM articulos WHERE codigo=$_GET[codigo]";
    $stmt = $pdo -> prepare($sql);
    $stmt -> execute();
    $result = $stmt -> fetchAll(PDO::FETCH_ASSOC);
    echo json_encode($result);
    break;

case 'modificar':
    $sql = "UPDATE articulos SET descripcion='$_POST[descripcion]',precio=$_POST[precio],tipo='$_POST[tipo]' WHERE codigo=$_GET[codigo]";
    $response = $pdo->exec($sql);
    echo json_encode($response);
    break;
}
?>
