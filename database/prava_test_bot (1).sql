-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2022 at 10:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prava_test_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `answers` text NOT NULL,
  `starting_at` text NOT NULL,
  `stopping_at` text NOT NULL,
  `time_spent` text NOT NULL,
  `wrong_answers` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `name`) VALUES
(1, '1'),
(2, '2');

-- --------------------------------------------------------

--
-- Table structure for table `usersModel`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `lang` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usersModel`
--

INSERT INTO `users` (`id`, `user_id`, `user_name`, `lang`) VALUES
(1, 454428994, 'Javohir', 'uzl');

-- --------------------------------------------------------

--
-- Table structure for table `uzk_quizes`
--

CREATE TABLE `uzk_quizes` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `text` text NOT NULL,
  `buttons` int(11) NOT NULL,
  `true_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uzk_quizes`
--

INSERT INTO `uzk_quizes` (`id`, `ticket_id`, `image`, `text`, `buttons`, `true_answer`) VALUES
(1, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/6', '0KHQsNCy0L7Quzog0JHRg9C90LTQsNC5INGC0LDQvdC40pvQu9C40Log0LHQtdC70LPQuNGB0Lgg0LHQuNC70LDQvSDQsdC10LvQs9C40LvQsNC90LDQtNC40LPQsNC9INGC0YDQsNC90YHQv9C+0YDRgiDQstC+0YHQuNGC0LDRgdC4OgoK0KQxOiDQntKT0LjRgCDQstCw0LfQvdC70Lgg0LLQsCDQudC40YDQuNC6INGe0LvRh9Cw0LzQu9C4INGO0LrQu9Cw0YDQvdC4INGC0LDRiNGD0LLRh9C4CtCkMjog0KPQt9GD0L3Qu9C40LPQuCDRjtC6INCx0LjQu9Cw0L0g0ZHQutC4INGO0LrRgdC40LcgMjAg0LzQtdGC0YDQtNCw0L0g0L7RgNGC0LjSmyDQsdGe0LvQs9Cw0L0g0YLRgNCw0L3RgdC/0L7RgNGCINCy0L7RgdC40YLQsNGB0LgK0KQzOiDQpNGD0YDQs9C+0L0g0Y7QutGF0L7QvdCw0YHQuNC00LAg0L7QtNCw0LzQu9Cw0YDQvdC4INGC0LDRiNGD0LLRh9C4', 3, 2),
(2, 1, '', '0KPQvNGD0YDRgtKb0LDRgdC40L3QuNC90LMg0LrRntC60YDQsNC6INKb0LjRgdC80Lgg0YjQuNC60LDRgdGC0LvQsNC90LPQsNC9INC60LjRiNC4INGC0YDQsNC90YHQv9C+0YDRgtC00LAg0pvQsNC90LTQsNC5INGC0LDRiNC40LvQsNC00Lg/CgrQpDEuINKa0LDRgtGC0LjSmyDRgtCw0YXRgtCw0LTQsCDQvtGA0pvQsNGB0Lgg0LHQuNC70LDQvSDRkdGC0LPQsNC9INKz0L7Qu9C00LAK0KQyLiDQrtC80YjQvtKbINGC0Z7RiNCw0LzQsNC00LAg0L7RgNKb0LDRgdC4INCx0LjQu9Cw0L0g0ZHRgtCz0LDQvSDSs9C+0LvQtNCwCtCkMy4g0prQsNGC0YLQuNKbINGC0LDRhdGC0LDQtNCwINGR0L3QuCDQsdC40LvQsNC9INGR0YLQs9Cw0L0g0rPQvtC70LTQsA==', 3, 1),
(3, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/11', '0KfQvtGA0YDQsNKz0LDQtNCw0L0g0LHQuNGA0LjQvdGH0Lgg0LHRntC70LjQsSDRntGC0LDQtNC4OgoK0KQxLiDSmtC40LfQuNC7INCw0LLRgtC+0LzQvtCx0LjQu9GMCtCkMi4g0JrRntC6INCw0LLRgtC+0LzQvtCx0LjQu9GMCtCkMy4g0KHQsNGA0LjSmyDQsNCy0YLQvtC80L7QsdC40LvRjArQpDQuINCv0YjQuNC7INCw0LLRgtC+0LzQvtCx0LjQu9GM', 4, 4),
(4, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/14', '0JnRntC90LDQu9GC0LjRgNCz0LjRh9C70LDRgNC90LjQvdCzINKb0LDQudGB0LjQu9Cw0YDQuCDQsdGe0LnQu9Cw0LEg0rPQsNGA0LDQutCw0YLQu9Cw0L3QuNGI0LPQsCDRgNGD0YXRgdCw0YIg0Y3RgtC40LvQsNC00Lg/CgrQpDEuINCk0LDSm9Cw0YIg0JAg0LnRntC90LDQu9C40Ygg0LHRntC50LvQsNCxCtCkMi4g0KTQsNKb0LDRgiDQkSDQudGe0L3QsNC70LjRiCDQsdGe0LnQu9Cw0LEK0KQzLiDQpNCw0pvQsNGCINCSINC50Z7QvdCw0LvQuNGIINCx0Z7QudC70LDQsQrQpDQuINCk0LDSm9Cw0YIg0JAg0LLQsCDQkyDQudGe0L3QsNC70LjRiNC70LDRgNC4INCx0Z7QudC70LDQsQrQpDUuINCk0LDSm9Cw0YIg0JMg0LnRntC90LDQu9C40Ygg0LHRntC50LvQsNCx', 5, 4),
(5, 1, '', '0KLQuNCx0LHQuNGR0YIg0pvRg9GC0LjRh9Cw0YHQuCDQstCwINGe0YIg0Z7Rh9C40YDQs9C40Ycg0LHRntC70LzQsNCz0LDQvSDSm9Cw0L3QtNCw0Lkg0YLRgNCw0L3RgdC/0L7RgNGCINCy0L7RgdC40YLQsNC70LDRgNC40LTQsNC9INGE0L7QudC00LDQu9Cw0L3QuNGIINGC0LDSm9C40pvQu9Cw0L3QsNC00Lg/CgrQpDEuINCk0LDSm9Cw0YIg0JwxINGC0L7QuNGE0LDQu9C4INGC0YDQsNC90YHQv9C+0YDRgiDQstC+0YHQuNGC0LDRgdC4CtCkMi4g0KTQsNKb0LDRgiDQnDIsINCcMywg0J0xINGC0L7QuNGE0LDQu9C4INGC0YDQsNC90YHQv9C+0YDRgiDQstC+0YHQuNGC0LDRgdC4CtCkMy4g0KTQsNKb0LDRgiDQnTIsINCdMyDRgtC+0LjRhNCw0LvQuCDRgtGA0LDQvdGB0L/QvtGA0YIg0LLQvtGB0LjRgtCw0YHQuArQpDQuINCR0LDRgNGH0LAg0Y7Sm9C+0YDQuNC00LAg0LrRntGA0YHQsNGC0LjQu9Cz0LDQvSDRgtC+0LjRhNCw0LvQsNGA', 4, 4),
(6, 1, '', '0rLQsNC50LTQvtCy0YfQuCDSs9Cw0YDQsNC60LDRgtC70LDQvdC40YjQvdC4INCx0L7RiNC70LDRiNC00LDQvSDQvtC70LTQuNC9INKb0LDQvdC00LDQuSDQsNC80LDQu9C70LDRgNC90Lgg0LHQsNC20LDRgNC40YjQuCDQutC10YDQsNC6PwoK0KQxLiDQotGA0LDQvdGB0L/QvtGA0YIg0LLQvtGB0LjRgtCw0YHQuNC90LjQvdCzINGB0L7Qt9C70LjQs9C40L3QuCDQstCwINGC0Z7Qu9CwINC20LjSs9C+0LfQu9Cw0L3Qs9Cw0L3Qu9C40LPQuNC90Lgg0YLQtdC60YjQuNGA0LjRiNC4CtCkMi4g0rLQsNGA0LDQutCw0YLQu9Cw0L3QuNGIINCx0L7RiNC70LDQvdC40YjQuCDRhdCw0LLRhNGB0LjQtyDQsdGe0LvQuNGI0LjQs9CwINCy0LAg0rPQsNGA0LDQutCw0YLQvdC40L3QsyDQsdC+0YjSm9CwINC40YjRgtC40YDQvtC60YfQuNC70LDRgNC40LPQsCDRhdCw0LvQsNKb0LjRgiDQsdC10YDQvNCw0YHQu9C40LPQuNCz0LAg0LjRiNC+0L3RhyDSs9C+0YHQuNC7INKb0LjQu9C40YjQuCDQutC10YDQsNC6CtCkMy4g0KLQtdCz0LjRiNC70Lgg0LnRntC90LDQu9C40YjQtNCw0LPQuCDQsdGD0YDQuNC70LjRiNC90LjQvdCzINGR0YDRg9KT0LvQuNC6INC60Z7RgNGB0LDRgtC60LjRh9C4INCx0LjQu9Cw0L0g0LjRiNC+0YDQsCDQsdC10YDQuNGI0LgK0KQ0LiDQodCw0L3QsNCxINGe0YLQuNC70LPQsNC9INKz0LDQvNC80LAg0rPQsNGA0LDQutCw0YLQu9Cw0YDQvdC4INCx0LDQttCw0YDQuNGI0Lg=', 4, 2),
(7, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/20', '0rLQsNGA0LDQutCw0YLQu9Cw0L3QuNGIINGC0LDSm9C40pvQu9Cw0L3Qs9Cw0L06CgrQpDEuINKa0LjQt9C40Lsg0LLQsCDQvtKbINCw0LLRgtC+0LzQvtCx0LjQu9C70LDRgNCz0LAK0KQyLiDQmtGe0LosINGP0YjQuNC7INCy0LAg0L7SmyDQsNCy0YLQvtC80L7QsdC40LvQu9Cw0YDQs9CwCtCkMy4g0J7Smywg0LrRntC6INCy0LAg0YHQsNGA0LjSmyDQsNCy0YLQvtC80L7QsdC40LvQu9Cw0YDQs9Cw', 3, 2),
(8, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/22', '0KjRgyDQttC+0LnQtNCwINGC0Z7RhdGC0LDQsSDRgtGD0YDQuNGI0LPQsCDRgNGD0YXRgdCw0YIg0Y3RgtC40LvQsNC00LjQvNC4PwoK0KQxLiDQoNGD0YXRgdCw0YIg0Y3RgtC40LvQsNC00LgK0KQyLiDQotCw0pvQuNKb0LvQsNC90LDQtNC4', 2, 1),
(9, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/24', '0JHRgyDQsdC10LvQs9C40LvQsNGA0L3QuNC90LMg0YLQsNGK0YHQuNGAINC+0YDQsNC70LjSk9C40LTQsCDSm9Cw0LnRgdC4INCw0LLRgtC+0LzQvtCx0LjQu9GMINGD0YfRg9C9INGC0Z7RhdGC0LDRiNCz0LAg0YDRg9GF0YHQsNGCINCx0LXRgNC40LvQsNC00Lg/CgrQpDEuINKa0LjQt9C40LvQs9CwCtCkMi4g0JjQutC60LDQu9CwINCw0LLRgtC+0LzQvtCx0LjQu9Cz0LAK0KQzLiDSstC10Ycg0pvQsNC50YHQuNGB0LjQs9CwCtCkNC4gPDzQndC+0LPQuNGA0L7QvT4+INGC0LDQvdC40pvQu9C40LvQuNC6INCx0LXQu9Cz0LjRgdC4INCx0Z7Qu9Cz0LDQvSDRgdCw0YDQuNKbINCw0LLRgtC+0LzQvtCx0LjQu9Cz0LA=', 4, 4),
(10, 1, 'https://t.me/gfdgdfsgfgsfgsdfgdrge/26', '0prQsNC50YHQuCDRgtGA0LDQvdGB0L/QvtGA0YIg0LLQvtGB0LjRgtCw0YHQuNC90LjQvdCzINKz0LDQudC00L7QstGH0LjRgdC4INGH0L7RgNGA0LDSs9Cw0LTQsNC9INCx0LjRgNC40L3Rh9C4INCx0Z7Qu9C40LEg0Z7RgtCw0LTQuD8KCtCkMS4g0JDQstGC0L7QvNC+0LHQuNC70Ywg0LLQsCDQsNCy0YLQvtCx0YPRgSDSs9Cw0LnQtNC+0LLRh9C40YHQuArQpDIuINCi0YDQsNC80LLQsNC5INKz0LDQudC00L7QstGH0LjRgdC4', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `uzl_quizes`
--

CREATE TABLE `uzl_quizes` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `text` text NOT NULL,
  `buttons` int(11) NOT NULL,
  `true_answer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `uzl_quizes`
--

INSERT INTO `uzl_quizes` (`id`, `ticket_id`, `image`, `text`, `buttons`, `true_answer`) VALUES
(1, 1, '6', 'U2F2b2w6ICBCdW5kYXkgdGFuaXFsaWsgYmVsZ2lzaSBiaWxhbiBiZWxnaWxhbmFkaWdhbiB0cmFuc3BvcnQgdm9zaXRhc2k6DQoNCkYxOiBPZ+KAmGlyIHZhem5saSB2YSB5aXJpayBv4oCYbGNoYW1saSB5dWtsYXJuaSB0YXNodXZjaGkNCkYyOiBVenVubGlnaSB5dWsgYmlsYW4geW9raSB5dWtzaXogMjAgbWV0cmRhbiBvcnRpcSBib+KAmGxnYW4gdHJhbnNwb3J0IHZvc2l0YXNpDQpGMzogRnVyZ29uIHl1a3hvbmFzaWRhIG9kYW1sYXJuaSB0YXNodXZjaGk=', 3, 2),
(2, 1, '', 'VW11cnRxYXNpbmluZyBrb8q7a3JhayBxaXNtaSBzaGlrYXN0bGFuZ2FuIGtpc2hpIHRyYW5zcG9ydGRhIHFhbmRheSB0YXNoaWxhZGk/DQoNCkYxLiBRYXR0aXEgdGF4dGFkYSBvcnFhc2kgYmlsYW4geW90Z2FuIGhvbGRhDQpGMi4gWXVtc2hvcSB0b8q7c2hhbWFkYSBvcnFhc2kgYmlsYW4geW90Z2FuIGhvbGRhDQpGMy4gUWF0dGlxIHRheHRhZGEgeW9uaSBiaWxhbiB5b3RnYW4gaG9sZGE=', 3, 1),
(3, 1, '11', 'Q2hvcnJhaGFkYW4gYmlyaW5jaGkgYm/Ku2xpYiBvyrt0YWRpOg0KDQpGMS4gUWl6aWwgYXZ0b21vYmlsDQpGMi4gS2/Ku2sgYXZ0b21vYmlsDQpGMy4gU2FyaXEgYXZ0b21vYmlsDQpGNC4gWWFzaGlsIGF2dG9tb2JpbA==', 4, 4),
(4, 1, '14', 'WW/igJhuYWx0aXJnaWNobGFybmluZyBxYXlzaWxhcmkgYm/igJh5bGFiIGhhcmFrYXRsYW5pc2hnYSBydXhzYXQgZXRpbGFkaT8NCg0KRjEuIEZhcWF0IEEgeW/igJhuYWxpc2ggYm/igJh5bGFiIA0KRjIuIEZhcWF0IEIgeW/igJhuYWxpc2ggYm/igJh5bGFiIA0KRjMuIEZhcWF0IFYgeW/igJhuYWxpc2ggYm/igJh5bGFiIA0KRjQuIEZhcWF0IEEgdmEgRyB5b+KAmG5hbGlzaGxhcmkgYm/igJh5bGFiIA0KRjUuIEZhcWF0IEcgeW/igJhuYWxpc2ggYm/igJh5bGFi', 5, 4),
(5, 1, '', 'VGliYml5b3QgcXV0aWNoYXNpIHZhIG/igJh0IG/igJhjaGlyZ2ljaCBib+KAmGxtYWdhbiBxYW5kYXkgdHJhbnNwb3J0IHZvc2l0YWxhcmlkYW4gZm95ZGFsYW5pc2ggdGFxaXFsYW5hZGk/DQoNCkYxLiBGYXFhdCBNMSB0b2lmYWxpIHRyYW5zcG9ydCB2b3NpdGFzaSANCkYyLiBGYXFhdCBNMiwgTTMsIE4xIHRvaWZhbGkgdHJhbnNwb3J0IHZvc2l0YXNpIA0KRjMuIEZhcWF0IE4yLCBOMyB0b2lmYWxpIHRyYW5zcG9ydCB2b3NpdGFzaSANCkY0LiBCYXJjaGEgeXVxb3JpZGEga2/igJhyc2F0aWxnYW4gdG9pZmFsYXI=', 4, 4),
(6, 1, '', 'SGF5ZG92Y2hpIGhhcmFrYXRsYW5pc2huaSBib3NobGFzaGRhbiBvbGRpbiBxYW5kYXkgYW1hbGxhcm5pIGJhamFyaXNoaSBrZXJhaz8NCg0KRjEuIFRyYW5zcG9ydCB2b3NpdGFzaW5pbmcgc296bGlnaW5pIHZhIHRv4oCYbGEgamlob3psYW5nYW5saWdpbmkgdGVrc2hpcmlzaGkgDQpGMi4gSGFyYWthdGxhbmlzaCBib3NobGFuaXNoaSB4YXZmc2l6IGJv4oCYbGlzaGlnYSB2YSBoYXJha2F0bmluZyBib3NocWEgaXNodGlyb2tjaGlsYXJpZ2EgeGFsYXFpdCBiZXJtYXNsaWdpZ2EgaXNob25jaCBob3NpbCBxaWxpc2hpIGtlcmFrIA0KRjMuIFRlZ2lzaGxpIHlv4oCYbmFsaXNoZGFnaSBidXJpbGlzaG5pbmcgeW9ydWfigJhsaWsga2/igJhyc2F0a2ljaGkgYmlsYW4gaXNob3JhIGJlcmlzaGkgDQpGNC4gU2FuYWIgb+KAmHRpbGdhbiBoYW1tYSBoYXJha2F0bGFybmkgYmFqYXJpc2hp', 4, 2),
(7, 1, '20', 'SGFyYWthdGxhbmlzaCB0YXFpcWxhbmdhbjoNCg0KRjEuIFFpemlsIHZhIG9xIGF2dG9tb2JpbGxhcmdhIA0KRjIuIEtv4oCYaywgeWFzaGlsIHZhIG9xIGF2dG9tb2JpbGxhcmdhIA0KRjMuIE9xLCBrb+KAmGsgdmEgc2FyaXEgYXZ0b21vYmlsbGFyZ2E=', 3, 2),
(8, 1, '22', 'U2h1IGpveWRhIHRv4oCYeHRhYiB0dXJpc2hnYSBydXhzYXQgZXRpbGFkaW1pPw0KDQpGMS4gUnV4c2F0IGV0aWxhZGkgDQpGMi4gVGFxaXFsYW5hZGk=', 2, 1),
(9, 1, '24', 'QnUgYmVsZ2lsYXJuaW5nIHRhyrxzaXIgb3JhbGln4oCYaWRhIHFheXNpIGF2dG9tb2JpbCB1Y2h1biB0b+KAmHh0YXNoZ2EgcnV4c2F0IGJlcmlsYWRpPw0KDQpGMS4gUWl6aWxnYSANCkYyLiBJa2thbGEgYXZ0b21vYmlsZ2EgDQpGMy4gSGVjaCBxYXlzaXNpZ2ENCkY0LiDigJxOb2dpcm9u4oCdIHRhbmlxbGlsaWsgYmVsZ2lzaSBib+KAmGxnYW4gc2FyaXEgYXZ0b21vYmlsZ2E=', 4, 4),
(10, 1, '26', 'UWF5c2kgdHJhbnNwb3J0IHZvc2l0YXNpbmluZyBoYXlkb3ZjaGlzaSBjaG9ycmFoYWRhbiBiaXJpbmNoaSBib+KAmGxpYiBv4oCYdGFkaT8NCg0KRjEuIEF2dG9tb2JpbCB2YSBhdnRvYnVzIGhheWRvdmNoaXNpIA0KRjIuIFRyYW12YXkgaGF5ZG92Y2hpc2k=', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results` (`user_id`,`ticket_id`),
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usersModel`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `uzk_quizes`
--
ALTER TABLE `uzk_quizes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ticket_id` (`ticket_id`);

--
-- Indexes for table `uzl_quizes`
--
ALTER TABLE `uzl_quizes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `ticket_id` (`ticket_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usersModel`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uzk_quizes`
--
ALTER TABLE `uzk_quizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `uzl_quizes`
--
ALTER TABLE `uzl_quizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `results_ibfk_2` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `uzk_quizes`
--
ALTER TABLE `uzk_quizes`
  ADD CONSTRAINT `uzk_quizes_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);

--
-- Constraints for table `uzl_quizes`
--
ALTER TABLE `uzl_quizes`
  ADD CONSTRAINT `uzl_quizes_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
