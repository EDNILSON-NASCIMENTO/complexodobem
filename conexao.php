<?php

function conectar(){
	$servidor = "rsszky.ddns.net";
	$usuario = "Edi_professor";
	$senha= "complexo1234";
	$bd = "complexodobem";
	
	$con = new mysqli($servidor, $usuario, $senha, $bd);
	$con->set_charset("utf8mb4");
	return $con;
	
}

$conexao = conectar();

/*
function conectar(){
    $servidor = "rsszky.ddns.net";
    $usuario = "Edi_professor";
    $senha = "complexo1234";
    $bd = "complexodobem";
    
    // Cria a conexão com o banco de dados
    $con = new mysqli($servidor, $usuario, $senha, $bd);

    // Verifica se houve erro na conexão
    if ($con->connect_error) {
        die("Erro de conexão: " . $con->connect_error);
    }

    // Configura a conexão para usar UTF-8
    if (!$con->set_charset("utf8mb4")) {
        die("Erro ao configurar o charset UTF-8: " . $con->error);
    }

    return $con;
}
*/
// Estabelece a conexão
$conexao = conectar();


?>

