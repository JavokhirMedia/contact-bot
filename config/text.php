<?php

class sendText
{

    const SELECT_LANG = "Tilni tanlang.\nТилни танланг.\nВыберите язык.";
    const ADMIN_ID = 454428994;
    const API_TOKEN = TOKEN;

    /**
     * @param $text
     * @param $lang
     * @return string|void
     */

    public static function getText($text, $lang)
    {
        if ($lang == "uzl") {
            switch ($text)
            {
                case 'START_TEXT':
                    return "😊 Sizga qanday yordam bera olishim mumkin? Savolingiz bo‘lsa, marhamat, sizga tez orada javob beraman.";
                case 'MESSAGE_DONE':
                    return "Xabaringiz muvoffaqiyatli tarzda yetkazildi!";
                case 'HELLO_ADMIN':
                    return "Assalomu alaykum. Salomatmisiz? Nima gaplar?";
                case 'TAKE_REVENGE':
                    return "Vaalaykum assalom.";
                case 'INQUIRE_ABOUT_SITUATION':
                    return "Salomatmisiz, nima gaplar, nima yangiliklar?";
                case 'THANK_YOU_ADMIN':
                    return "Rahmat kattakon, e'tibor uchun, ajratgan vaqtingiz uchun rozi bo'lasiz:)";
            }
        } elseif ($lang == "uzk") {
            switch ($text)
            {
                case 'START_TEXT':
                    return "😊 Сизга қандай ёрдам бера олишим мумкин? Саволингиз бўлса, марҳамат, сизга тез орада жавоб бераман.";
                case 'MESSAGE_DONE':
                    return "Хабарингиз мувоффақиятли тарзда етказилди!";
                case 'HELLO_ADMIN':
                    return "Ассалому алайкум. Саломатмисиз? Нима гаплар?";
                case 'TAKE_REVENGE':
                    return "Ваалайкум ассалом.";
                case 'INQUIRE_ABOUT_SITUATION':
                    return "Саломатмисиз, нима гаплар, нима янгиликлар?";
                case 'THANK_YOU_ADMIN':
                    return "Раҳмат каттакон, эътибор учун, ажратган вақтингиз учун рози бўласиз:)";
            }
        } elseif ($lang == "rus") {
            switch ($text)
            {
                case 'START_TEXT':
                    return "😊 Как я могу вам помочь? Если у вас есть вопрос, пожалуйста, я отвечу вам в ближайшее время.";
                case 'MESSAGE_DONE':
                    return "Ваше сообщение успешно доставлено!";
                case 'HELLO_ADMIN':
                    return "Привет. Как дела? Как дела?";
                case 'TAKE_REVENGE':
                    return "Привет.";
                case 'INQUIRE_ABOUT_SITUATION':
                    return "Привет, как дела, что нового?";
                case 'THANK_YOU_ADMIN':
                    return "Спасибо за ваше время и внимание :)";
            }
        }
    }

}


?>
