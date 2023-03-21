-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 21. 15:42
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `farm`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `termekek`
--

CREATE TABLE `termekek` (
  `id` smallint(6) NOT NULL,
  `type` varchar(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `price` smallint(50) NOT NULL,
  `valid` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- A tábla adatainak kiíratása `termekek`
--

INSERT INTO `termekek` (`id`, `type`, `name`, `description`, `img`, `price`, `valid`) VALUES
(1, 'Zoldseg', 'uborka', 'Az uborka vagy népiesen ugorka (Cucumis sativus) a tökvirágúak (Cucurbitales) rendjébe, a tökfélék (Cucurbitaceae) családjába tartozó növényfaj. Ugyanabba a nemzetségbe tartozik, mint a sárgadinnye. Számos nemesített változata létezik. Termését fogyasztják.', 'uborka', 699, 1),
(2, 'Zoldseg', 'paradicsom', 'A paradicsom (Solanum lycopersicum) a burgonyafélék családjába tartozó növény, Dél- és Közép-Amerikában őshonos. Egyaránt jelenti a növényt és annak bogyótermését, amelyet Magyarországon elsősorban zöldségként használunk fel.', 'paradicsom', 270, 1),
(3, 'Zoldseg', 'Jalapeno', 'Virága fehér színű, pettyek nélkül. Egy tipikus egyed 25–30 paprikát terem, és folyamatosan szüretelhető. A szezon vége felé a paprikák pirosodni kezdenek. A piacon általában a zöld jalapeño paprikát tekintik jobbnak, a pirosat gyengébbnek.', 'jalapeno', 890, 1),
(4, 'Zoldseg', 'gyömbér', 'A gyömbér az egyik legnagyszerűbb gyógyító hatású fűszernövény. Lássuk, milyen pozitív egészségügyi hatásai lehetnek. A gyömbérben található hatóanyagoknak köszönhetően ez a gyógynövény nagyszerű hányingerellenes, görcsoldó, gyulladáscsökkentő, köhögéscsillapító, valamint mikrobaellenes hatásokkal is bír.', 'gyomber', 250, 1),
(5, 'Gyumolcs', 'eper', 'Jellemzése. Az epret nagy földrajzi alkalmazkodóképessége és elterjedése miatt szinte a világ minden országában termesztik. Évelő, tőrózsát fejlesztő növény, az indanövényről úgy nevezett frigó palántákkal szaporított egyedek járulékos gyökérrendszert fejlesztenek, melyek sekélyen helyezkednek el a talajban.', 'eper', 1990, 1),
(6, 'Gyumolcs', 'körte', 'A körte az Óvilág partvidéki és enyhe éghajlatú területein honos, Nyugat-Európától Észak-Afrikáig és Ázsiáig bezárólag. Közepes méretű fák, 10-17 méter magasra nőnek, gyakran keskeny, magas koronával, némely faja pedig cserje méretű.', 'korte', 700, 1);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `termekek`
--
ALTER TABLE `termekek`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `termekek`
--
ALTER TABLE `termekek`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
