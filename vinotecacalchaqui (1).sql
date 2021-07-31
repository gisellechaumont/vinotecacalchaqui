-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-07-2021 a las 05:37:21
-- Versión del servidor: 10.4.19-MariaDB
-- Versión de PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `vinotecacalchaqui`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'Blend'),
(2, 'Malbec'),
(3, 'Rosado'),
(4, 'Cabernet Sauvignon'),
(5, 'Torrontés'),
(6, 'Syrah'),
(7, 'Tannat'),
(8, 'Reserva'),
(9, 'Merlot');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `num_factura` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id_usuario` int(30) NOT NULL,
  `id_producto` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `bodega` varchar(30) NOT NULL,
  `imagen` varchar(30) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `precio` decimal(5,0) NOT NULL,
  `stock` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `bodega`, `imagen`, `id_categoria`, `descripcion`, `precio`, `stock`) VALUES
(1, 'Piloto de Prueba', 'Bodega Chaumont - Guillen', 'pilotodepruebablend.jpg', 1, 'Cosecha 2020: 55 % Malbec – 30% Cabernet Sauvignon – 15% Tannat. Cada varietal se elabora por separado para conservar su tipicidad.\r\nNegro con aristas violetas, de buena intensidad, con destellos brillante, profundo. Intensos aromas a violetas, frutado, fresco, leves notas especiadas con un dejo a chocolate. Entrada suave, medio de boca amplio con taninos firmes y dulces. Final fresco, frutado. Largo con notas licorosas.', '1500', 30),
(2, 'Amalaya Gran Corte', 'Bodega Amalaya', 'amalayablend.jpg', 1, 'Es un vino es una base de Malbec con aportes de Cabernet Franc y Tannat. Su elaboración consta de cosecha manual, selección de racimos y granos y fermentación en pequeñas vasijas de cemento para ser criado luego durante 12 meses en barricas de Roble Americano y Francés.', '920', 12),
(3, 'Amalaya Malbec', 'Bodega Amalaya', 'amalayamalbec.jpg', 2, 'Esta elaborado con uvas de Fincas Las Mercedes de suelo arenoso y muy pobre en materia organica. Cosecha mecanica y crianza en barricas de un 25% del vino con aportes de Tannat y Petit Verdot.', '720', 20),
(4, 'Amalaya Rosado', 'Bodega Amalaya', 'amalayarosado.jpg', 3, 'Las uvas provienen de los Valles Calchaquíes de viñedos plantados a 1800 metros de altura sobre el nivel del mar en el noroeste de Argentina. La región se destaca por ser una de las más altas del mundo y se caracteriza además por su clima seco con lluvias no mayores a 150 mm anuales, con significativa amplitud térmica; suelos pobres, rocosos y arenosos.', '620', 14),
(5, 'Cafayate Gran Linaje', 'Bodega Etchart', 'cafayatecabernet.jpg', 4, 'Este vino tiene un color rojo granate con matices negruzcos de gran intensidad, aroma en nariz especiada, de frutas rojas y cassis con delicadas y características notas de pimiento, propias del terruño de origen. En boca es de gran estructura y volumen con taninos redondos, dulces y maduros, resultado de la combinación con Tannat, una variedad que alcanza su plena y singular expresión en el Valle de Cafayate.\r\n10 meses en barrica de roble fránces.\r\n\r\n', '672', 12),
(6, 'Cafayate Reserva Cabernet', 'Bodega Etchart', 'cafayatereserva.jpg', 8, 'De color rojo violáceo intenso, con aromas de ciruela madura, uvas pasas, especias dulces y una nota tostada del roble. Paladar frutal, equilibrado y de gran cuerpo, con taninos dulces y delicados. Final largo con dejos a vainilla.', '400', 14),
(7, 'Cafayate Syrah', 'Bodega Etchart', 'cafayatesyrah.jpg', 6, 'De un profundo color rojo con matices violáceos. En nariz es intenso con descriptores característicos de la variedad (violetas y frutos rojos frescos), vainilla (aportada por su crianza en roble) y delicadas notas especiadas, expresión de la tipicidad del Valle de Cafayate. Estructurado, de buen cuerpo y largo final en boca.', '250', 30),
(8, 'Cafayate Torrontes', 'Bodega Etchart', 'cafayatetorrontes.jpg', 5, 'Cafayate Torrontés es un Blanco de gran tipicidad, con aromas a uvas maduras, durazno, lima y flores blancas. En el paladar es fresco, frutado y directo, agradable y fácil de beber.', '300', 14),
(9, 'Cola de Zorro', 'Bodega Vizcacha Wines', 'coladezorromalbec.jpg', 2, 'Cosecha manual en pequeñas cajas de 18 kg seleccionando en la planta solo los racimos más sanos. De color intenso con reflejos violáceos, en nariz se destacan aromas de frutas rojas y florales típicos de la variedad con un ligero toque especiado. En boca es amplio, de acidez equilibrada y final persistente.', '1890', 10),
(10, 'Ekeko Malbec - Merlot', 'Bodega Miraluna', 'ekekoblend.jpg', 1, 'Vino de color intenso y aromas agradables como ciruelas maduras y arándanos así como especias frescas como el coriandro molido. Con notas a flores de hibiscus y grafito. En boca es frutado, con taninos suaves y muy balanceado, fresco, con texturas minerales y buena persistencia.', '1300', 5),
(11, 'El Viticultor Malbec', 'Bodega El Viticultor', 'elviticultormalbec.jpg', 2, 'Notas de cata elegancia entre las notas de altura y el carácter Calchaquí. Fruta negra, especias y un toque herbáceo con paso firme y equilibrado en boca. Sutil presencia del roble que redondea los taninos e invita otra copa.', '1250', 12),
(12, 'El Esteco Blanc de Noir', 'Bodega El Esteco', 'estecoblancdenoir.jpg', 3, 'De vista: rosé salmón claro - notas de piel de cebolla - brillante. Su aroma: frutado delicado - joven - mediana intensidad. Su sabor: muy fresco con buena acidez - frutado con notas especiadas', '1300', 12),
(13, 'El Esteco Blend de Extremos', 'Bodega El Esteco', 'estecoblend.jpg', 1, 'La combinación de sus uvas provenientes de nuestras selectas fincas del Valle de Cafayate (Salta) y Chañar Punco (Catamarca), nos otorga un vino potente y de gran personalidad. Tinto profundo de tonalidad negruzca y aromática penetrante de trazos balsámicos y herbales con las especias típicas de los vinos de altura. Paladar compacto pero sabroso con buen jugo en centro de boca. Final brioso y expresivo.', '980', 12),
(14, 'El Esteco Cabernet', 'Bodega El Esteco', 'estecocabernet.jpg', 4, 'En vista se anuncia una muy interesante estructura y madurez. En aroma tiene un concentrado perfil aromático que se centra en frutos rojos bien maduros. Muestra, además, notas de pasas de uva y leves hierbas frescas, combinadas con finas notas de roble y café, aportado por su añejamiento en barricas. Finalmente, en sabor presenta taninos maduros y vibrantes en boca que, junto con una sensación de frutas negras, llevan a un prolongado y elegante final.', '1280', 12),
(15, 'El Esteco Old Vines 1946', 'Bodega El Esteco', 'estecomalbec.jpg', 2, 'El Esteco Old Vines es un homenaje a la vida y trayectoria de algunas de nuestras fincas con mas de 50 años de antigüedad. Viñedos que viven en armonía con el terroir y precisan la mínima intervención del hombre para regalarnos vinos excepcionales.', '1700', 5),
(16, 'El Esteco Tardío Torrontés', 'Bodega El Esteco', 'estecotorrontes.jpg', 5, 'En vista tiene un amarillo intenso y marcado. Brillante. Su aroma recuerda fielmente los aromas típicos de la uva Torrontés, florales, uva, pasas de uva, miel y con una buena combinación de las notas aportadas por el roble. Su sabor es complejo, suave, aterciopelado. Licoroso. Final dulce y muy agradable.', '1200', 20),
(17, 'Gata Flora Malbec', 'Bodega Vasija Secreta', 'gatafloramalbec.jpg', 2, 'Tiene un color rojo rubí intenso con destellos violáceos brillante y vivaz.En Nariz encontramos aromas a frutos rojos como la ciruela, guinda, cerezas, acompañado con toques de vainilla y tabaco característico del paso por barricas de roble. En boca es redondo, amable, taninos maduros con una buena persistencia final.', '620', 10),
(18, 'Gata Flora Torrontes', 'Bodega Vasija Secreta', 'gatafloratorrontes.jpg', 5, 'Color brillante y vivaz con tonalidades verdosas. Organolépticamente es intenso con notas a frutos tropicales con un segundo plano a notas florales como el jazmín y la rosa. En boca es de entrada dulce, se presenta fresco y ligero con buena persistencia, con una acidez sostenida y equilibrada. ', '736', 12),
(19, 'Gata Flora Tannat', 'Bodega Vasija Secreta', 'gatafloratannat.jpg', 7, 'Tiene color rojo rubi intenso con fondo negro. En Nariz encontramos aromas a frutos rojos como la mora, ciruela, pasas de uva y guinda, acompañado con toques de vainilla, tabaco y cuero característico del paso por barricas de roble. En boca es voluminoso, con taninos bien marcados pero maduros, amables, con muy buena persistencia final.', '926', 10),
(20, 'Miraluna Reserva Malbec', 'Bodega Miraluna', 'miralunamalbec.jpg', 8, 'Color rojo rubí, halos violáceos con centro de copa negro profundo. Nariz incisiva, en primer plano el aroma de madera nueva se hace presente, marcado, con perfil de tostado suave y recuerdo de regaliz bien amalgamada con sus notas propias de la variedad de frutos rojos que recuerdan a ciruelas y frambuesas. De gran complejidad. En boca es intenso, con taninos bien marcados, algo rugosos que persisten en el paladar. ', '2500', 5),
(21, 'Miraluna Merlot', 'Bodega Miraluna', 'miralunamerlot.jpg', 9, 'Vino de color rubí y de aromas delicados. Frutas maduras como frambuesas y moras, se combinan con una paleta de aromática fresca de eneldo y tomillo fresco y especias como el anís. En boca es frutado, aterciopelado y muy balanceado. Con notas sutiles como las de crianza de cedro y coco que le aportan calidez. Destacado por su elegancia y prolongada persistencia.', '2660', 10),
(22, 'Nanni Cabernet Sauvignon', 'Bodega Nanni', 'nannicabernet.jpg', 4, 'Las condiciones del suelo, la baja humedad a gran altura y la exposición solar de los viñedos de Bodegas Nanni, hacen que el Cabernet Sauvignon posean una personalidad particular. El aroma a pimienta negra, característico de la variedad, se combina con aromas a frutas secas, cassis y nuez moscada. Es un vino robusto, de gran estructura y taninos intensos y redondos, buen acompañante de carnes rojas y quesos de pasta dura.', '635', 30),
(23, 'Nanni Torrontés', 'Bodega Nanni', 'nannitorrontes.jpg', 5, 'El último suspiro de nuestra finca antes de sumergirse en su descanso invernal, queda cautivo en este vino de cosecha tardía. Este se elabora con uvas que dejamos sobremadurar en los viñedos. De color amarillo con tonos dorados, su nariz recuerda flores blancas, damascos y miel. En boca se muestra equilibrado, complejo y elegante.', '672', 30),
(24, 'Piatelli Reserva Malbec+Tannat', 'Bodega Piatelli', 'patelliblend.jpg', 8, 'Producido a partir de uvas cultivadas a gran altura que están repletas de sabor, el Cafayate Reserve Malbec encorpado y frutal ramo deleitará los sentidos.', '1100', 10),
(25, 'Piatelli Reserva Cabernet', 'Bodega Piatelli', 'patellicabernet.jpg', 8, 'De color púrpura intenso con aromas brillantes de frutas rojas y especias. Su cuerpo es de cuerpo entero y su boca se rellena de rojo con taninos suaves, lo que lleva a un acabado largo y elegante.', '800', 12),
(26, 'Siete Vacas Malbec', 'Bodega Las Arcas de Tolombón', 'sietevacasmalbec.jpg', 2, 'De color rojo rubí intenso con bordes violáceos. En nariz es muy\r\nfrutado típico de la región, con notas de ciruelas, pasas de uva y\r\npimienta. En boca es voluminoso, de estructura intensa, con taninos\r\nsuaves y amables, final equilibrado y armónico. Servir entre los 16ºC\r\ny 18°C. Acompañar con carnes rojas, pastas con salsas, comidas\r\nregionales, asado, carnes en general y postres de chocolate.', '800', 12),
(27, 'Sikuri Syrah', 'Bodega Fernando Dupon', 'sikurisyrah.jpg', 6, 'Origen: Maimara, Jujuy, Argentina\r\nCosechado de forma manual en cajas de 12-14 kgs. Elaboración tradicional. Vino de gran personalidad, de profundo color casi negro con aromas intensos de pasas, ciruelas y especias que explotan en la copa. De gran cuerpo, suculento y vigoroso, con una notable y equilibrada acidez propia de la gran altura.', '2140', 23),
(28, 'Tukma Rosado', 'Bodega Tukma', 'tukmarosado.jpg', 3, 'Rosé\r\nNuestro Rosé es elaborado con uvas de altura provenientes de nuestro viñedo en el Valle de Tolombón, provincia de Salta, a 1700 metros sobre el nivel del mar.\r\nVarietal: Malbec, Cabernet Sauvignon.\r\nNotas de cata: Vino limpio y brillante, atractivo a la vista, de color rojo cereza con ligeros reflejos rubíes. En su franca intensidad aromática, se destacan aromas sutiles a fruta roja madura, fresas y especias. En la boca es suave, y sedoso con armónico y fresco final.', '600', 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(11) NOT NULL,
  `dni` int(8) NOT NULL,
  `calle` varchar(30) NOT NULL,
  `altura` varchar(10) NOT NULL,
  `piso` varchar(5) NOT NULL,
  `departamento` varchar(10) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `provincia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `password`, `dni`, `calle`, `altura`, `piso`, `departamento`, `ciudad`, `provincia`) VALUES
(1, 'Emile', 'Chaumont', 'emile@gmail.com', '', 432432, 'ruta 40 ', '0', '0', '-', '', 'salta'),
(2, 'Valentina', 'Chaumont Mohr', 'vale@gmail.com', '1234', 2142114, 'pasco  ', '258', '-', '-', 'san martin ', 'mendoza'),
(5, 'Matias ', 'Gomez', 'matias@gmail.com', '1234', 37241512, 'Barrio Mebna ', 'MB C23', '-', '-', 'san martin ', 'mendoza'),
(6, 'Giselle', 'Chaumont Mohr', 'giselle@gmail.com', '1234', 39241016, 'pasco  ', '258', '-', '-', 'san martin ', 'mendoza'),
(7, 'Betty', 'Mohr', 'betty@gmail.com', '1234', 0, '', '', '', '', '', ''),
(8, 'Luis', 'Chaumont', 'luis@gmail.com', '1234', 0, 'pasco  ', '258', '-', '-', 'san martin ', 'mendoza');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `num_factura` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`num_factura`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id_usuario`,`id_producto`),
  ADD KEY `id_producto` (`id_producto`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`num_factura`),
  ADD KEY `num_factura` (`fecha`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `num_factura` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`num_factura`) REFERENCES `ventas` (`num_factura`);

--
-- Filtros para la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD CONSTRAINT `favoritos_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `favoritos_ibfk_2` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`);

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
