<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/estilo.css">
    <title>Cadastro</title>
</head>
<body>
   
    
    <h1 class="titulo">Cadastro Paciente</h1>
    <div class="container">
        <form action="./cadastro_medbd.php" method="post">
            <div class="row">
                <div class="col">
                    <label for="nome">Nome</label>
                    <input 
                        type="text" 
                        name="nome" 
                        id="nome"
                        placeholder="Nome completo">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="fone">Tel</label>
                    <input 
                        type="tel" 
                        name="fone" 
                        id="fone"
                        placeholder="numero para contato">
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <label for="usuario">data Nasc</label>
                    <input 
                        type="text" 
                        name="usuario" 
                        id="usuario"
                        placeholder="insira o regitro CRM">
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <input type="reset" value="VOLTAR">
                    <input type="submit" value="SALVAR">
                </div>
            </div>
        </form>
    </div>
    
</body>
</html>