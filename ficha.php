<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agenda :: Visualização</title>
    <link rel="stylesheet" href="./css/estilo.css">
</head>
<body>
        <?php include_once('./conect/verifi.php');?>
    
    <h1 class="titulo">FICHA ATENDIMENTO</h1>
    <div class="container">
        <table>
            <thead>
                <tr> <!--linha-->
                    <th width="70">ID</th>
                    <th width="70">PACIENTE</th>
                    <th width="70">MED RESP</th>
                    <th width="70">DATA</th>
                    <th width="70">HORA</th>
                </tr>
            </thead>
            <tbody>
                <?php while($dado = $con->fetch_array()){  ?>
                    <tr>
                    <td><?= $dado["idC"]; ?></td>
                    <td><?= $dado["nomeP"]; ?></td>
                    <td><?= $dado["nomeM"]; ?></td>
                    <td><?= $dado["dataC"]; ?></td>
                    <td><?= $dado["horaC"]; ?></td>
                    </tr>
                <?php  } ?>
                
            </tbody>
        </table>
    </div>
</body>
</html>




