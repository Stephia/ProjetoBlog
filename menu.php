<div>
    <ul>
        <li><a href="index.php">Home</a></li>

        <?php
            include('inicia_sessao.php');
            if(empty($_SESSION['login']));
        ?>
        <li><a href="CadU.php">Cadastrar Usuário</a></li>
        <li><a href="LisU.php">Listar Usuário</a></li>
        <li><a href="CadC.php">Cadastrar Cidade</a></li>
        <li><a href="LisC.php">Listar Cidade</a></li>
        <li><a href="logout.php">Logout</a></li>

        <?php
            echo "<li> <a> Olá " . $_SESSION['login']['nome']. "</a> </li>";
            endif;
        ?>
    </ul>
</div>