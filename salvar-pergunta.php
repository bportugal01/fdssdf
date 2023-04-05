<?php
// Configurações do banco de dados
$servername = "127.0.0.1";
$username = "root";
$password = "";
$dbname = "perguntas_respostas";

// Conexão com o banco de dados
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Conexão falhou: " . $conn->connect_error);
}

// Recebe os dados do formulário
$pergunta = $_POST['pergunta'];
$resposta = $_POST['resposta'];
$dificuldade = $_POST['dificuldade'];
$prova=$_POST['prova'];
$ano=$_POST['ano'];


// Prepara e executa a consulta SQL para inserir os dados no banco de dados
$sql = "INSERT INTO perguntas (pergunta, resposta, dificuldade, prova, ano)
        VALUES ('$pergunta', '$resposta', '$dificuldade','$prova','$ano')";
if($conn->query($sql) === TRUE) {
  echo "Pergunta adicionada com sucesso!";
} else {
  echo "Erro ao adicionar pergunta: " . $conn->error;
}

// Fecha a conexão com o banco de dados
header("Location: index.php");
?>
