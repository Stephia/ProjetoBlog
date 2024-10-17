<?php
    require_once '../core/sql.php';

    $id = 1;
    $nome = 'Stephanie';
    $email = 'stephanie@gmail.com';
    $senha = '1234575';
    $dados = ['nome' => $nome, 'email' => $email, 'senha' => $senha];

    $entidade = 'usuario';
    $criterio = [['id', '=', $id]];
    $campos = ['id', 'nome', 'email'];
    print_r($dados);
    echo '<br>';
    print_r($campos);
    echo '<br>';
    print_r($criterio);
    echo '<br>';

    $instrucao = insert($entidade, $dados);
    echo $instrucao . '<br>';

    $instrucao = update($entidade, $dados, $criterio);
    echo $instrucao . '<br>';

    $instrucao = select($entidade, $campos, $criterio);
    echo $instrucao . '<br>';

    $instrucao = delete($entidade, $criterio);
    echo $instrucao . '<br>';
?>