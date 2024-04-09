<?php

    $hostname = "localhost";
    $bancodedados = "hs_consulta";
    $usuario = "root";
    $senha = "";
    $mysqli = new mysqli($hostname, $usuario, $senha, $bancodedados);
    
    //paginação
    $page = (isset($_GET['pagina']))? $_GET['pagina'] : 1 ;
    $limit = 10; 
    $offset = ($page - 1) * $limit;


    
    if($mysqli->connect_errno){
        echo "falha ao conectar: (" . $mysqli->connect_errno. ") " . $mysqli->connect_errno;
    }
    
    $sql = "SELECT consulta.idC, paciente.nomeP, medico.nomeM, consulta.dataC, consulta.horaC
    FROM consulta
    INNER JOIN paciente ON consulta.idPFK = paciente.idP
    INNER JOIN medico ON consulta.idMFK = medico.idM
    LIMIT {$limit} OFFSET {$offset}";

        $con = $mysqli->query($sql) or die($mysqli->error); 

?>   