-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Abr-2023 às 05:41
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `perguntas_respostas`
--
CREATE DATABASE IF NOT EXISTS `perguntas_respostas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `perguntas_respostas`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `perguntas`
--

CREATE TABLE `perguntas` (
  `id` int(11) NOT NULL,
  `pergunta` varchar(255) NOT NULL,
  `resposta` varchar(255) NOT NULL,
  `dificuldade` enum('A - Fácil','B - Mediana','C - Difícil') NOT NULL,
  `prova` enum('Amarela','Azul','Branca','Rosa') NOT NULL,
  `ano` enum('2021','2022') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `perguntas`
--

INSERT INTO `perguntas` (`id`, `pergunta`, `resposta`, `dificuldade`, `prova`, `ano`) VALUES
(1, 'Ao relatar suas vivências, o autor destaca o(a)', 'Cenário da integração de cubanos nos Estados Unidos.', 'A - Fácil', 'Azul', '2022'),
(2, 'O texto aborda relações interpessoais com o objetivo de', 'comparar a expectativa de parceiros amorosos em épocas distintas.', 'B - Mediana', 'Azul', '2022'),
(3, 'Nessa tirinha, o comportamento da mulher expressa', 'Gosto pela prática da leitura.', 'B - Mediana', 'Azul', '2022'),
(4, 'O termo “downsides” introduz a ideia de que o Instagram é responsável por', 'provocar ansiedade nos adolescentes.', 'C - Difícil', 'Azul', '2022'),
(5, 'Nesse poema, o eu lírico evidencia um sentimento de', 'insatisfação com uma forma de comunicação.', 'C - Difícil', 'Azul', '2022'),
(6, 'Esse cartaz tem a função social de', 'defender a preservação das línguas originárias garantindo a diversidade linguística mexicana', 'A - Fácil', '', ''),
(7, 'No texto, o autor faz uma crítica ao(à)', 'ngerência do celular sobre as escolhas dos usuários.', 'B - Mediana', 'Azul', '2022'),
(8, 'Nesse texto, o autor demonstra como as diferentes expressões existentes em espanhol para se referir a “amigo” variam em função', 'do papel da amizade em diferentes contextos.', 'B - Mediana', 'Azul', '2022'),
(9, 'No texto, a expressão “un mañana sin sol ” é usada para concluir uma crítica ao(à)', 'descaso diante da problemática de crianças em situação de rua', 'B - Mediana', 'Azul', '2022'),
(10, 'No texto, as palavras “crianza” e “tribu” são usadas para', 'evidenciar a importância de uma rede de apoio para as mães na criação de seus filhos.', 'B - Mediana', 'Azul', '2022'),
(11, 'Nesse texto de opinião, as marcas linguísticas revelam uma situação distensa e de pouca formalidade, o que se evidencia pelo(a)', 'emprego de metáforas, como em: “a vida engata uma primeira e sai em disparada”.', 'A - Fácil', '', '2022'),
(12, 'Os dois textos abordam a temática de animais de rua, porém, em relação ao Texto I, o Texto II', 'problematiza a necessidade de adoção de animais sem lar.', 'C - Difícil', 'Azul', '2022'),
(13, 'Ao divulgar a adaptação do jogo para questões relativas a ações e habilidades de mulheres notáveis, o texto busca', 'sentimento de culpa provocado no condutor causador de acidentes.', 'B - Mediana', 'Azul', '2022'),
(14, 'Ao divulgar a adaptação do jogo para questões relativas a ações e habilidades de mulheres notáveis, o texto busca', 'contribuir para a formação cidadã dos jogadores.', 'B - Mediana', 'Azul', '2022'),
(15, 'Segundo os autores citados no texto, a expansão de possibilidades no campo das manifestações artísticas promovida pela internet pode pôr em risco o(a)', 'proteção da produção estética', 'A - Fácil', 'Azul', '2022'),
(16, 'O texto revela que, quando a sociedade promove o desenvolvimento de uma nova técnica, o que mais impacta seus usuários é a', 'valorização da utilização da nova tecnologia.', 'B - Mediana', 'Azul', '2022'),
(17, 'Nesse texto, o uso da norma-padrão defendido por um dos personagens torna-se inadequado em razão do(a', 'contexto de comunicação em que a conversa se dá.', 'B - Mediana', 'Azul', '2022'),
(18, 'Ao analisarem a correlação entre os hábitos e o perfil socioeconômico dos usuários da internet no Brasil, os pesquisadores', 'questionam a crença de que o acesso à informação é igualitário e democrático.', 'B - Mediana', 'Azul', '2022'),
(19, 'O Texto II exemplifica o que se afirma no Texto I, na medida em que defende a ideia de que as escolhas lexicais são resultantes de um', 'processo de incorporação de preconceitos que são recorrentes na história de uma sociedade.', 'B - Mediana', 'Azul', '2022'),
(21, 'Considerando-se a função social dos posts, essa imagem evidencia a apropriação de outro gênero com o objetivo de', 'divulgar o projeto sobre transparência da administração pública', 'C - Difícil', 'Azul', '2022'),
(22, 'O texto é exemplar de um gênero discursivo que cumpre a função social de', 'avaliar, por meio de análise crítica, o filme em referência.', 'A - Fácil', 'Azul', '2022'),
(23, 'Esse texto, que simula um verbete para a palavra “palavra’’, constitui-se como um poema porque', 'utiliza o recurso expressivo da metáfora, como em “As palavras têm corpo e alma”.', 'B - Mediana', 'Azul', '2022'),
(24, 'O recurso que caracteriza a organização estrutural desse texto é o(a', 'justaposição de sequências verbais e nominais.', 'A - Fácil', 'Azul', '2022'),
(25, 'Nesse texto, a violência no futebol está caracterizada como um(a)', 'reflexo da precariedade da organização social no país.', 'C - Difícil', 'Azul', '2022'),
(26, 'Com base na pesquisa e em uma visão ampliada de saúde, para a prática regular de exercícios ter influência significativa na saúde dos brasileiros, é necessário o desenvolvimento de estratégias que', 'facilitem a adoção da prática de exercícios, com ações relacionadas à educação e à distribuição de renda', 'B - Mediana', 'Azul', '2022'),
(27, 'Inscrito na estética romântica da literatura brasileira, o conto descortina aspectos da realidade nacional no século XIX ao', 'apontar a hipocrisia do discurso conservador na defesa da escravidão.', 'A - Fácil', 'Azul', '2022'),
(28, 'Considerando-se o tema tecnologias e acessibilidade, os textos I e II aproximam-se porque apresentam projetos que', 'têm como objetivo a disseminação do conhecimento.', 'B - Mediana', 'Azul', '2022'),
(29, 'Ao descrever os olhos de Maria Santa, o narrador estabelece correlações que refletem a', 'marca de antigos sofrimentos no fluxo de consciência.', 'C - Difícil', 'Azul', '2022'),
(30, 'Nesse artigo de opinião, ao fazer uso de uma fala rebuscada no exemplo da compra do pão, o autor evidencia a importância de(a)', 'adequação da linguagem à situação de comunicação', 'B - Mediana', 'Azul', '2022'),
(31, 'O discurso da jornalista traz questionamentos sobre a relação da conquista da skatista com a', 'desconstrução da noção do skate como modalidade masculina.', 'B - Mediana', 'Azul', '2022'),
(32, 'Nesse texto, predomina a função poética da linguagem. Entretanto, a função emotiva pode ser identificada no verso:', '“A cidade não mora mais em mim”.', 'A - Fácil', 'Azul', '2022'),
(33, 'A articulação entre os elementos verbais e os não verbaisdo texto tem como propósito desencadear a', 'revisão de representações estereotipadas de gênero.', 'A - Fácil', 'Azul', '2022'),
(34, 'O movimento de recuperação da língua patxôhã assume um caráter identitário peculiar na medida em que', 'conjuga o ato de resistência étnica à preservação da memória cultural', 'B - Mediana', 'Azul', '2022'),
(35, 'conjuga o ato de resistência étnica à preservação da memória culturalNo relato da visita de duas mulheres ricas a uma vidente no Morro do Castelo, a ironia — um dos traços mais representativos da narrativa machadiana — consiste no', 'misto de singeleza e astúcia dos gestos da personagem.', 'B - Mediana', 'Azul', '2022'),
(36, 'No trecho do romance naturalista, a forma como o narrador julga comportamentos e emoções das personagens femininas revela influência do pensamento', 'científico, considerando o ser humano como um fenômeno biológico.', 'A - Fácil', 'Azul', '2022'),
(37, 'Os recursos composicionais que inserem a obra no chamado “Romance de 30” da literatura brasileira manifestam-se aqui no(a)', 'desenho cru da realidade dramática dos retirantes.', 'C - Difícil', 'Azul', '2022'),
(38, 'O texto sobre os chamados nativos digitais traz informações com a função de', 'propor ações específicas para cada etapa da infância.', 'A - Fácil', 'Azul', '2022'),
(39, 'O recurso linguístico que permite a Machado de Assis considerar um capítulo de Memórias póstumas de Brás Cubas como inventário é a', 'enumeração de objetos e fatos.', 'A - Fácil', 'Azul', '2022'),
(40, 'A história da prática do mountainboard representa uma das principais marcas das atividades de aventura, caracterizada pela', 'criatividade para adaptações a novos espaços.', 'B - Mediana', 'Azul', '2022'),
(41, 'No texto, ao refletir sobre a atividade de cronista, a autora questiona características do gênero crônica, como', 'brevidade no tratamento da temática', 'C - Difícil', 'Azul', '2022'),
(42, 'Essa notícia, além de cumprir sua função informativa, assume o papel de', 'conscientizar a população sobre grave problema de saúde pública.', 'C - Difícil', 'Azul', '2022'),
(43, 'Associada ao ideário de uma “vida perfeita”, a positividade tóxica mencionada no texto é um fenômeno social recente, que se constitui com base em', 'representações estereotipadas e superficiais de felicidade.', 'C - Difícil', 'Azul', '2022'),
(44, 'Produzida no início do século XVII, a obra maneirista distingue-se pela', 'distorção ao representar a figura humana.', 'C - Difícil', 'Azul', '2022'),
(45, 'De acordo com os textos I e II, compreende-se que a obra minimalista é uma', 'combinação de formas sintéticas no espaço utilizado.', 'B - Mediana', 'Azul', '2022'),
(46, 'A passagem registra um momento em que a expressividade lírica é reforçada pela', 'afetividade demonstrada ao noticiar a morte do cantador.', 'A - Fácil', 'Azul', '2022'),
(47, 'No texto, o personagem vincula ao carnaval atitudes e reações coletivas diante das quais expressa', 'atração e asco perante atitudes libertinas.', 'B - Mediana', 'Azul', '2022'),
(48, 'A partir da intimação recebida pelo filho de 9 anos, a autora faz uma reflexão em que transparece a', 'resposta irônica ante o discurso da autoridade.', 'B - Mediana', 'Azul', '2022'),
(49, 'Pela ótica do narrador, a trajetória da empregada de sua casa assume um efeito expressivo decorrente da', 'representação anedótica de atos de violência.', 'C - Difícil', 'Azul', '2022'),
(50, 'A instalação In absentia propõe um diálogo com o ready-made Roda de bicicleta, demonstrando que', 'as criações desmistificam os valores estéticos estabelecidos.', 'B - Mediana', 'Azul', '2022'),
(51, 'Chico Science foi fundamental para a renovação da música pernambucana, fato que se deu pela', 'integração de referenciais culturais de diferentes origens, criando uma nova combinação estética.', '', 'Azul', '2022'),
(52, 'No experimento descrito, a relação com a paisagem e com a religiosidade permite que o sertanejo seja', 'íntimo à Caatinga ao interpretar condições ambientais', 'A - Fácil', 'Azul', '2022'),
(53, 'No trecho, a filósofa Hannah Arendt mostra a importância da linguagem no processo de', 'construção da sociabilidade.', 'A - Fácil', 'Azul', '2022'),
(54, 'O texto, que guarda a grafia original da autora, expõe uma característica da sociedade brasileira, que é o(a):', 'Racismo estrutural.', 'C - Difícil', 'Azul', '2022'),
(55, 'A intensificação da ocupação urbana demonstrada afeta de forma imediata o(a)', 'ciclo hidrológico.', 'B - Mediana', 'Azul', '2022'),
(56, 'No texto, há uma crítica ao modo de ocupação do espaço amazônico pautada na', 'contradição entre desenvolvimento nacional e respeito aos trabalhadores.', 'C - Difícil', 'Azul', '2022'),
(57, 'Qual mudança estrutural é resultado da forma de organização econômica descrita no texto?', 'Desterritorialização da produção.', 'B - Mediana', 'Azul', '2022'),
(58, 'A letra da canção valoriza uma dimensão do espaço rural brasileiro em sua relação com a cidade ao ressaltar sua função de', 'promover a produção alimentar.', 'A - Fácil', 'Azul', '2022'),
(59, 'O registro das atividades descritas associa a inserção da figura feminina nos espaços de leitura e escrita do Segundo Reinado ao(à)', 'surgimento de novas práticas culturais.', 'A - Fácil', 'Azul', '2022'),
(60, 'A atuação dos trabalhadores mencionados no texto representou, na capital do Império, um momento de', 'contestação dos princípios monárquicos.', 'C - Difícil', 'Azul', '2022'),
(61, 'As atividades agrícolas, desenvolvidas na região mencionada, intensificam o problema ambiental exposto ao', 'utilizar sistemas de irrigação, desprezando uma drenagem adequada.', 'B - Mediana', 'Azul', '2022'),
(62, 'A crítica contida no texto e na figura evidencia o seguinte aspecto da sociedade contemporânea', 'Exclusão social.', 'B - Mediana', 'Azul', '2022'),
(63, 'Os modelos autoritários descritos no texto apontam para um sistema de controle que se baseia no(a):', 'Formação de sociedade disciplinar.', 'C - Difícil', 'Azul', '2022'),
(64, 'As práticas religiosas mencionadas nos textos estão associadas, respectivamente, à:', 'Criação de lugares místicos e experiências do catolicismo popular.', 'A - Fácil', 'Azul', '2022'),
(65, 'A ação governamental descrita constitui-se uma importante conquista para os pequenos produtores em virtude da:', 'Comercialização garantida.', 'C - Difícil', 'Azul', '2022'),
(66, 'Contrariando a visão prevalente sobre o impacto tecnológico nas relações humanas, o texto revela que os celulares podem desempenhar uma função', 'social, estimulando a reciprocidade por meios digitais.', 'A - Fácil', 'Azul', '2022'),
(67, 'A consequência da mudança tecnológica apresentada no texto é a', 'ampliação do desemprego estrutural.', 'C - Difícil', 'Azul', '2022'),
(68, 'A necessidade de negociação diplomática para viabilizar o acordo tarifário mencionado é explicada pela seguinte característica do Mercosul:', 'Funcionamento da união aduaneira.', 'A - Fácil', 'Azul', '2022'),
(69, 'Na conjuntura histórica destacada no texto, o dever de agir em face da situação de crise apresentada pertencia à jurisdição', 'da realeza, decorrente do conceito de governo subjacente à monarquia cristã.', 'B - Mediana', 'Azul', '2022'),
(70, 'A interação dinâmica entre as forças naturais citadas favorece a ocupação do espaço geográfico, na medida em que provoca a formação de', 'solos vulcânicos.', 'C - Difícil', 'Azul', '2022'),
(71, 'O ápice da ilustração se traduz por uma conduta social caracterizada pela', 'prática do feminicídio.', 'B - Mediana', 'Azul', '2022'),
(72, 'Os discursos expressam pontos de vista divergentes respectivamente pela oposição entre', 'dominação de corpos e igualdade humana.', 'B - Mediana', 'Azul', '2022'),
(73, 'O texto apresenta uma estratégia usada pelo movimento social para', 'garantir o preceito constitucional.', 'A - Fácil', 'Azul', '2022'),
(74, 'As preocupações do governo estadunidense expressas no texto e no mapa evidenciam uma estratégia para', 'ampliação de influência econômica.', 'B - Mediana', 'Azul', '2022'),
(75, 'Considerando a dinâmica geopolítica subjacente ao texto, a justificativa utilizada por Vladimir Putin, em 2014, para anexação dessa península apela para o argumento de que', 'as populações com idioma comum devem estar submetidas à mesma autoridade estatal', 'C - Difícil', 'Azul', '2022'),
(76, 'Considerando o conceito apresentado no Texto I e os dados apresentados no Texto II, no Brasil, são fatores que intensificam o fenômeno da discriminação:', 'Raça e gênero.', 'C - Difícil', 'Azul', '2022'),
(77, 'Nas sociedades contemporâneas, consiste em violação do princípio básico enunciado no texto', 'Supressão de eleições de representantes políticos.', 'B - Mediana', 'Azul', '2022'),
(78, 'A pesquisa desenvolvida retrata a seguinte dinâmica populacional:', 'Movimento pendular.', 'A - Fácil', 'Azul', '2022'),
(79, 'Com base no texto, a fixação dessa data comemorativa tinha por objetivo', 'afirmar uma identidade coletiva.', 'B - Mediana', 'Azul', '2022'),
(80, 'Uma característica regional que justifica o maior potencial anual médio para o aproveitamento da energia solar é a reduzida', 'nebulosidade atmosférica.', 'B - Mediana', 'Azul', '2022'),
(81, 'Pelo descrito no texto, o povo Kambeba tem o rio como um(a)', 'patrimônio cultural e afetivo.', 'A - Fácil', 'Azul', '2022'),
(82, 'Na construção do empreendimento descrito, destaca-se a presença de', 'trabalhadores na formação de novos espaços.', 'B - Mediana', 'Azul', '2022'),
(83, 'De acordo com o texto, a importância da medicina se justifica no âmbito dos objetivos', 'econômicos das elites.', 'B - Mediana', 'Azul', '2022'),
(84, 'Considerando-se que a distância entre o local onde os destroços do avião foram avistados e a cidade de Perth é de 2 cm, a escala aproximada dessa representação cartográfica é:', '1 : 125 000 000.', '', 'Azul', '2022'),
(85, 'Ao descrever-se como patrimônio museológico, o objeto abordado no texto associa a sua história às', 'habilidades artísticas e culturais dos sujeitos.', 'C - Difícil', 'Azul', '2022'),
(86, 'habilidades artísticas e culturais dos sujeitos.Os vínculos entre os fenômenos indicados no trecho foram fortalecidos pelo surgimento de uma categoria de pensadores, a saber:', 'Os sofistas, comprometidos com o ensino da retórica.', '', 'Azul', '2022'),
(87, 'Com base nos trechos do decreto, as finalidades do órgão criado permitiram ao governo promover o(a)', 'cerceamento da liberdade de expressão.', 'B - Mediana', 'Azul', '2022'),
(88, 'O mapa espacializa um recurso natural com alto potencial para ocorrência de', 'Jazidas de minerais metálicos.', 'C - Difícil', 'Azul', '2022'),
(89, 'Em situações como a apresentada no texto, as pessoas ao nascerem já se encontram na condição sociopolítica de', 'apátridas', 'B - Mediana', 'Azul', '2022'),
(90, 'De que modo os textos sustentam a existência de um saber ancorado na sensibilidade?', 'Considerando o olhar como experiência de conhecimento.', 'C - Difícil', 'Azul', '2022'),
(91, 'O rito mencionado nos textos demonstra a capacidade da Igreja em', 'produzir padrões de conduta.', 'C - Difícil', 'Azul', '2022'),
(92, 'O texto propõe uma reflexão sobre o entendimento de Empédocles acerca da arché, uma preocupação típica do pensamento pré-socrático, porque', 'evoca a discussão cosmogônica.', 'C - Difícil', 'Azul', '2022'),
(93, 'O processo de concentração espacial apresentado foi estimulado por qual fator geográfico?', 'Êxodo da população do campo.', 'B - Mediana', 'Azul', '2022'),
(94, 'O excerto refere-se a uma carta de Sêneca na qual se apresenta como um bem fundamental da filosofia promover a', 'moderação das paixões.', 'A - Fácil', 'Azul', '2022'),
(95, 'As sociedades mencionadas deixaram como legado uma diversidade de', 'heranças culturais constituídas em saberes próprios.', 'B - Mediana', 'Azul', '2022');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `perguntas`
--
ALTER TABLE `perguntas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `perguntas`
--
ALTER TABLE `perguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
