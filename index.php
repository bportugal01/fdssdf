<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Gerenciamento de Perguntas</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/css2.css">
    <link rel="stylesheet" href="css/buttontop.css">
    


	<!-- Custom CSS -->
	<link href="buttontop.css" rel="stylesheet">
	
	
</head>

<body>
    <header>
        <h1>Gerenciamento de Perguntas</h1>
    </header>

    <main>
        <form action="salvar-pergunta.php" method="POST">
            <div>
                <label class="l-radio">Cor da prova:</label>
                <label class="l-radio">
                <span>Azul</span>
                    <input type="radio" id="Azul"name="prova" value="Azul" tabindex="1"> 
                </label>

                <label class="l-radio">
                <span>Amarela</span>
                <input type="radio" id="Amarela" name="prova" value="Amarela" tabindex="2">
                </label>

                <label  class="l-radio">
                <span>Branca</span>
                <input type="radio" id="Branca" name="prova" value="Branca" tabindex="3">
                </label>

                <label  class="l-radio">
                <span>Rosa</span>
                <input type="radio" id="Branca" name="prova" value="Rosa" tabindex="4">
                </label>
            </div>

            <div>
                <label class="l-radio">Ano da Prova:</label>
                <label class="l-radio">
                <span>2021</span>
                    <input type="radio" id="2021"name="ano" value="2021" tabindex="1"> 
                </label>

                <label class="l-radio">
                <span>2022</span>
                <input type="radio" id="2022"name="ano" value="2022" tabindex="2">
                </label>
            </div>

            <label for="pergunta">Pergunta:</label>
            <input type="text" id="pergunta" name="pergunta" autocomplete="off" required placeholder="Digite a pergunta"> 

            <label for="pergunta">Resposta:</label>
            <input type="text"id="resposta" name="resposta" autocomplete="off" required placeholder="Digite a resposta">
           

            <div>
                <label  class="l-radio">
                    <input type="radio" id="A - Fácil" name="dificuldade" value="A - Fácil" tabindex="1">
                    <span>A – Questões/Assuntos/Temas que domino bem.</span>
                </label><br>
                <label  class="l-radio">
                    <input type="radio" id="B - Mediana" name="dificuldade" value="B - Mediana" tabindex="2">
                    <span>B – Questões/Assuntos/Temas que conheço razoavelmente.</span>
                </label><br>
                <label  class="l-radio">
                    <input type="radio" id="C - Difícil" name="dificuldade" value="C - Difícil" tabindex="3">
                    <span>C – Questões/Assuntos/Temas em que não tenho conhecimento.</span>
                </label>
            </div>
            <p><input type="submit" value="Salvar"></p>
        </form>
        <table align="center" border="1" cellspacing="0" cellpadding="2">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Pergunta</th>
                    <th>Resposta</th>

                </tr>

            </thead>
            <tbody>
                &nbsp;
                <center>
                    <h1>Gerenciamento de Perguntas</h1>
                </center>

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

                // Query para buscar as perguntas do banco de dados
                $sql = "SELECT * FROM perguntas";
                $result = mysqli_query($conn, $sql);

                // Exibe as perguntas na tabela


                while ($row = mysqli_fetch_assoc($result)) {
                    echo "<tr>";
                    echo "<form method='POST'>";
                    echo "<td>" . $row['id'] . "</td>";
                    echo "<td>" . $row['pergunta'] . "</td>";
                    echo "<td>" . $row['resposta'] . "</td>";
                    echo "</form>";
                    echo "</tr>";
                }

                // Verifica se o formulário foi submetido
                if (isset($_POST['id']) && isset($_POST['pergunta']) && isset($_POST['resposta']) && isset($_POST['dificuldade'])) {
                    // Query para atualizar as informações no banco de dados
                    $id = $_POST['id'];
                    $pergunta = $_POST['pergunta'];
                    $resposta = $_POST['resposta'];
                    $dificuldade = $_POST['dificuldade'];

                    $sql = "UPDATE perguntas SET pergunta='$pergunta', resposta='$resposta', dificuldade='$dificuldade' WHERE id='$id'";
                    mysqli_query($conn, $sql);
                }

                // Fecha a conexão com o banco de dados
                mysqli_close($conn);
                ?>

        </table>
        </tbody>
        &nbsp;
        <table align="center" border="1" cellspacing="0" cellpadding="2">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Prova</th>
                    <th>Ano</th>
                    <th>Dificuldade</th>
                    <th>Ação</th>


                </tr>

            </thead>
            <tbody>


                <div>
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

                    // Query para buscar as perguntas do banco de dados
                    $sql = "SELECT * FROM perguntas";
                    $result = mysqli_query($conn, $sql);

                    // Exibe as perguntas na tabela


                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr>";
                        echo "<form method='POST'>";
                        echo "<td>" . $row['id'] . "</td>";
                        echo "<td>" . $row['prova'] . "</td>";
                        echo "<td>" . $row['ano'] . "</td>";
                        echo "<td>" . $row['dificuldade'] . "</td>";

                        echo "<td><a href='excluir.php?id=" . $row['id'] . "'>Excluir</a></td>";
                        echo "</form>";
                        echo "</tr>";
                    }

                    // Verifica se o formulário foi submetido
                    if (isset($_POST['id']) && isset($_POST['pergunta']) && isset($_POST['resposta']) && isset($_POST['dificuldade'])) {
                        // Query para atualizar as informações no banco de dados
                        $id = $_POST['id'];
                        $pergunta = $_POST['pergunta'];
                        $resposta = $_POST['resposta'];
                        $dificuldade = $_POST['dificuldade'];

                        $sql = "UPDATE perguntas SET pergunta='$pergunta', resposta='$resposta', dificuldade='$dificuldade' WHERE id='$id'";
                        mysqli_query($conn, $sql);
                    }

                    // Fecha a conexão com o banco de dados
                    mysqli_close($conn);
                    ?>

        </table>
        </tbody>
        &nbsp;
        </table>
        <table align="center" border="1" cellspacing="0" cellpadding="2">
            <tr>
                <th>Dificuldade</th>
                <th>Total de Perguntas</th>
            </tr>
            <?php
            // Configuração da conexão com o banco de dados
            $servername = "127.0.0.1";
            $username = "root";
            $password = "";
            $dbname = "perguntas_respostas";

            // Cria a conexão com o banco de dados
            $conn = mysqli_connect($servername, $username, $password, $dbname);

            // Verifica se houve erro na conexão
            if (!$conn) {
                die("Falha na conexão: " . mysqli_connect_error());
            }

            // Query para contar o total de perguntas fáceis
            $sql_facil = "SELECT COUNT(*) AS total_facil FROM perguntas WHERE dificuldade = 'A - Fácil'";
            $result_facil = mysqli_query($conn, $sql_facil);
            $row_facil = mysqli_fetch_assoc($result_facil);

            // Query para contar o total de perguntas medianas
            $sql_mediana = "SELECT COUNT(*) AS total_mediana FROM perguntas WHERE dificuldade = 'B - Mediana'";
            $result_mediana = mysqli_query($conn, $sql_mediana);
            $row_mediana = mysqli_fetch_assoc($result_mediana);

            // Query para contar o total de perguntas difíceis
            $sql_dificil = "SELECT COUNT(*) AS total_dificil FROM perguntas WHERE dificuldade = 'C - Difícil'";
            $result_dificil = mysqli_query($conn, $sql_dificil);
            $row_dificil = mysqli_fetch_assoc($result_dificil);

            // Exibe as informações na tabela
            echo "<tr>";
            echo "<td>Fácil</td>";
            echo "<td>" . $row_facil['total_facil'] . "</td>";
            echo "</tr>";
            echo "<tr>";
            echo "<td>Mediana</td>";
            echo "<td>" . $row_mediana['total_mediana'] . "</td>";
            echo "</tr>";
            echo "<tr>";
            echo "<td>Difícil</td>";
            echo "<td>" . $row_dificil['total_dificil'] . "</td>";
            echo "</tr>";

            // Fecha a conexão com o banco de dados
            mysqli_close($conn);
            ?>

        </table>
        </div>
        </section>
        </div>
        
        </form>
        
<a href="#" class="btn"></a>
</div>
</body>

</html>