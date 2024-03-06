-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-03-2024 a las 17:28:11
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `back_dragonball`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_personaje`
--

CREATE TABLE `tbl_personaje` (
  `ID_PERSONAJE` int(11) NOT NULL,
  `NOMBRE_PERSONAJE` varchar(25) NOT NULL,
  `IMAGEN` varchar(200) NOT NULL,
  `DESCRIPCION` varchar(100) NOT NULL,
  `ID_RAZA` int(11) NOT NULL,
  `BIOGRAFIA` varchar(2048) NOT NULL,
  `ID_UNIVERSO` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_personaje`
--

INSERT INTO `tbl_personaje` (`ID_PERSONAJE`, `NOMBRE_PERSONAJE`, `IMAGEN`, `DESCRIPCION`, `ID_RAZA`, `BIOGRAFIA`, `ID_UNIVERSO`) VALUES
(1, 'Goku', 'https://media.revistagq.com/photos/5f45010acb266484bb785c78/1:1/w_720,h_720,c_limit/dragon-ball-z.jpg', 'El Saiyajin criado en la Tierra', 1, 'Goku, conocido originalmente como Kakarotto, fue enviado a la Tierra desde el Planeta Vegeta poco antes de su destrucción. Criado por Son Gohan, aprendió artes marciales y comenzó su viaje junto a Bulma en busca de las Dragon Balls, convirtiéndose en discípulo del Maestro Roshi. Participó en el Torneo Mundial de Artes Marciales, enfrentando poderosos rivales y demostrando su habilidad. En su búsqueda de las Dragon Balls, enfrentó a diversos enemigos como el Rey Pilaf y el Ejército Red Ribbon. Descubrió su origen Saiyajin y enfrentó a otros de su raza, desbloqueando la forma de Super Saiyajin. Como parte de los Guerreros Z, defendió la Tierra de amenazas cósmicas como Freezer, Cell y Majin Buu. Tras su muerte y entrenamiento en el Otro Mundo, participó en el Torneo de los Dioses, descubriendo nuevas formas de poder. Continuó enfrentando desafíos, como el Torneo del Poder, donde luchó para salvar universos. Su determinación y amor por la lucha y sus seres queridos lo convirtieron en un héroe legendario.\r\n\r\nFamilia: Goku se casa con Chi-Chi y tienen dos hijos, Gohan y Goten. También es abuelo de Pan.', 2),
(2, 'Vegeta', 'https://www.publimetro.cl/resizer/WTg_r8a4OBK0iUq4kF3XD-X2_Fk=/800x0/filters:format(jpg):quality(70)/cloudfront-us-east-1.images.arcpublishing.com/metroworldnews/5KO5SFBY2BERLJAG7YNSRE4YHM.jpg', 'El Príncipe de los Saiyajin', 1, 'Vegeta, nacido en el Planeta Vegeta como el príncipe de los Saiyajin, tiene una historia marcada por la búsqueda de poder y redención. Al principio, es un enemigo de Goku, pero con el tiempo se convierte en su aliado y amigo. Vegeta es un guerrero formidable y orgulloso, determinado a superar a Goku en poder y habilidad. Inicialmente, llega a la Tierra con el objetivo de usar las Dragon Balls para obtener inmortalidad y vengarse de aquellos que humillaron a su raza, pero termina quedándose y formando parte de los Guerreros Z.\r\n\r\nA lo largo de la serie, Vegeta lucha contra varios enemigos poderosos, incluyendo a Freezer, Cell y Majin Buu. Aunque siempre está en búsqueda de poder, su motivación principal cambia con el tiempo, pasando de querer ser el más fuerte a proteger a su familia y amigos.\r\n\r\nVegeta se casa con Bulma y tienen un hijo llamado Trunks, quien juega un papel importante en su desarrollo como personaje. También es padre de una hija llamada Bra. A pesar de su actitud inicialmente fría y distante hacia su familia, Vegeta demuestra un profundo amor y dedicación hacia ellos, lo que lo convierte en un personaje complejo y en constante evolución.\r\n\r\nSu viaje lo lleva desde ser un villano arrogante hasta convertirse en un héroe respetado, aunque nunca pierde su orgullo y determinación. Su relación con Goku es una de las más icónicas de la serie, pasando de ser rivales acérrimos a aliados inseparables que se apoyan mutuamente en las batallas más difíciles.', 2),
(3, 'Gohan', 'https://i.pinimg.com/736x/83/9a/3d/839a3d77cd146cf81a1ebdc292bfc090.jpg', 'Guerrero Saiyajin y académico', 1, 'Gohan, hijo de Goku y Chi-Chi, es un personaje de Dragon Ball que experimenta un desarrollo único a lo largo de la serie. A diferencia de su padre, Gohan posee un corazón amable y compasivo, pero también un gran potencial de combate que hereda de su herencia Saiyajin.\r\n\r\nDesde temprana edad, Gohan muestra un gran talento para las artes marciales, especialmente cuando se enfurece o se ve amenazado. Durante su infancia, es entrenado tanto por Piccolo como por Goku, lo que moldea su personalidad y habilidades de combate. A pesar de su deseo de llevar una vida tranquila y estudiar, Gohan se ve constantemente envuelto en batallas para proteger a sus seres queridos y al mundo.\r\n\r\nUno de los momentos más importantes en la vida de Gohan es su enfrentamiento con Cell durante la saga de los Androides. En este punto, Gohan alcanza una forma de Super Saiyajin única, conocida como Super Saiyajin 2, y demuestra un poder impresionante al derrotar a Cell y salvar al planeta Tierra.\r\n\r\nA medida que la serie progresa, Gohan se enfoca más en sus estudios y su vida personal, pero nunca deja de lado su deber como defensor del mundo. Se casa con Videl y tienen una hija llamada Pan, continuando así el legado de los Guerreros Z.\r\n\r\nAunque Gohan no persigue el combate como lo hace su padre, Goku, su coraje y determinación son igualmente impresionantes. Es un personaje que representa la dualidad entre el deseo de una vida pacífica y la responsabilidad de proteger a los demás, lo que lo convierte en uno de los personajes más queridos y respetados de la serie.', 2),
(4, 'Piccolo', 'https://i.pinimg.com/736x/fd/3c/65/fd3c656dd75a33cf230f995d2bc4ab48.jpg', 'Guerrero Namek', 4, 'Piccolo, uno de los personajes más emblemáticos de Dragon Ball, experimenta un fascinante viaje de autodescubrimiento y redención a lo largo de la serie.\r\n\r\nInicialmente presentado como un enemigo de Goku y sus amigos, Piccolo es la reencarnación de un antiguo villano, el Rey Piccolo, cuyo objetivo era dominar la Tierra. Sin embargo, a medida que avanza la historia, Piccolo se embarca en un camino de transformación.\r\n\r\nDurante su tiempo con Gohan, Piccolo desempeña un papel crucial como su mentor y protector. Aunque su relación comienza como la de maestro y estudiante, con el tiempo se convierte en una conexión profundamente personal, con Piccolo asumiendo un papel paterno en la vida del joven Saiyajin. Esta relación no solo impulsa el crecimiento de Gohan como guerrero, sino que también transforma a Piccolo, enseñándole el valor del compañerismo y el amor.\r\n\r\nA lo largo de la serie, Piccolo demuestra ser un aliado invaluable en la lucha contra las amenazas que enfrentan Goku y sus amigos. Su inteligencia estratégica y habilidades de combate son fundamentales para la supervivencia del grupo en numerosas batallas.\r\n\r\nA pesar de su origen como enemigo, Piccolo se convierte en un firme defensor de la Tierra y sus habitantes. Su sacrificio personal y su dedicación a proteger a aquellos que ama lo elevan a la categoría de héroe en los corazones de sus compañeros Guerreros Z y de los fanáticos de la serie.', 2),
(5, 'Freezer', 'https://i.pinimg.com/736x/33/58/e4/3358e47fc802d359ebcac1b4a8c69a1b.jpg', 'Emperador del mal', 6, 'Freezer, uno de los villanos más emblemáticos de Dragon Ball, es un tirano galáctico que representa la encarnación del mal en la serie. Con su poderoso ejército y su despiadada crueldad, Freezer busca dominar la galaxia y someter a todos los que se interpongan en su camino.\r\n\r\nDesde su primera aparición, Freezer es presentado como un ser despiadado y calculador, dispuesto a destruir planetas enteros y aniquilar a cualquier individuo que lo desafíe. Su apariencia elegante y su actitud calmada ocultan su naturaleza verdaderamente malévola.\r\n\r\nDurante la saga de Namek, Freezer se enfrenta a Goku en una batalla épica que culmina con la transformación de Goku en Super Saiyajin por primera vez. A pesar de sus poderes imponentes, Freezer es derrotado por Goku y aparentemente destruido.\r\n\r\nSin embargo, Freezer regresa más tarde con la ayuda de la tecnología cibernética y busca vengarse de Goku y los Guerreros Z. Durante la saga de Cell, se enfrenta a Trunks del Futuro, quien viaja en el tiempo para advertir sobre las futuras amenazas que enfrentan.\r\n\r\nA pesar de su naturaleza malévola, Freezer es un personaje complejo cuyos motivos y acciones están impulsados por un profundo deseo de poder y control. Su arrogancia y desprecio por la vida lo convierten en uno de los villanos más formidables y temidos de la serie.', 2),
(6, 'Androide 17', 'https://i.pinimg.com/736x/58/31/dd/5831dd31ebc1ed3ff99a55cc9a91f50e.jpg', 'Androide guardabosque', 3, 'El Androide Número 17, conocido simplemente como N°17, es un personaje que evoluciona significativamente a lo largo de la serie Dragon Ball. Presentado inicialmente como un enemigo implacable durante la saga de los Androides, N°17 es uno de los dos androides creados por el Dr. Gero con el propósito de destruir a Goku y conquistar la Tierra.\r\n\r\nA pesar de su origen como arma de destrucción, N°17 muestra una personalidad despreocupada y rebelde. No tiene interés en seguir las órdenes del Dr. Gero y busca vivir su vida de la manera que elija. Su hermana gemela, N°18, comparte esta actitud, y juntos desafían a los Guerreros Z en numerosas ocasiones.\r\n\r\nSin embargo, a medida que avanza la serie, N°17 experimenta un cambio significativo en su carácter. Después de ser absorbido por Cell y posteriormente regresar a la vida gracias a las Esferas del Dragón, N°17 muestra una nueva perspectiva sobre la vida y el mundo que lo rodea.\r\n\r\nConvertido en guardabosques y protector de una isla, N°17 demuestra un profundo respeto por la naturaleza y una determinación para proteger a los seres vivos. Aunque sigue siendo un luchador formidable, su enfoque cambia de la destrucción a la preservación de la vida.\r\n\r\nEste cambio en la personalidad y motivación de N°17 lo convierte en uno de los aliados más inesperados y valiosos de los Guerreros Z. A pesar de su pasado como villano, N°17 demuestra que incluso los seres creados para la destrucción pueden encontrar redención y propósito en la protección de los inocentes.', 2),
(7, 'Androide 18', 'https://www.voicify.ai/_next/image?url=https%3A%2F%2Fimagecdn.voicify.ai%2Fmodels%2Fd956684c-8f7e-421e-88c7-c2ad6877d4b1.png&w=3840&q=100', 'Androide', 3, 'La Androide Número 18, o simplemente N°18, es un personaje fascinante en Dragon Ball que experimenta un viaje de transformación desde ser una antagonista hasta convertirse en una aliada valiosa y una figura materna.\r\n\r\nInicialmente presentada como un androide creado por el Dr. Gero para llevar a cabo su plan de venganza contra Goku y los Guerreros Z, N°18 es una guerrera formidable con habilidades de combate increíbles. Junto con su hermano gemelo, N°17, causan estragos y desafían a los héroes en numerosas ocasiones.\r\n\r\nSin embargo, a medida que avanza la serie, N°18 muestra una faceta más humana y compasiva. Después de ser absorbida por Cell y rescatada posteriormente por Krilin, comienza a cuestionar su propósito y su lealtad hacia el Dr. Gero. Esta experiencia marca el comienzo de su transformación de villana a aliada.\r\n\r\nDespués de ser revivida por las Esferas del Dragón, N°18 se integra a la sociedad y comienza una nueva vida junto a Krilin, con quien se casa y tiene una hija llamada Marron. Aunque sigue siendo una guerrera formidable, su enfoque cambia de la destrucción a la protección de su familia y el bienestar de aquellos a quienes ama.\r\n\r\nA pesar de su pasado como villana, N°18 demuestra ser una aliada leal y una figura materna cariñosa. Su relación con Krilin y su hija demuestran su capacidad para el amor y la compasión, cualidades que no se esperarían en un androide diseñado para la destrucción.', 2),
(8, 'Krilin', 'https://i.pinimg.com/736x/eb/6e/73/eb6e730734deee61f221fc5dca9faa90.jpg', 'Valiente guerrero humano y policía', 2, 'Krillin, uno de los personajes más queridos y duraderos de Dragon Ball, tiene un viaje de transformación que lo lleva desde ser un alumno de artes marciales hasta convertirse en un valiente guerrero y protector de la Tierra.\r\n\r\nIntroducido como un niño monje y compañero de entrenamiento de Goku en la Escuela Tortuga, Krillin inicialmente lucha por destacar entre los demás estudiantes. Sin embargo, a lo largo de la serie, demuestra una determinación inquebrantable y una habilidad excepcional para las artes marciales.\r\n\r\nA medida que la serie avanza, Krillin se convierte en un aliado valioso y un amigo cercano de Goku y los Guerreros Z. A pesar de su falta de poderes sobrenaturales, su coraje y determinación lo convierten en una fuerza a tener en cuenta en la batalla contra amenazas como Piccolo, Vegeta, Freezer y Cell.\r\n\r\nA lo largo de su vida, Krillin enfrenta numerosos desafíos y tragedias, incluida su muerte a manos de Freezer en Namek. Sin embargo, su espíritu indomable y su fuerte sentido del deber lo llevan a seguir luchando y protegiendo a aquellos que ama.\r\n\r\nDespués de ser resucitado, Krillin continúa su entrenamiento y participa activamente en la defensa de la Tierra contra nuevas amenazas, como los androides y Majin Buu. A pesar de sus propias dudas y temores, siempre está dispuesto a sacrificarse por el bien mayor.\r\n\r\nAdemás de sus habilidades en combate, Krillin también demuestra ser un amigo leal y un esposo cariñoso. Su relación con Android N°18 es una prueba de su capacidad para encontrar el amor y la felicidad en medio del caos y la batalla.', 2),
(9, 'Maestro Roshi', 'https://www.latercera.com/resizer/4MxcTdiG0iyO7_mRNUfYprVQlU0=/900x600/smart/arc-anglerfish-arc2-prod-copesa.s3.amazonaws.com/public/UDJX3U34ZRAC3FZZHNZXVTE44Q.png', 'Sabio maestro de artes marciales', 2, 'El Maestro Roshi, también conocido como Kame-Sen\'nin, es un personaje emblemático en el universo de Dragon Ball, venerado como uno de los maestros de artes marciales más poderosos y sabios.\r\n\r\nPresentado como un anciano pervertido y cómico, el Maestro Roshi es inicialmente retratado como un personaje excéntrico que disfruta de los placeres mundanos, como las revistas para adultos y el entrenamiento de sus alumnos Goku y Krillin en su Isla Tortuga.\r\n\r\nSin embargo, a medida que la serie avanza, se revela que el Maestro Roshi es mucho más que solo un anciano excéntrico. Es un guerrero formidable con una vasta experiencia en combate y un conocimiento profundo de las artes marciales.\r\n\r\nA lo largo de la serie, el Maestro Roshi desempeña un papel crucial en el entrenamiento y desarrollo de los Guerreros Z, impartiendo sabiduría y técnicas de combate que son fundamentales para su éxito en las batallas contra enemigos poderosos como Piccolo, Freezer y Cell.\r\n\r\nAunque a menudo se muestra como un personaje cómico, el Maestro Roshi también demuestra ser un protector dedicado de la Tierra y sus habitantes. Está dispuesto a arriesgar su vida para proteger a sus amigos y detener las amenazas que se ciernen sobre el mundo.\r\n\r\nAdemás de su habilidad en combate, el Maestro Roshi es un símbolo de sabiduría y bondad. A lo largo de la serie, sus enseñanzas y consejos tienen un impacto profundo en Goku y los demás Guerreros Z, ayudándolos a crecer como personas y guerreros.', 2),
(10, 'Tenshinhan', 'https://i.pinimg.com/564x/39/65/a7/3965a7a30112393d5d4a3eaaef2d6595.jpg', 'Monje guerrero', 2, 'Tenshinhan, también conocido como Ten Shin Han, es un personaje notable en el universo de Dragon Ball, reconocido por su dedicación a las artes marciales y su desarrollo como guerrero a lo largo de la serie.\r\n\r\nIntroducido como un alumno del Maestro Shen y rival de Goku en el Torneo de las Artes Marciales, Tenshinhan inicialmente se presenta como un personaje orgulloso y competitivo. Sin embargo, a medida que avanza la serie, su carácter y motivaciones se vuelven más complejas.\r\n\r\nA lo largo de la serie, Tenshinhan muestra un profundo compromiso con el entrenamiento y el perfeccionamiento de sus habilidades de combate. A pesar de ser un rival de Goku, desarrolla un respeto mutuo por él y se une a los Guerreros Z en su lucha contra enemigos poderosos como Piccolo, Freezer y Cell.\r\n\r\nAdemás de su habilidad en combate, Tenshinhan también es conocido por su profunda espiritualidad y su dedicación al cultivo del chi. Esta conexión con lo espiritual lo lleva a desarrollar técnicas únicas, como el Kikoho (también conocido como Tri-Beam), que utiliza en batalla para enfrentarse a oponentes más poderosos que él.\r\n\r\nA pesar de sus habilidades excepcionales, Tenshinhan lucha con su propio sentido del honor y su papel en la batalla entre el bien y el mal. A lo largo de la serie, enfrenta decisiones difíciles y momentos de auto-reflexión, lo que lo convierte en un personaje complejo y matizado.', 2),
(11, 'Hit', 'https://c4.wallpaperflare.com/wallpaper/587/273/106/dragon-ball-dragon-ball-super-hit-dragon-ball-wallpaper-preview.jpg', 'El sicario más temido', 13, 'Hit es un personaje destacado en Dragon Ball Super, especialmente durante el arco del \"Universo 6 contra el Universo 7\" y el \"Torneo de Fuerza\". Es un asesino profesional y uno de los luchadores más poderosos del Universo 6.\r\n\r\nHit es conocido por su habilidad única llamada \"Salto del Tiempo\", que le permite manipular el tiempo por un breve período. Esta habilidad lo convierte en un oponente formidable en combate, ya que puede predecir y contrarrestar los movimientos de sus adversarios con precisión.\r\n\r\nAdemás de su habilidad para controlar el tiempo, Hit es un luchador extremadamente habilidoso en combate cuerpo a cuerpo. Su estilo de lucha es calmado y calculador, y rara vez muestra emociones durante la batalla.\r\n\r\nA lo largo del arco del Torneo de Fuerza, Hit demuestra ser un aliado valioso para el Universo 7, mostrando un profundo respeto por Goku y los demás Guerreros Z. Aunque inicialmente lucha por su propio universo, eventualmente se une a la lucha para proteger a todos los universos de la eliminación.\r\n\r\nHit también es conocido por su código de honor como asesino, prefiriendo enfrentarse solo a sus objetivos en lugar de atacar a inocentes. A pesar de su reputación como un asesino implacable, muestra un sentido de justicia y respeto por aquellos que considera dignos.', 1),
(12, 'Caulifla', 'https://i.pinimg.com/originals/9e/61/5f/9e615ffc543fe27df4daffc776517ca1.png', 'Saiyajin pandillera', 1, 'Caulifla es un personaje importante introducido en Dragon Ball Super durante el arco del Torneo de Fuerza. Ella es una Saiyajin del Universo 6 y es la hermana mayor de Renso, líder de la Patrulla Sadala.\r\n\r\nCaulifla es conocida por su naturaleza audaz y su fuerte determinación. Aunque al principio es reacia a la idea de participar en el Torneo de Fuerza, su encuentro con Cabba y la promesa de poder la motivan a entrenar y mejorar sus habilidades como guerrera Saiyajin.\r\n\r\nUna de las características más distintivas de Caulifla es su capacidad para transformarse en Super Saiyajin de manera natural y rápida. A pesar de no tener experiencia previa en esta transformación, logra alcanzarla después de un breve entrenamiento con Cabba, mostrando un talento innato para la lucha.\r\n\r\nAdemás de su habilidad para transformarse en Super Saiyajin, Caulifla demuestra ser una combatiente formidable en el Torneo de Fuerza. Su estilo de lucha es ágil y agresivo, y muestra una gran confianza en sus habilidades durante las batallas.\r\n\r\nA lo largo del torneo, Caulifla desarrolla una relación cercana con Goku del Universo 7, a quien admira y ve como un rival digno. A pesar de su inicial desconfianza hacia él y su equipo, eventualmente se une a la lucha contra amenazas más grandes, como Jiren del Universo 11.', 1),
(13, 'Kale', 'https://www.mdtech.news/u/fotografias/m/2023/12/19/f608x342-34427_64150_226.jpg', 'La Saiyajin Legendaria', 1, 'Kale es otro personaje destacado introducido en Dragon Ball Super durante el arco del Torneo de Fuerza. Al igual que Caulifla, ella es una Saiyajin del Universo 6 y es considerada como una de las guerreras más poderosas de su universo.\r\n\r\nKale inicialmente es presentada como una Saiyajin tímida y reservada, con una autoestima muy baja. Sin embargo, su vida cambia cuando Caulifla la anima y le enseña a controlar su poder latente. Esto desencadena la transformación de Kale en un estado similar al de un Super Saiyajin legendario, conocido como \"Broly\".\r\n\r\nEn esta forma, Kale muestra un poder abrumador y una fuerza destructiva masiva, lo que la convierte en una fuerza a tener en cuenta en el Torneo de Fuerza. Aunque al principio tiene dificultades para controlar su poder y sufre de inseguridades, eventualmente aprende a dominar su fuerza interior.\r\n\r\nA lo largo del torneo, Kale desarrolla un vínculo especial con Caulifla, a quien ve como una hermana mayor y un modelo a seguir. Su relación juega un papel importante en su desarrollo como personaje, ya que Caulifla la anima y apoya en su viaje para controlar su poder.\r\n\r\nA medida que avanza el Torneo de Fuerza, Kale se convierte en una fuerza formidable en el campo de batalla, desafiando a oponentes poderosos y demostrando su valía como una de las principales guerreras del Universo 6. Su transformación en Super Saiyajin legendario la convierte en un personaje fascinante y poderoso en el universo de Dragon Ball Super.', 1),
(14, 'Cabba', 'https://c4.wallpaperflare.com/wallpaper/524/875/650/dragon-ball-dragon-ball-super-cabba-dragon-ball-wallpaper-preview.jpg', 'Saiyajin y discípulo de Vegeta', 1, 'Cabba es un Saiyajin del Universo 6 y uno de los personajes principales introducidos en Dragon Ball Super durante el arco del Torneo de Fuerza. Es reclutado por Vegeta para representar a su universo en el torneo interuniversal entre el Universo 6 y el Universo 7.\r\n\r\nAl principio, Cabba parece ser un Saiyajin amable y respetuoso, en marcado contraste con la reputación de los Saiyajin del Universo 7. Se muestra como un guerrero comprometido y dispuesto a aprender, especialmente cuando Vegeta le enseña cómo transformarse en Super Saiyajin.\r\n\r\nLa relación entre Cabba y Vegeta es una de las partes más destacadas de su personaje. Aunque inicialmente son rivales en el torneo, Vegeta desarrolla un respeto por Cabba cuando este demuestra su valentía y determinación en la batalla. Además, Vegeta ve a Cabba como un reflejo de su propio pasado como Saiyajin, y se siente inspirado para ayudarlo a alcanzar nuevas alturas.\r\n\r\nCabba demuestra ser un luchador habilidoso en el Torneo de Fuerza, especialmente después de alcanzar la transformación en Super Saiyajin por primera vez. Aunque al principio tiene dificultades para controlar su poder, eventualmente se convierte en una fuerza formidable en el campo de batalla.\r\n\r\nAdemás de su habilidad en combate, Cabba también muestra una personalidad compasiva y justa. Está dispuesto a hacer lo que sea necesario para proteger a su universo y a aquellos que le importan, incluso si eso significa enfrentarse a oponentes más poderosos.', 1),
(15, 'Frost', 'https://cdn.atomix.vg/wp-content/uploads/2017/09/dbs-frost.jpg', 'Emperador del Universo 6', 6, 'Frost es un personaje introducido en Dragon Ball Super como el emperador del Universo 6, el universo gemelo del Universo 7. Inicialmente, Frost es presentado como un héroe y un filántropo que usa su riqueza y poder para ayudar a los necesitados en su universo.\r\n\r\nSin embargo, más tarde se revela que Frost es un individuo astuto y maquiavélico que ha estado involucrado en actividades criminales, como el tráfico de armas. A pesar de su apariencia carismática y amigable, Frost es en realidad un villano manipulador que utiliza su reputación pública para ocultar sus verdaderas intenciones.\r\n\r\nEn el arco del Torneo de Fuerza, Frost es seleccionado como uno de los luchadores representantes del Universo 6 en el torneo interuniversal. Durante la competencia, muestra habilidades de combate impresionantes, incluida la capacidad de transformarse en formas más poderosas, similar a Freezer del Universo 7.\r\n\r\nA lo largo del torneo, Frost utiliza tácticas deshonestas para ganar ventaja sobre sus oponentes, como el uso de veneno y trucos bajo la mesa. Sin embargo, sus acciones son finalmente descubiertas, y es descalificado del torneo.', 1),
(16, 'Botamo', 'https://i.pinimg.com/originals/51/6f/4e/516f4e5d436f7a1120fdd2dd8c13d5f9.png', 'Luchador elástico del Universo 6', 10, 'Botamo es un personaje introducido en Dragon Ball Super como uno de los luchadores representantes del Universo 6 en el Torneo de Fuerza. Es un ser alienígena grande y robusto con una apariencia similar a la de un oso.\r\n\r\nUna de las características más destacadas de Botamo es su habilidad especial llamada \"Capa de Invisibilidad\", que le permite absorber y reflejar los ataques físicos y de energía. Esto lo convierte en un oponente muy difícil de derrotar en combate, ya que es prácticamente invulnerable a la mayoría de los ataques.\r\n\r\nAunque Botamo carece de habilidades ofensivas significativas, su increíble defensa lo hace un valioso miembro del equipo del Universo 6 en el Torneo de Fuerza. Durante la competencia, se le ve enfrentándose a varios oponentes del Universo 7, incluidos Goku y Vegeta.\r\n\r\nAdemás de su habilidad especial, Botamo es conocido por su personalidad amigable y juguetona. A menudo se le ve sonriendo y disfrutando de la competencia, lo que lo convierte en uno de los personajes más simpáticos del torneo.\r\n\r\nA pesar de sus esfuerzos, Botamo es eliminado del Torneo de Fuerza cuando se enfrenta a estrategias que logran neutralizar su Capa de Invisibilidad. Aunque su tiempo en el torneo es corto, su presencia agrega variedad y emoción a la competencia interuniversal en Dragon Ball Super.', 1),
(17, 'Magetta', 'https://static1.cbrimages.com/wordpress/wp-content/uploads/2018/06/Dragon-Ball-Super-Metal-Men-Auta-Magetta.jpg?q=50&fit=crop&w=750&dpr=1.5', 'El Robot Sensible', 7, 'Magetta es otro de los luchadores del Universo 6 en el Torneo de Fuerza en Dragon Ball Super. Es un miembro del equipo junto con Botamo, Cabba, Frost, y los Saiyajin Caulifla y Kale.\r\n\r\nMagetta es un ser de metal gigante con la capacidad de lanzar un aliento ardiente y fundir su cuerpo para protegerse de los ataques enemigos. A pesar de su apariencia imponente, Magetta es en realidad un luchador bastante tímido y sensible, que fácilmente puede ser afectado emocionalmente durante el combate.\r\n\r\nDurante el Torneo de Fuerza, Magetta enfrenta a varios oponentes del Universo 7, como Vegeta y el Androide 18. A pesar de su tenacidad y habilidades defensivas, Magetta es derrotado en la competencia, principalmente debido a sus debilidades emocionales y su tendencia a perder la concentración en combate.\r\n\r\nAunque su tiempo en el torneo es breve, Magetta es un recordatorio de la diversidad de habilidades y personalidades presentes en el universo de Dragon Ball Super. Su presencia agrega un elemento único y distintivo a la competencia interuniversal, y su carácter tímido y vulnerable lo hace un personaje memorable entre los luchadores del Torneo de Fuerza.', 1),
(18, 'Dr. Rota', 'https://pm1.aminoapps.com/6628/faa9751394304fc77ce3d062af6c5e07b2020487_hq.jpg', 'Misterioso luchador del Universo 6', 13, 'Dr. Rota es un personaje que aparece brevemente en Dragon Ball Super durante el arco del Torneo de Fuerza. Es un miembro del equipo del Universo 6 y se le muestra como un guerrero con una apariencia peculiar, con una boca grande y llena de dientes afilados.\r\n\r\nAunque su participación en el torneo es limitada y sus habilidades de combate no se exploran en detalle, Dr. Rota es conocido por su habilidad especial de \"Hablar sin parar\". Esta habilidad le permite lanzar un flujo constante de palabras hacia sus oponentes durante la pelea, potencialmente distrayéndolos y confundiéndolos.\r\n\r\nSin embargo, a pesar de su habilidad única, Dr. Rota es eliminado del Torneo de Fuerza de manera rápida y cómica, sin mostrar realmente su potencial en combate. Su tiempo en pantalla es breve y su papel es más bien humorístico.', 1),
(19, 'Saonel', 'https://i.pinimg.com/originals/a9/a1/a1/a9a1a189fbaf83c91fdf0bc527d90f3f.jpg', 'Namek del Universo 6', 4, 'Saonel es un guerrero del Universo 6 que participa en el Torneo de Fuerza en Dragon Ball Super. Junto con Pirina, forma parte del dúo de Nameks del Universo 6.\r\n\r\nSaonel es un Namek fuerte y decidido que lucha con valentía para proteger a su universo en el Torneo de Fuerza. Aunque inicialmente tiene dificultades para enfrentarse a los oponentes del Universo 7, Saonel muestra una notable mejora a lo largo del torneo, adaptándose y aprendiendo de sus experiencias en combate.\r\n\r\nUna de las características más destacadas de Saonel es su capacidad para fusionarse con Pirina, lo que aumenta significativamente su poder y habilidades en el campo de batalla. La fusión de Saonel y Pirina demuestra ser una fuerza formidable en el Torneo de Fuerza, desafiando a los Guerreros Z del Universo 7 y demostrando su valía como luchadores excepcionales.\r\n\r\nAunque su tiempo en pantalla es limitado y su papel no es tan destacado como otros personajes, Saonel y Pirina añaden una dimensión única al Torneo de Fuerza como representantes de los Namekians del Universo 6. Su determinación y habilidades en combate los convierten en guerreros respetables y dignos de mención en el universo de Dragon Ball Super.', 1),
(20, 'Pirina', 'https://i.pinimg.com/originals/c5/bb/3a/c5bb3ab3a281e635aed1ae74e5f1bc6e.jpg', 'Namek del Universo 6', 4, 'Pirina es otro guerrero destacado del Universo 6 que participa en el Torneo de Fuerza en Dragon Ball Super. Al igual que Saonel, Pirina es un Namekian y forma parte del dúo de Namekians del Universo 6.\r\n\r\nPirina se muestra como un Namekian fuerte y comprometido que lucha con determinación para proteger a su universo en el Torneo de Fuerza. Al igual que Saonel, Pirina experimenta un crecimiento significativo a lo largo del torneo, adaptándose a los desafíos del campo de batalla y mejorando sus habilidades de combate.\r\n\r\nUna de las características más notables de Pirina es su capacidad para fusionarse con Saonel, formando un único ser poderoso que combina sus fuerzas y habilidades. La fusión de Saonel y Pirina demuestra ser una fuerza formidable en el Torneo de Fuerza, desafiando a los guerreros del Universo 7 y destacando la potencia de los Namekians del Universo 6.\r\n\r\nAunque su tiempo en pantalla es limitado y su papel no es tan destacado como otros personajes, Pirina y Saonel añaden una nueva dinámica al Torneo de Fuerza como representantes de los Namekians del Universo 6.', 1),
(21, 'Basil', 'https://pm1.aminoapps.com/6412/d53de2c9a29332d16da333d968ee6a5ba508eadb_00.jpg', 'Hermano del trío de Dangers', 8, 'Basil es un luchador del Universo 9 que participa en el Torneo de Fuerza, una competencia entre universos organizada por los Reyes de Todo en Dragon Ball Super. Junto con sus hermanos, Lavender y Bergamo, forma parte del trío de guerreros conocido como los \"Tres Lobos Peligrosos\" o \"Trío de Dangers\".\r\n\r\nBasil es un luchador extremadamente ágil y habilidoso, que confía en su velocidad y destreza física en combate. Su estilo de lucha se centra en técnicas acrobáticas y ataques rápidos, lo que lo convierte en un oponente formidable en la arena.\r\n\r\nAdemás de su habilidad en combate, Basil es conocido por su personalidad arrogante y despiadada. Está dispuesto a hacer lo que sea necesario para ganar, incluso si eso significa atacar sin piedad a sus oponentes o trabajar junto con otros universos para eliminar a los rivales más fuertes.\r\n\r\nA pesar de su naturaleza competitiva, Basil muestra un profundo amor por su universo y está decidido a luchar por su supervivencia en el Torneo de Fuerza. Él y sus hermanos están dispuestos a enfrentarse a cualquier amenaza que se interponga en su camino, ya sea del Universo 7 u otros universos competidores.', 3),
(22, 'Bergamo', 'https://s.staticneo.com/mg/2020/11/ebbda141bfc2c665a857beb6d353b8a1ac117ee8_hq5Q62y_display.jpg', 'Hermano del trío de Dangers, Bergamo \"The Crusher\"', 9, 'Bergamo, también conocido como Bergamo el Rompedor, es un guerrero del Universo 9 que participa en el Torneo de Fuerza en Dragon Ball Super. Es uno de los tres hermanos conocidos como los \"Tres Lobos Peligrosos\", junto con Basil y Lavender.\r\n\r\nBergamo se destaca por su gran tamaño y su fuerza física imponente. Es un luchador poderoso que confía en su tamaño y musculatura para dominar a sus oponentes en combate. Además de su fuerza bruta, Bergamo también posee una habilidad única: puede absorber el poder de sus oponentes y usarlo en su contra, aumentando su propia fuerza en el proceso.\r\n\r\nA pesar de su apariencia intimidante, Bergamo es un guerrero honorable que lucha por la supervivencia de su universo en el Torneo de Fuerza. A diferencia de sus hermanos, muestra una disposición más pacífica y una actitud menos agresiva hacia sus oponentes.\r\n\r\nBergamo también tiene una relación cercana con sus hermanos, Basil y Lavender, y juntos forman un equipo formidable en la competencia interuniversal. Aunque tienen diferentes estilos de lucha y personalidades, trabajan en conjunto para enfrentarse a los desafíos que enfrentan en el torneo.\r\n\r\nA lo largo del Torneo de Fuerza, Bergamo demuestra ser un adversario formidable para los Guerreros Z del Universo 7, utilizando su fuerza y habilidades únicas para enfrentarse a Goku y los demás. Sin embargo, al final del torneo, acepta la derrota con gracia y demuestra un respeto genuino por sus oponentes.', 3),
(23, 'Lavender', 'https://staticg.sportskeeda.com/editor/2022/04/70651-16508809970686-1920.jpg', 'Hermano del trío de Dangers', 8, 'Lavender es otro de los miembros del trío conocido como los \"Tres Lobos Peligrosos\" del Universo 9 en Dragon Ball Super. A diferencia de sus hermanos, Lavender es conocido por su astucia y habilidad para usar venenos en combate.\r\n\r\nLavender es un luchador sigiloso y táctico que prefiere usar tácticas poco ortodoxas para derrotar a sus oponentes. Su habilidad principal radica en la producción y manipulación de venenos letales que pueden debilitar e incapacitar a sus rivales en combate.\r\n\r\nAunque inicialmente parece ser uno de los combatientes menos impresionantes en términos de poder bruto, Lavender demuestra ser un oponente peligroso debido a su astucia y su capacidad para utilizar el entorno a su favor. Sus tácticas incluyen el uso de nubes de gas venenoso y la aplicación de venenos en sus garras y ataques cuerpo a cuerpo.\r\n\r\nDurante el Torneo de Fuerza, Lavender enfrenta a varios oponentes, incluidos Goku y Gohan del Universo 7. A pesar de su habilidad para infligir daño con sus venenos, Lavender finalmente es derrotado por Gohan en una batalla emocionante y estratégica.\r\n\r\nA pesar de su derrota, Lavender muestra una determinación feroz y un sentido del honor en el combate. Acepta su derrota con dignidad y demuestra un respeto genuino por sus oponentes, incluso aquellos del Universo 7.', 3),
(24, 'Comfrey', 'https://images-ext-2.discordapp.net/external/BZx_utSi0kPD4V1OVeN8F8xQ4uwjbn2iZsSbS2CwS1g/https/pm1.aminoapps.com/6612/9fc159413e81bf6d4febe5213d619a7029dacbb9_00.jpg?format=webp', 'Luchador del Universo 9', 7, 'Comfrey es un miembro del equipo del Universo 9 en el Torneo de Fuerza de Dragon Ball Super. Aunque su participación en el torneo es breve, su estilo de lucha y su papel en la competencia lo hacen un personaje interesante.\r\n\r\nComfrey es un luchador que posee la capacidad de dividirse en múltiples copias de sí mismo, lo que le otorga una ventaja táctica en combate. Utiliza esta habilidad para confundir a sus oponentes y atacar desde múltiples direcciones, lo que hace que sea difícil para ellos predecir sus movimientos.\r\n\r\nA pesar de su habilidad única, Comfrey es derrotado durante el Torneo de Fuerza por los Guerreros Z del Universo 7. Aunque su tiempo en el torneo es corto, demuestra ser un luchador valiente y determinado que está dispuesto a enfrentarse a oponentes poderosos en nombre de su universo.\r\n\r\nAunque se sabe poco sobre su trasfondo y motivaciones, Comfrey es parte de la delegación del Universo 9 que lucha con todas sus fuerzas para evitar la destrucción de su universo. Su estilo de lucha único y su participación en el Torneo de Fuerza añaden variedad y emoción a la competencia interuniversal.', 3),
(25, 'Chappil', 'https://pm1.aminoapps.com/6526/3c1fe8ffe562062dbf103d008bf73934336146dd_hq.jpg', 'Luchador del Universo 9', 7, 'Chappil es otro miembro del equipo del Universo 9 que participa en el Torneo de Fuerza en Dragon Ball Super. Aunque su participación en el torneo es breve y limitada en pantalla, su papel como luchador del Universo 9 lo hace notable en la competencia interuniversal.\r\n\r\nChappil es un guerrero delgado y ágil que utiliza su velocidad y agilidad en combate. Se le ve luchando en el torneo contra los oponentes del Universo 7, mostrando una habilidad decente en el combate cuerpo a cuerpo.\r\n\r\nAunque su estilo de lucha y habilidades no se exploran en profundidad en la serie, Chappil demuestra ser un luchador valiente y comprometido que está dispuesto a representar a su universo en el Torneo de Fuerza. A pesar de las dificultades y los desafíos que enfrenta su equipo, Chappil y sus compañeros luchan con determinación hasta el final.\r\n\r\nAunque finalmente su equipo del Universo 9 es derrotado y borrado de la existencia, la participación de Chappil en el Torneo de Fuerza agrega emoción y diversidad a la competencia interuniversal. Aunque su tiempo en pantalla es limitado, su papel como luchador del Universo 9 lo hace un personaje digno de mención en el universo de Dragon Ball Super.', 3),
(26, 'Hop', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/03/dragon-ball-super-guerreras_4.jpg?tf=640x', 'Luchador del Universo 9', 9, 'Hop es otro miembro del equipo del Universo 9 en el Torneo de Fuerza de Dragon Ball Super. Al igual que Chappil, su participación en el torneo es breve y su papel no es muy destacado en comparación con otros luchadores.\r\n\r\nHop es un guerrero delgado y ágil que parece especializarse en técnicas de combate rápidas y evasivas. Durante el torneo, se le ve luchando contra los oponentes del Universo 7, utilizando su velocidad y destreza en el combate cuerpo a cuerpo.\r\n\r\nAunque su estilo de lucha y habilidades no se exploran en detalle en la serie, Hop muestra ser un luchador valiente que está dispuesto a representar a su universo en el Torneo de Fuerza. A pesar de las dificultades que enfrenta su equipo del Universo 9, Hop y sus compañeros luchan con determinación hasta el final.\r\n\r\nSin embargo, al igual que los otros miembros del Universo 9, Hop es eliminado cuando su equipo pierde en el torneo. Aunque su tiempo en pantalla es corto y su papel no es muy destacado, su participación en el Torneo de Fuerza agrega diversidad y emoción a la competencia interuniversal.', 3),
(27, 'Oregano', 'http://www.dragonball-ultimate.com/wp-content/uploads/2017/07/oregano-in-tv-series.jpg', 'Luchador del Universo 9', 12, 'Oregano es un guerrero robusto y musculoso que muestra habilidades de combate impresionantes durante el torneo. Utiliza su fuerza física y ​​su resistencia para enfrentarse a los oponentes del Universo 7 en combate cuerpo a cuerpo.\r\n\r\nAunque no se exploran en profundidad sus habilidades o antecedentes en la serie, Oregano demuestra ser un luchador valiente que está dispuesto a representar a su universo en el Torneo de Fuerza. Junto con sus compañeros del Universo 9, lucha con determinación para defender su hogar y evitar su eliminación del torneo.\r\n\r\nSin embargo, como el resto de su equipo, Oregano es eliminado cuando el Universo 9 pierde en el torneo. Aunque su tiempo en pantalla es limitado y su papel no es muy destacado en comparación con otros luchadores, su participación agrega diversidad y emoción a la competencia interuniversal.', 3),
(28, 'Hyssop', 'http://www.dragonball-ultimate.com/wp-content/uploads/2017/07/hyssop-ice-lance.jpg', 'Luchador del Universo 9', 7, 'Hyssop es un guerrero grande y musculoso del Universo 9 que participa en el Torneo de Fuerza en Dragon Ball Super. A pesar de su apariencia física imponente, su estilo de lucha y habilidades específicas no se exploran en detalle en la serie. Sin embargo, su determinación para representar a su universo en la competencia interuniversal es evidente a lo largo del torneo. Al igual que otros miembros del equipo del Universo 9, Hyssop lucha con fiereza hasta que su universo es eliminado del torneo. ', 3),
(29, 'Sorrel', 'https://cdn.hobbyconsolas.com/sites/navi.axelspringer.es/public/media/image/2018/03/dragon-ball-super-guerreras_3.jpg?tf=640x', 'Luchador del Universo 9', 8, 'Sorrel, una valiente guerrera del Universo 9, es seleccionada como miembro del equipo que representa a su universo en el Torneo de Fuerza en Dragon Ball Super. Aunque su participación en el torneo es breve, Sorrel muestra determinación y coraje en la competencia interuniversal.\r\n\r\nCon una habilidad especial en el combate, Sorrel demuestra ser una oponente formidable para los guerreros de otros universos. Aunque su estilo de lucha específico no se explora en profundidad en la serie, su presencia en el campo de batalla agrega un elemento único a la competencia.\r\n\r\nA pesar de sus esfuerzos y valentía, Sorrel y el resto del equipo del Universo 9 son eliminados cuando su universo pierde en el torneo. Aunque su tiempo en pantalla es limitado y su papel no es muy destacado, su participación contribuye a la diversidad y emoción del Torneo de Fuerza.', 3),
(30, 'Roselle', 'https://i.pinimg.com/originals/19/fa/02/19fa020b7ff29a0eb62b0a2dfd054e16.jpg', 'Luchador del Universo 9', 12, 'Roselle es otro de los miembros del equipo del Universo 9 que participa en el Torneo de Fuerza en Dragon Ball Super. Si bien su participación en el torneo es breve y su papel no es muy destacado en comparación con otros luchadores, su presencia agrega diversidad y emoción a la competencia interuniversal.\r\n\r\nRoselle es un guerrero del Universo 9 que muestra habilidades únicas en el campo de batalla. Aunque no se explora en profundidad su estilo de lucha o sus habilidades específicas en la serie, su determinación para representar a su universo en el Torneo de Fuerza es evidente.\r\n\r\nA pesar de su corto tiempo en pantalla, Roselle y el resto del equipo del Universo 9 luchan con valentía para defender su hogar en la competencia interuniversal. Sin embargo, como el resto de su equipo, Roselle es eliminado cuando el Universo 9 pierde en el torneo.', 3),
(31, 'Jiren', 'https://upload.wikimedia.org/wikipedia/en/d/d8/JirenSuper.jpg', 'EL más poderoso de las tropas del Orgullo, también conocido como Jiren \"El Gris\"', 12, 'Jiren es uno de los personajes más poderosos e impactantes introducidos en Dragon Ball Super durante el arco del Torneo de la Fuerza. Él es el líder del equipo del Universo 11 y es conocido como el \"Pride Trooper más fuerte\". Desde su primera aparición, Jiren es presentado como un guerrero misterioso y extremadamente poderoso, cuya fuerza rivaliza incluso con la de los dioses de la destrucción.\r\n\r\nJiren es un luchador serio y de pocas palabras, que prefiere dejar que sus acciones hablen por él. A lo largo del Torneo de la Fuerza, se le muestra como un guerrero increíblemente hábil y poderoso, capaz de enfrentarse a múltiples oponentes simultáneamente y superar desafíos aparentemente insuperables.\r\n\r\nUna de las características más destacadas de Jiren es su increíble fuerza, velocidad y resistencia. Además, posee una inmensa cantidad de energía y una capacidad para liberar poderosos ataques que lo hacen prácticamente invencible en combate.\r\n\r\nAunque inicialmente parece ser un luchador solitario, Jiren es en realidad un defensor de la justicia y está comprometido con proteger su universo y mantener el equilibrio en el multiverso. Este sentido de la justicia lo lleva a unirse al Torneo de la Fuerza, donde lucha con todo su poder para asegurar la supervivencia de su universo.\r\n\r\nA medida que avanza el torneo, se revelan algunos de los motivos y traumas del pasado de Jiren, lo que le proporciona una profundidad emocional y lo humaniza ante los ojos de los espectadores. A pesar de su apariencia imponente y su fuerza abrumadora, Jiren es un personaje complejo con sus propias motivaciones y dilemas internos.', 4),
(32, 'Toppo', 'https://www.nintenderos.com/wp-content/uploads/2021/01/DBXV2-Toppo_01-18-21-Cropped.jpg', 'Líder de los Orgullosos Guerreros del Universo 11', 12, 'Toppo es otro personaje importante presentado en Dragon Ball Super, especialmente durante el arco del Torneo de la Fuerza. Originalmente, Toppo es el líder de los Pride Troopers del Universo 11, una organización de justicieros que protegen la paz en su universo.\r\n\r\nToppo es conocido por su sentido inquebrantable de la justicia y su compromiso con la protección de su universo. Él y su equipo, los Pride Troopers, son respetados y admirados por su dedicación para mantener la paz y el orden en el Universo 11.\r\n\r\nDurante el Torneo de la Fuerza, Toppo es seleccionado como uno de los luchadores representantes del Universo 11. A medida que avanza el torneo, se convierte en uno de los oponentes más formidables a los que se enfrentan los Guerreros Z del Universo 7.\r\n\r\nToppo es conocido por su estilo de lucha directo y su increíble fuerza física. Además, eventualmente revela su verdadero poder como un candidato a Dios de la Destrucción, lo que lo convierte en un oponente aún más formidable en la competencia.\r\n\r\nAunque inicialmente se muestra como un defensor de la justicia y la paz, Toppo enfrenta una crisis de identidad durante el Torneo de la Fuerza. Después de ser derrotado por Goku y presionado por las circunstancias del torneo, Toppo decide abandonar sus ideales de justicia para abrazar su verdadero poder como un Dios de la Destrucción, mostrando una faceta más oscura de su personaje.', 4),
(33, 'Dyspo', 'https://cdn.atomix.vg/wp-content/uploads/2018/01/dyspo-dragon-ball-super.jpg', 'Veloz guerrero del Universo 11', 8, 'Dyspo es otro miembro destacado del equipo del Universo 11 en Dragon Ball Super durante el arco del Torneo de la Fuerza. Es un miembro de los Pride Troopers, una organización de justicieros dedicada a mantener la paz en su universo.\r\n\r\nDyspo es conocido por su velocidad excepcional y su habilidad en combate, lo que lo convierte en uno de los luchadores más rápidos del Torneo de la Fuerza. Su estilo de lucha se centra en aprovechar al máximo su velocidad para superar a sus oponentes con movimientos rápidos y precisos.\r\n\r\nDurante el torneo, Dyspo se enfrenta principalmente al Androide 17 del Universo 7, protagonizando una serie de emocionantes batallas que ponen a prueba su destreza y habilidades en combate. A pesar de su velocidad y astucia, Dyspo finalmente es derrotado por el Androide 17 en una batalla intensa y estratégica.\r\n\r\nAdemás de su habilidad en combate, Dyspo también muestra una lealtad inquebrantable hacia su universo y sus compañeros de equipo. Está dispuesto a arriesgarlo todo para proteger la paz y la supervivencia del Universo 11 durante el Torneo de la Fuerza.', 4),
(34, 'Kahseral', 'https://i.pinimg.com/564x/d3/00/17/d30017d9227e1601cbf8ebc136da1d43.jpg', 'General de la Tropa del Orgullo del Universo 11', 2, 'Kahseral es el líder de los Pride Troopers, un grupo de justicieros del Universo 11 en Dragon Ball Super. Es conocido por su firme compromiso con la justicia y su habilidad en el combate. Como líder, Kahseral guía a sus compañeros con determinación y coraje, mostrando un gran sentido del deber y la responsabilidad.\r\n\r\nDurante el Torneo de la Fuerza, Kahseral representa a su universo como uno de los principales guerreros en la competencia interuniversal. Su estilo de lucha se basa en la disciplina militar y el trabajo en equipo, lo que lo convierte en un oponente formidable en el campo de batalla. A pesar de su valentía y habilidad, Kahseral es finalmente derrotado por los Guerreros Z del Universo 7.', 4),
(35, 'Kunshi', 'https://peru21.pe/resizer/_8h9iwVplt6hCw2FgGeutZswHD4=/980x0/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/K4K235HUCRDM3OCJX4LVPWXATE.png', 'Miembro de las tropas del Orgullo', 11, 'Kunshi es un personaje del Universo 11 que participa en el Torneo de la Fuerza en Dragon Ball Super. Es un miembro de los Pride Troopers, liderados por Kahseral.\r\n\r\nAunque Kunshi no tiene un papel principal en el torneo, muestra ser un luchador competente y leal a su equipo. Es parte de los Pride Troopers, lo que indica que ha sido seleccionado por su habilidad en el combate y su dedicación a la justicia.\r\n\r\nDurante el torneo, Kunshi lucha con determinación para defender a su universo y apoyar a sus compañeros de equipo. Aunque no se destacan sus habilidades específicas en combate, su presencia en el Torneo de la Fuerza demuestra la diversidad y el compromiso de los guerreros del Universo 11.', 4),
(36, 'Tupper', 'https://static1.srcdn.com/wordpress/wp-content/uploads/2020/05/Dragon-Ball-Super-Universe-11-Tupper.jpg?q=50&fit=crop&w=1500&dpr=1.5', 'Miembro de las tropas del Orgullo', 12, 'Tupper es otro miembro de los Pride Troopers del Universo 11 que participa en el Torneo de la Fuerza en Dragon Ball Super. Al igual que Kunshi, Tupper es un guerrero leal y dedicado a la justicia, seleccionado por su habilidad en el combate y su compromiso con la protección de su universo.\r\n\r\nAunque no tiene un papel principal en el torneo, Tupper demuestra ser un luchador competente y valiente en la batalla. Es parte de los Pride Troopers, lo que indica que ha sido entrenado para enfrentarse a todo tipo de amenazas y defender la paz en su universo.\r\n\r\nDurante el Torneo de la Fuerza, Tupper lucha con determinación junto a sus compañeros de equipo para proteger a su universo y asegurar su supervivencia. Aunque no se destacan sus habilidades específicas en combate, su presencia en el torneo subraya la importancia del trabajo en equipo y la unidad dentro de los Pride Troopers y del Universo 11 en general.', 4);
INSERT INTO `tbl_personaje` (`ID_PERSONAJE`, `NOMBRE_PERSONAJE`, `IMAGEN`, `DESCRIPCION`, `ID_RAZA`, `BIOGRAFIA`, `ID_UNIVERSO`) VALUES
(37, 'Zoire', 'https://i.pinimg.com/736x/d1/c8/78/d1c8787a9f3eb290eaa79051775eec7d.jpg', 'Miembro de las tropas del Orgullo', 13, 'Zoire es uno de los miembros del equipo del Universo 11 que participó en el Torneo del Poder, también perteneciente a las Pride Troopers.\r\nAunque Zoiray no tiene un papel destacado en el torneo y no se exploran en profundidad sus habilidades de combate, se le muestra como un guerrero dedicado y leal a su equipo. Como miembro de los Pride Troopers, comparte el compromiso del grupo con la justicia y la protección de su universo.\r\n\r\nDurante el Torneo de la Fuerza, Zoiray lucha con determinación junto a sus compañeros de equipo para defender a su universo y asegurar su supervivencia. Aunque su papel en el torneo es menor, su presencia resalta la importancia del trabajo en equipo y la unidad dentro de los Pride Troopers y del Universo 11 en general.', 4),
(38, 'Kettle', 'https://pm1.narvii.com/6755/a1a105a543f2160f7e3e2108f6d91f6740f01167v2_hq.jpg', 'Miembro de las tropas del Orgullo', 11, 'Kettle es otro miembro de los Pride Troopers del Universo 11 en Dragon Ball Super. Al igual que otros miembros del equipo, Kettle es un defensor dedicado de la justicia y lucha en el Torneo de la Fuerza para proteger a su universo.\r\n\r\nAunque Kettle no tiene un papel destacado en el torneo y sus habilidades de combate no se exploran en detalle, se le muestra como un guerrero valiente y comprometido con su equipo. Como miembro de los Pride Troopers, comparte el mismo objetivo que sus compañeros: defender la paz y la justicia en el Universo 11.\r\n\r\nDurante el Torneo de la Fuerza, Kettle lucha junto a sus compañeros de equipo contra los guerreros de otros universos, demostrando su lealtad y determinación en la batalla. Aunque su participación en el torneo es menor, su presencia resalta la importancia del trabajo en equipo y la unidad dentro de los Pride Troopers y del Universo 11 en general.', 4),
(39, 'Vueon', 'https://pm1.aminoapps.com/6543/15685905919b205e8cde96dfb5fa84e35ad5bec3_00.jpg', 'Miembro de las tropas del Orgullo', 11, 'Vueon es un miembro de las Tropas del Orgullo del Universo 11 en Dragon Ball Super. Aunque no se le da mucho protagonismo en la serie, se le muestra como un guerrero dedicado y leal a su equipo.\r\n\r\nDurante el Torneo de la Fuerza, Vueon lucha junto a sus compañeros de equipo para proteger a su universo y asegurar su supervivencia. Si bien sus habilidades específicas de combate no se exploran en detalle en la serie, se le muestra como un luchador competente y valiente en la batalla.\r\n\r\nVueon es parte de las Tropas del Orgullo, un equipo de élite seleccionado para representar al Universo 11 en el torneo interuniversal. Aunque su papel en el torneo puede ser menor en comparación con otros personajes, su presencia resalta la importancia del trabajo en equipo y la unidad dentro de las Tropas del Orgullo y del Universo 11 en general.', 4),
(40, 'Cocotte', 'https://pm1.aminoapps.com/6736/08a2349b2e6d3b9f4d7f9e6bf55f3ad86a2a65c2v2_hq.jpg', 'Miembro de las tropas del Orgullo', 12, 'Cocotte es otro miembro de las Tropas del Orgullo del Universo 11 en Dragon Ball Super. Al igual que otros miembros del equipo, Cocotte es un defensor dedicado de la justicia y lucha en el Torneo de la Fuerza para proteger a su universo.\r\n\r\nCocotte es reconocida por su habilidad en combate y por su técnica especial, que involucra el uso de una barrera defensiva para protegerse a sí misma y a sus aliados. Durante el torneo, demuestra ser una oponente formidable, capaz de enfrentarse a guerreros poderosos con astucia y determinación.\r\n\r\nAunque su papel en el torneo es menor en comparación con algunos de los otros participantes, Cocotte muestra un fuerte sentido del deber y un compromiso con la protección de su universo. ', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_poder`
--

CREATE TABLE `tbl_poder` (
  `ID_PODER` int(11) NOT NULL,
  `NOMBRE_PODER` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_poder`
--

INSERT INTO `tbl_poder` (`ID_PODER`, `NOMBRE_PODER`) VALUES
(1, 'Kamehameha'),
(2, 'Final Flash'),
(3, 'Kienzan'),
(4, 'Mazenko'),
(5, 'Makankosappo'),
(6, 'Genkidama'),
(7, 'Taiyoken'),
(8, 'Mafuba'),
(9, 'Genkidama'),
(10, 'Big Bang Attack'),
(11, 'Dodonpa'),
(12, 'KKikōhō'),
(13, 'Kaiō Ken'),
(14, 'Supernova'),
(15, 'Dēsu Bōru'),
(16, 'Yubi de no Kōsen'),
(17, 'Ki Bakuhatsu'),
(18, 'Desu Bīmu'),
(19, 'Jinzoningen Barrier'),
(20, 'Cho Enerugi Ha'),
(21, 'Enerugi Kyushu'),
(22, 'Hiko'),
(23, 'Jibaku'),
(24, 'Bakuhatsu Ki Ha'),
(25, 'Hakai Ken'),
(26, 'Kiai'),
(27, 'Zanzoken'),
(28, 'Tokitobashi'),
(29, 'Tokitoki no Hakai'),
(30, 'Kikōha'),
(31, 'Renzo Kikōha'),
(32, 'Gigantikku Burasuto'),
(33, 'Sōsa Hakai'),
(34, 'Aisu Bīmu'),
(35, 'Enerugī Nami'),
(36, 'Garikkukyanon'),
(37, 'Supin Atakku'),
(38, 'Namekku-jin Fyūjon'),
(39, 'Demon Furasshu'),
(40, 'Shainingu Burasutā'),
(41, 'Jaiantsuka'),
(42, 'Poizun Fōgu'),
(43, 'Poizun Nīdoru'),
(44, 'Jasutisu Kurasshā'),
(45, 'Pawā Inpakuto'),
(46, 'Jasutisu Furasshu'),
(47, 'Rapiddo'),
(48, 'Jasutisu Kikku'),
(49, 'Iryūjon Fisuto'),
(50, 'Āsāku Sūpu'),
(51, 'Desconocidos'),
(52, 'Wolfgang Pressure'),
(53, 'Toraianguru Denjāzu Bīmu'),
(54, 'Wolfgang Penetrator'),
(55, 'Aisu Ransu'),
(56, 'Daeki yōgan');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_poderes_personaje`
--

CREATE TABLE `tbl_poderes_personaje` (
  `ID_PODERES_PERSONAJE` int(11) NOT NULL,
  `ID_PERSONAJE` int(11) NOT NULL,
  `ID_PODER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_poderes_personaje`
--

INSERT INTO `tbl_poderes_personaje` (`ID_PODERES_PERSONAJE`, `ID_PERSONAJE`, `ID_PODER`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 6),
(4, 1, 8),
(5, 1, 13),
(6, 2, 2),
(7, 2, 10),
(8, 3, 1),
(9, 3, 4),
(10, 3, 7),
(11, 4, 5),
(12, 5, 14),
(13, 5, 15),
(14, 5, 16),
(15, 5, 17),
(16, 5, 18),
(17, 6, 19),
(18, 6, 20),
(19, 6, 21),
(20, 6, 22),
(21, 6, 23),
(22, 7, 19),
(23, 7, 24),
(24, 7, 22),
(25, 7, 25),
(26, 7, 26),
(27, 8, 1),
(28, 8, 3),
(29, 8, 7),
(30, 9, 1),
(31, 9, 8),
(32, 9, 26),
(33, 9, 27),
(34, 10, 7),
(35, 10, 11),
(36, 10, 12),
(37, 11, 27),
(38, 12, 30),
(39, 13, 32),
(40, 14, 33),
(41, 15, 34),
(42, 16, 37),
(43, 17, 56),
(44, 18, 51),
(45, 19, 38),
(46, 20, 39),
(47, 21, 40),
(48, 22, 41),
(49, 23, 42),
(50, 24, 43),
(51, 25, 44),
(52, 26, 51),
(53, 27, 51),
(54, 28, 51),
(55, 29, 1),
(56, 30, 51),
(57, 31, 45),
(58, 32, 46),
(59, 33, 47),
(60, 34, 48),
(61, 35, 49),
(62, 36, 50),
(63, 37, 51),
(64, 38, 51),
(65, 39, 51),
(66, 40, 51),
(67, 11, 28),
(68, 11, 29),
(69, 15, 15),
(70, 21, 52),
(71, 21, 53),
(72, 22, 53),
(73, 22, 54),
(74, 23, 53),
(75, 28, 55);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_raza`
--

CREATE TABLE `tbl_raza` (
  `ID_RAZA` int(11) NOT NULL,
  `NOMBRE_RAZA` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_raza`
--

INSERT INTO `tbl_raza` (`ID_RAZA`, `NOMBRE_RAZA`) VALUES
(1, 'Saiyajin'),
(2, 'Humano'),
(3, 'Androide'),
(4, 'Nameks'),
(5, 'Majin'),
(6, 'Changlongs'),
(7, 'Propia'),
(8, 'Conejo Antropomorfo'),
(9, 'Lobo Antropomorfo'),
(10, 'Oso Antropomorfo'),
(11, 'Especie Antropomorfa'),
(12, 'Humanoide'),
(13, 'Desconocida');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_universos`
--

CREATE TABLE `tbl_universos` (
  `ID_UNIVERSO` int(11) NOT NULL,
  `NOMBRE_UNIVERSO` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tbl_universos`
--

INSERT INTO `tbl_universos` (`ID_UNIVERSO`, `NOMBRE_UNIVERSO`) VALUES
(1, 'Universo 6'),
(2, 'Universo 7'),
(3, 'Universo 9'),
(4, 'Universo 11');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_personaje`
--
ALTER TABLE `tbl_personaje`
  ADD PRIMARY KEY (`ID_PERSONAJE`),
  ADD KEY `ID_UNIVERSO` (`ID_UNIVERSO`),
  ADD KEY `ID_RAZA` (`ID_RAZA`);

--
-- Indices de la tabla `tbl_poder`
--
ALTER TABLE `tbl_poder`
  ADD PRIMARY KEY (`ID_PODER`);

--
-- Indices de la tabla `tbl_poderes_personaje`
--
ALTER TABLE `tbl_poderes_personaje`
  ADD PRIMARY KEY (`ID_PODERES_PERSONAJE`),
  ADD KEY `ID_PERSONAJE` (`ID_PERSONAJE`),
  ADD KEY `ID_PODER` (`ID_PODER`);

--
-- Indices de la tabla `tbl_raza`
--
ALTER TABLE `tbl_raza`
  ADD PRIMARY KEY (`ID_RAZA`);

--
-- Indices de la tabla `tbl_universos`
--
ALTER TABLE `tbl_universos`
  ADD PRIMARY KEY (`ID_UNIVERSO`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_personaje`
--
ALTER TABLE `tbl_personaje`
  MODIFY `ID_PERSONAJE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `tbl_poder`
--
ALTER TABLE `tbl_poder`
  MODIFY `ID_PODER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `tbl_poderes_personaje`
--
ALTER TABLE `tbl_poderes_personaje`
  MODIFY `ID_PODERES_PERSONAJE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `tbl_raza`
--
ALTER TABLE `tbl_raza`
  MODIFY `ID_RAZA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tbl_universos`
--
ALTER TABLE `tbl_universos`
  MODIFY `ID_UNIVERSO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_personaje`
--
ALTER TABLE `tbl_personaje`
  ADD CONSTRAINT `tbl_personaje_ibfk_1` FOREIGN KEY (`ID_UNIVERSO`) REFERENCES `tbl_universos` (`ID_UNIVERSO`),
  ADD CONSTRAINT `tbl_personaje_ibfk_2` FOREIGN KEY (`ID_RAZA`) REFERENCES `tbl_raza` (`ID_RAZA`);

--
-- Filtros para la tabla `tbl_poderes_personaje`
--
ALTER TABLE `tbl_poderes_personaje`
  ADD CONSTRAINT `tbl_poderes_personaje_ibfk_1` FOREIGN KEY (`ID_PERSONAJE`) REFERENCES `tbl_personaje` (`ID_PERSONAJE`),
  ADD CONSTRAINT `tbl_poderes_personaje_ibfk_2` FOREIGN KEY (`ID_PODER`) REFERENCES `tbl_poder` (`ID_PODER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
