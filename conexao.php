<?php

function conectar(){
	$servidor = "rsszky.ddns.net";
	$usuario = "Edi_professor";
	$senha= "complexo1234";
	$bd = "complexodobem";
	
	$con = new mysqli($servidor, $usuario, $senha, $bd);
	return $con;
	
}

$conexao = conectar();


?>

