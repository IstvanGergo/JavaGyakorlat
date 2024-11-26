-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Nov 26. 15:16
-- Kiszolgáló verziója: 10.4.32-MariaDB
-- PHP verzió: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `feladat`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `animal`
--

CREATE TABLE `animal` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `ValueID` int(11) NOT NULL,
  `Year` int(4) DEFAULT NULL,
  `CategoryID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `animal`
--

INSERT INTO `animal` (`ID`, `name`, `ValueID`, `Year`, `CategoryID`) VALUES
(1768, 'dobozi pikkelyescsiga', 1, NULL, 5),
(1772, 'ritka hegyiszitakötő', 1, NULL, 8),
(1774, 'álolaszsáska', 1, NULL, 8),
(1775, 'magyar tarsza', 1, NULL, 8),
(1776, 'Stys-tarsza', 1, NULL, 8),
(1779, 'beregi futrinka', 1, NULL, 8),
(1780, 'magyar futrinka', 1, NULL, 8),
(1781, 'zempléni futrinka', 1, NULL, 8),
(1783, 'pusztai gyalogcincér', 1, NULL, 8),
(1784, 'atracélcincér', 1, NULL, 8),
(1786, 'remetebogár', 1, NULL, 8),
(1788, 'drávai tegzes', 1, NULL, 8),
(1789, 'mecseki őszitegzes', 1, NULL, 8),
(1792, 'sztyeplepke', 1, NULL, 8),
(1794, 'budai szakállasmoly', 1, NULL, 8),
(1796, 'fóti boglárka', 1, NULL, 8),
(1797, 'csíkos boglárka', 1, NULL, 8),
(1799, 'ezüstsávos szénalepke', 1, NULL, 8),
(1801, 'magyar ősziaraszoló', 1, NULL, 8),
(1802, 'bükki hegyiaraszoló', 1, NULL, 8),
(1803, 'Anker-araszoló', 1, NULL, 8),
(1804, 'füstös ősziaraszoló', 1, NULL, 8),
(1805, 'csüngőaraszoló', 1, NULL, 8),
(1807, 'Metelka-medvelepke', 1, NULL, 8),
(1809, 'keleti lápibagoly', 1, NULL, 8),
(1810, 'magyar őszi-fésűsbagoly', 1, NULL, 8),
(1811, 'díszes csuklyásbagoly', 1, NULL, 8),
(1812, 'vértesi csuklyásbagoly', 1, NULL, 8),
(1813, 'magyar tavaszi-fésűsbagoly', 1, NULL, 8),
(1814, 'nagy szikibagoly', 1, NULL, 8),
(1815, 'nagyfoltú bagoly', 1, NULL, 8),
(1816, 'villányi télibagoly', 1, NULL, 8),
(1821, 'tiszai ingola', 2, 1974, 2),
(1822, 'dunai ingola', 1, 1974, 2),
(1826, 'Petényi-márna', 1, 1974, 1),
(1829, 'lápi póc', 1, 1974, 1),
(1831, 'dunai galóca', 1, 1974, 1),
(1834, 'magyar bucó', 1, 1974, 1),
(1835, 'német bucó', 1, 1974, 1),
(1839, 'pannon gyík', 1, 1974, 6),
(1841, 'haragos sikló', 3, 1974, 6),
(1843, 'parlagi vipera', 4, 1974, 6),
(1847, 'kis kárókatona', 3, 1954, 3),
(1849, 'rózsás gödény', 2, 1954, 3),
(1850, 'borzas gödény', 2, 1954, 3),
(1853, 'bölömbika', 1, 1954, 3),
(1854, 'törpegém', 1, 1954, 3),
(1855, 'bakcsó', 1, 1954, 3),
(1856, 'üstökösgém', 2, 1912, 3),
(1857, 'kis kócsag', 2, 1912, 3),
(1858, 'nagy kócsag', 1, 1912, 3),
(1859, 'vörös gém', 2, 1954, 3),
(1861, 'fekete gólya', 3, 1906, 3),
(1862, 'fehér gólya', 1, 1906, 3),
(1864, 'batla', 2, 1912, 3),
(1865, 'kanalasgém', 3, 1912, 3),
(1868, 'kis lilik', 4, 1982, 3),
(1869, 'vörösnyakú lúd', 3, 1971, 3),
(1870, 'márványos réce', 2, 1971, 3),
(1871, 'cigányréce', 3, 1971, 3),
(1872, 'kékcsőrű réce', 3, 1954, 3),
(1875, 'halászsas', 2, 1954, 3),
(1877, 'darázsölyv', 1, 1954, 3),
(1878, 'barna kánya', 2, 1971, 3),
(1879, 'vörös kánya', 3, 1954, 3),
(1880, 'rétisas', 4, 1954, 3),
(1881, 'dögkeselyű', 1, 1954, 3),
(1882, 'barátkeselyű', 2, 1954, 3),
(1883, 'kígyászölyv', 3, 1954, 3),
(1884, 'fakó rétihéja', 1, 1954, 3),
(1885, 'hamvas rétihéja', 2, 1954, 3),
(1886, 'kis héja', 2, 1954, 3),
(1887, 'pusztai ölyv', 1, 1954, 3),
(1888, 'békászó sas', 4, 1954, 3),
(1889, 'fekete sas', 3, 1954, 3),
(1890, 'parlagi sas', 4, 1954, 3),
(1891, 'szirti sas', 3, 1954, 3),
(1892, 'törpesas', 3, 1954, 3),
(1893, 'héjasas', 1, 1954, 3),
(1895, 'fehérkarmú vércse', 3, 1906, 3),
(1896, 'kék vércse', 3, 1906, 3),
(1897, 'Eleonóra-sólyom', 1, 1971, 3),
(1898, 'Feldegg-sólyom', 1, 1996, 3),
(1899, 'kerecsensólyom', 4, 1954, 3),
(1900, 'északi sólyom', 1, 1996, 3),
(1901, 'vándorsólyom', 3, 1954, 3),
(1904, 'császármadár', 3, 1954, 3),
(1907, 'törpevízicsibe', 2, 1954, 3),
(1908, 'haris', 3, 1971, 3),
(1910, 'reznek', 2, 1954, 3),
(1911, 'túzok', 4, 1971, 3),
(1914, 'gólyatöcs', 2, 1954, 3),
(1915, 'gulipán', 2, 1954, 3),
(1917, 'ugartyúk', 2, 1901, 3),
(1919, 'székicsér', 3, 1901, 3),
(1920, 'feketeszárnyú székicsér', 3, 1954, 3),
(1922, 'széki lile', 3, 1901, 3),
(1923, 'lilebíbic', 2, 1954, 3),
(1925, 'nagy sárszalonka', 2, 1971, 3),
(1926, 'nagy goda', 1, 1954, 3),
(1927, 'vékonycsőrű póling', 4, 1954, 3),
(1928, 'nagy póling', 1, 1954, 3),
(1929, 'piroslábú cankó', 1, 1954, 3),
(1930, 'tavi cankó', 2, 1954, 3),
(1932, 'kis csér', 2, 1954, 3),
(1933, 'fattyúszerkő', 1, 1901, 3),
(1934, 'kormos szerkő', 2, 1901, 3),
(1935, 'fehérszárnyú szerkő', 2, 1901, 3),
(1938, 'gyöngybagoly', 1, 1901, 3),
(1940, 'uhu', 2, 1954, 3),
(1941, 'hóbagoly', 1, 1954, 3),
(1942, 'kuvik', 1, 1901, 3),
(1943, 'urali bagoly', 1, 1954, 3),
(1944, 'réti fülesbagoly', 2, 1901, 3),
(1947, 'gyurgyalag', 1, 1954, 3),
(1949, 'szalakóta', 3, 1901, 3),
(1952, 'fehérhátú fakopáncs', 1, 1901, 3),
(1955, 'sziki pacsirta', 2, 1971, 3),
(1957, 'vízirigó', 2, 1904, 3),
(1959, 'nagy fülemüle', 1, 1901, 3),
(1960, 'kövirigó', 3, 1901, 3),
(1962, 'csíkosfejű nádiposzáta', 3, 1901, 3),
(1964, 'kerti sármány', 2, 1901, 3),
(1968, 'kereknyergű patkósdenevér', 1, 1901, 7),
(1969, 'nagy patkósdenevér', 1, 1901, 7),
(1971, 'piszedenevér', 1, 1901, 7),
(1972, 'hosszúszárnyú denevér', 1, 1901, 7),
(1973, 'nagyfülű denevér', 1, 1901, 7),
(1974, 'tavi denevér', 1, 1901, 7),
(1975, 'csonkafülű denevér', 1, 1901, 7),
(1976, 'óriás-koraidenevér', 1, 1901, 7),
(1979, 'farkas', 2, 1993, 7),
(1981, 'vidra', 2, 1974, 7),
(1983, 'hiúz', 3, 1988, 7),
(1986, 'nyugati földikutya', 3, 1974, 7),
(1988, 'északi pocok', 2, 1974, 7),
(1990, 'csíkos szöcskeegér', 2, 1974, 7);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `category`
--

CREATE TABLE `category` (
  `CategoryID` int(11) NOT NULL,
  `category_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `category`
--

INSERT INTO `category` (`CategoryID`, `category_name`) VALUES
(1, 'halak'),
(2, 'körszájúak'),
(3, 'madarak'),
(4, 'kétéltűek'),
(5, 'puhatestűek'),
(6, 'hüllők'),
(7, 'emlősök'),
(8, 'ízeltlábúak');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `message`
--

CREATE TABLE `message` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `timestamp` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `message`
--

INSERT INTO `message` (`ID`, `name`, `message`, `timestamp`) VALUES
(4, 'Vendég', 'üzenet', '2024-11-25 15:51:02'),
(5, 'admin@gmail.com', 'üzenet', '2024-11-25 15:59:44'),
(6, 'Vendég', 'üzenet', '2024-11-25 16:06:41'),
(7, 'admin@gmail.com', 'üzenet', '2024-11-25 16:59:02'),
(8, 'Vendég', 'üzenet', '2024-11-25 17:00:38'),
(9, 'admin@gmail.com', 'üzenet', '2024-11-26 12:08:14');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`ID`, `name`, `email`, `Password`, `role`) VALUES
(1, 'Admin Úr', 'admin@gmail.com', '$2a$10$QEaf3I.eLiZC4F4pDnqmC.sTysFlJ59wgROmw3ATxceFs/wgg0LvK', 'ROLE_ADMIN'),
(2, 'Felhasználó', 'user@gmail.com', '$2a$10$exVjZOnYQ3oFdNTFP7qVHOoL8K2XhKpWXY3r8duw8v9pTNxmC0qbm', 'ROLE_USER'),
(4, 'gergo', 'gergo@gmail.com', '$2a$10$XDsydGmH0rB/okA0dMzoJOxqdcNCTI2YWHzDX6GKzHAXsYtDbxFZe', 'ROLE_Vendeg');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `value`
--

CREATE TABLE `value` (
  `ValueID` int(1) NOT NULL,
  `Forint` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_hungarian_ci;

--
-- A tábla adatainak kiíratása `value`
--

INSERT INTO `value` (`ValueID`, `Forint`) VALUES
(1, 100000),
(2, 250000),
(3, 500000),
(4, 1000000);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ValueIndex` (`ValueID`) USING BTREE,
  ADD KEY `CategoryIndex` (`CategoryID`) USING BTREE;

--
-- A tábla indexei `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`),
  ADD UNIQUE KEY `CategoryIndex` (`CategoryID`);

--
-- A tábla indexei `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- A tábla indexei `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`ValueID`),
  ADD KEY `ValueIndex` (`ValueID`) USING BTREE;

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `animal`
--
ALTER TABLE `animal`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1994;

--
-- AUTO_INCREMENT a táblához `category`
--
ALTER TABLE `category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT a táblához `message`
--
ALTER TABLE `message`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT a táblához `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT a táblához `value`
--
ALTER TABLE `value`
  MODIFY `ValueID` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `animal`
--
ALTER TABLE `animal`
  ADD CONSTRAINT `animal_ibfk_1` FOREIGN KEY (`CategoryID`) REFERENCES `category` (`CategoryID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `animal_ibfk_2` FOREIGN KEY (`ValueID`) REFERENCES `value` (`ValueID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
