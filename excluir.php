<?php
  // Configuração da conexão com o banco de dados
  $servername = "localhost";
  $username = "root";
  $password = "";
  $dbname = "perguntas_respostas";

  // Cria a conexão com o banco de dados
  $conn = mysqli_connect($servername, $username, $password, $dbname);

  // Verifica se houve erro na conexão
  if (!$conn) {
    die("Falha na conexão: " . mysqli_connect_error());
  }

  // Verifica se foi enviado um ID para excluir
  if (isset($_GET['id'])) {
    // ID da pergunta a ser excluída
    $id = $_GET['id'];

    // Query para excluir a pergunta do banco de dados
    $sql = "DELETE FROM perguntas WHERE id='$id'";
    mysqli_query($conn, $sql);
  }

  // Fecha a conexão com o banco de dados
  mysqli_close($conn);

  // Redireciona para a página de gerenciamento de perguntas
  header("Location: index.php");
?>
