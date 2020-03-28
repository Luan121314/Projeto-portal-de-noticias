-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: portal_noticias
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `noticias`
--

DROP TABLE IF EXISTS `noticias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` text DEFAULT NULL,
  `resumo` text DEFAULT NULL,
  `autor` varchar(100) DEFAULT NULL,
  `data_noticia` timestamp NOT NULL DEFAULT current_timestamp(),
  `noticia` text DEFAULT NULL,
  `data_inclusao` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id_noticia`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticias`
--

LOCK TABLES `noticias` WRITE;
/*!40000 ALTER TABLE `noticias` DISABLE KEYS */;
INSERT INTO `noticias` VALUES (1,'Últimas notícias de coronavírus','Número de mortes por complicações relacionadas à Covid-19 passa de 25 mil no mundo, diz universidade. Itália registra ma','G1','2020-03-27 20:48:49','De acordo com levantamento da universidade Johns Hopkings, passou de 25 mil o número de mortos por complicações relacionadas à Covid-19 nesta sexta-feira (27). São 585.040 infectados ao redor do planeta, com 26.819 mortes registradas até as 15h desta sexta. Já se recuperaram da doença 129.812 pessoas.','2020-03-28 18:25:24'),(3,'Maia diz que ajuda do governo para empresas pagarem salários é \"tímida\" e não vai resolver nada','Nesta sexta, governo anunciou crédito de R$ 40 bilhões, em dois meses, para ajudar em meio à pandemia do coronavírus.','Fernanda Calgaro, G1','2020-03-27 20:57:11','O presidente da Câmara, Rodrigo Maia (DEM-RJ), disse nesta sexta-feira (27) que a linha de crédito emergencial anunciada pelo governo para pequenas e médias empresas pagarem os salários por dois meses \"não é ruim\", mas é \"tímida\" e \"não vai resolver nada\". Segundo Maia, ainda faltam medidas voltadas para outros setores da sociedade.','2020-03-28 18:25:24'),(6,' Governadores pedem aplicação de lei que prevê renda básica para todos os brasileiros','27 governadores também aprovaram pedido de suspensão por 12 meses do pagamento das dívidas dos estados.','G1','2020-03-28 12:03:44','Governadores reunidos na tarde desta quarta-feira (25) em videoconferência aprovaram uma carta com uma série de reivindicações ao governo federal (leia a íntegra ao final desta reportagem) para fazer frente à crise do coronavírus. Entre essas reivindicações, está a aplicação da lei que institui uma renda básica de cidadania para todos os brasileiros.\nSancionada em 2005 pelo então presidente Luiz Inácio Lula da Silva, a lei prevê o \"direito de todos os brasileiros residentes no País e estrangeiros residentes há pelo menos 5 (cinco) anos no Brasil, não importando sua condição socioeconômica, receberem, anualmente, um benefício monetário\".','2020-03-28 18:25:24'),(9,'Profissionais de saúde e cientistas condenam pronunciamento de Bolsonaro sobre a Covid-19','Organizações afirmaram que discurso do presidente é um risco no combate à doença, que tem mais de 2 mil casos no Brasil e é causada pelo novo coronavírus.','G1','2020-03-28 12:11:18','Entidades de médicos, de outros profissionais de saúde e de cientistas condenaram o pronunciamento, na noite desta terça-feira (24), do presidente Jair Bolsonaro sobre a Covid-19, doença causada pelo novo coronavírus.\n\nNa fala, veiculada em rede nacional, o presidente chamou a doença de \"resfriadinho\", contrariou especialistas e pediu o fim do \"confinamento em massa\". Ele também fez um apelo pela \"volta à normalidade\" e culpou a imprensa por \"espalhar pavor\".','2020-03-28 18:25:24'),(11,'Mourão diz que posição do governo \"é uma só\": isolamento e distanciamento social','Vice-presidente foi questionado sobre pronunciamento de Bolsonaro, no qual presidente da República pediu \"volta à normalidade\" e fim do \"confinamento em massa\".','Sara Resende e Filipe Matoso, TV Globo e G1 ','2020-03-28 12:14:11','O vice-presidente da República, Hamilton Mourão, afirmou nesta quarta-feira (25) que a posição do governo \"é uma só\": o isolamento e o distanciamento social.\n\nMourão deu a declaração ao conceder uma entrevista por videoconferência sobre ações do Conselho Nacional da Amazônia Legal.\n\nDurante a entrevista, ele foi questionado sobre o pronunciamento do presidente Jair Bolsonaro, nesta quarta (24), no qual Bolsonaro pediu a \"volta à normalidade\" em meio à pandemia do coronavírus, o fim do \"confinamento em massa\" e afirmou que os meios de comunicação espalharam \"pavor\".','2020-03-28 18:25:24'),(12,'EUA passam a China e se tornam o país com mais casos confirmados de coronavírus no mundo','O presidente Donald Trump disse que o aumento das confirmações no país se deveu à ampliação dos exames para os pacientes norte-americanos.','G1 ','2020-03-28 12:15:48','Com mais de 82 mil casos, os Estados Unidos se tornaram nesta quinta-feira (26) o país com mais casos confirmados de Covid-19 no mundo, superando a Itália e a China, de acordo com um levantamento da universidade norte-americana Johns Hopkins.\n\nSegundo a John Hopkins, os três países atingiram os seguintes números de casos nesta quinta:\nEUA - 82.404\nChina - 81.782\nItália - 80.589\nO presidente Donald Trump disse que o aumento dos casos confirmados no país se deveu à aplicação de testes em massa para os pacientes norte-americanos. Em entrevista coletiva, o mandatário disse não ser possível saber o número real de casos da doença no mundo.','2020-03-28 18:25:24'),(15,'Itália tem 889 novas mortes por coronavírus neste sábado e supera 10 mil vítimas','O país, que é o mais afetado na Europa, chegou a 92,4 mil casos confirmados neste sábado, com 5,9 mil novas confirmações.','G1','2020-03-28 03:00:00','A Itália registou 889 novas mortes por coronavírus neste sábado (28) e superou as 10 mil vítimas. O país tem o maior número de mortos no mundo por causa do vírus.\r\n\r\nOs 10.023 mortos na Itália são mais de três vezes mais mortos do que o total registrado na China, primeiro país afetado pela pandemia, que já diminuiu seu avanço e teve 3.295 mil mortos no total.\r\n\r\nA Itália, país o mais afetado na Europa, chegou a 92.472 casos confirmados neste sábado. O aumento em 24 horas foi de 5.974 novos casos.\r\n\r\nA Itália é o segundo país mais afetado do mundo em número de casos, atrás dos EUA, que já passaram dos 110 mil confirmações . Mas os EUA têm 1,9 mortes registradas, menos do que na Itália.','2020-03-28 18:31:59');
/*!40000 ALTER TABLE `noticias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-28 17:21:29
