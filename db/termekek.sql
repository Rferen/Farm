-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Már 28. 20:28
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
(6, 'Gyumolcs', 'körte', 'A körte az Óvilág partvidéki és enyhe éghajlatú területein honos, Nyugat-Európától Észak-Afrikáig és Ázsiáig bezárólag. Közepes méretű fák, 10-17 méter magasra nőnek, gyakran keskeny, magas koronával, némely faja pedig cserje méretű.', 'korte', 700, 1),
(7, 'Gyumolcs', 'Áfonya', 'Vaccinium Myrttillus L. A fekete áfonya alacsony cserje, mely átlag 30 cm legfeljebb 60 centiméter magasra nő. Szára felálló vagy a földről felemelkedő, sűrűn elágazó, úgy hogy az áfonyabokrok sűrűn beborítják a földet.', 'afonya', 1200, 1),
(8, 'Gyumolcs', 'Málna', 'Magyarországon őshonos, föld alatti tarackokat hajtó, kb. 2 m magas félcserje. Levelei 3-5, ritkán 7 tagúak, felül simák, alul gyapjasak, szélük fűrészfogas. Májustól augusztusig virágzik.', 'malna', 1000, 1),
(9, 'Husok', 'Marha bélszín', 'A marhabélszín pecsenyehús, más néven vesepecsenye, a hátszín és a fartő közti hosszúkás rész. Ez a marha legértékesebb része. A bélszín középső részét szeletelve steaket süthetünk. Magas hőfokon sütve viszonylag rövid idő alatt megsül.', 'marha_belszin', 18700, 1),
(10, 'Husok', 'Szarvas steak', 'A szarvascomb steak, grill és hirtelen sütéshez ideális, nemes húsfajta. A hús zsírszegényebb, mint a szarvasmarháé, fehérje tartalma magasabb, íze pedig nem összehasonlítható.', 'szarvas_steak', 16000, 1),
(11, 'Husok', 'Wagyu', 'A steakértők nagy többsége szerint a világ egyik legjobb steak alapanyaga a wagyu marha, amelynek egyedien különleges szövetszerkezete, egyenletesen rétegelt zsírtartalma, különleges semmivel sem összehasonlítható ízvilága nem alaptalanul emelte ezt a hústípust a steak alapanyagok képzeletbeli trónjára.', 'wagyu', 32000, 1),
(12, 'Kesztermekek', 'Barack lekvár', 'Saját készítésű barack lekvárunk kiváló minőségű, érett barackokból készül, gondosan kiválogatva és kézzel dolgozva. Az egyedi ízvilág érdekében a lekvár készítése során csak természetes hozzávalókat használunk. Az üveg kis mérete tökéletes, ha egy kis adag édességre vágysz vagy szívesen ajándékoznál meg valakit ezzel a finom lekvárral.\r\n', 'barack_lekvar', 1350, 1),
(13, 'Kesztermekek', 'Eper lekvár', 'Saját eper lekvárunk egy egyedülállóan finom édesség, amelyet kézzel készítünk, friss, érett eperből és kiváló minőségű hozzávalókból. Az eper lekvárunk kellemes édessége és friss, gyümölcsös íze teszi tökéletessé a reggelit vagy az uzsonnát. Az üvegek gondosan sterilizáltak és zárva vannak, hogy a lekvár hosszabb ideig friss maradjon. ', 'eper_lekvar', 1850, 1),
(14, 'Kesztermekek', 'Juhar szirup', 'A juharszirup 100%-ban természetes, íze semmihez sem hasonlítható, egyedi és karakteres, éppen ezért szeretjük annyira. Enyhén karamellizált íz, ami nagymértékben függ a juharszirup színétől: sötétebb vagy világosabb. A juharszirup éppen a karakteres íze miatt az egyik legkedveltebb természetes ízesítőszer.', 'juhar_szirup', 2300, 1),
(15, 'Kesztermekek', 'Méz', 'Az akácméz harmonikus, kellemesen lágy ízű, akácvirág illatú, édes és kevésbé savas méz. Színe kristálytiszta, a csaknem színtelentől az enyhén sárgás, egyes évjáratokban zöldes árnyalatig terjedhet. Mellékíz nélküli aromája teszi egyedivé. A legtöbb méznél édesebb, nagyon jól lehet vele ételt, illetve italt édesíteni.', 'mez', 1600, 1),
(16, 'Kesztermekek', 'Propolisz cseppek', 'A propolisz , egy méltán híres csodaszer, körülbelül 200 féle anyag jótékony keveréke. Főbb összetevői: balzsamok (50-60%), viaszok (10-30%), gyanták, illóolajok, virágpor, vitaminok, nyomelemek. A méhek főként a nyír- és nyárfarügyekről gyűjtik ezt a csodaszert.', 'propolisz', 3100, 1),
(17, 'Kesztermekek', 'Szilva lekvár', 'Saját készítésű szilva lekvárunk kizárólag érett szilvákból készül, amelyeket gondosan kiválasztunk és kézzel dolgozunk fel. A lekvár finom ízét és textúráját egy kevés cukor és citromlé hozzáadásával érjük el, hogy az ízek megfelelően kiegyensúlyozottak legyenek. \r\n', 'szilva_lekvar', 1450, 1);

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
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
