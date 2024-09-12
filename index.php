<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Inicio</title>
    <?php
        include('inicia_sessao.php');
        if(empty($_SESSION['login'])){
            header("Location: login.php");
        }
        include('menu.php');
    ?>
</head>
<body>
    <header>
        <h1>Bem-vindo à Página Inicial</h1>
    </header>
    <main>
        <section>
            <h2>O que você deseja fazer?</h2>
            <div class="options">
                <a href="usuario/OpcUs.html" class="button">Usuário</a>
            </div>
        </section>
    </main>
</body>
</html>