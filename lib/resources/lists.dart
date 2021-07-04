import 'package:sap_work/models/stage.dart';
import 'package:sap_work/models/user/block/block.dart';

class Lists {
  static final List<String> listProfessions = <String>[
    "Програмисть",
    "Доктор",
    "Инженер",
    "Преподаватель",
    "Строитель"
  ];

  static final List<String> countryList = <String>[
    "Москва",
    "Санкт-Петербург",
    "Краснодар",
    "Самара",
    "Нижний Новгород",
    "Казань",
    "Уфа",
    "Ростов-на-Дону",
  ];

  static final List<String> scheduleList = <String>[
    "Полная зантость",
    "Частичная занятость",
    "Проектная работа",
    "Волонтерство",
    "Стажировка",
  ];

  static final List<String> stageList = <String>[
    "Любой",
    "Без опыта",
    "0-1 год",
    "1-3 года",
    "3-5 лет",
    "Более 5 лет",
  ];

  static final List<String> typeList = <String>[
    "Полный день",
    "Сменный график",
    "Гибкий график",
    "Удаленная работа",
    "Вахтовый метод",
  ];

  static final List<String> linkList = <String>[
    "Telegram",
    "Сайт",
  ];
  static final List<Block> blocksResumeList = <Block>[
    Block(
        "Опыт работы",
        "Должность",
        "Компания",
        "с __.___ по __.___",
        "Опишите ваш опыт работы в компании, какие задачи решали, какие результаты достугнуты.",
        0,
        100,
        101,
        102,
        103),
    Block("Образование", "с...по...", "position", "university", "hintText", 1,
        104, 105, 106, 107),
    Block("Профессия", "Профессия", "hintText", "hintText", "hintText", 2, 108,
        109, 110, 111),
    Block("Дипломы и сертификаты", "Дипломы и сертификаты", "hintText",
        "hintText", "hintText", 3, 112, 113, 114, 115),
    Block("Свободный блок", "Свободный блок", "hintText", "hintText",
        "hintText", 4, 116, 117, 118, 119),
    Block("Языки", "Языки", "hintText", "hintText", "hintText", 5, 120, 121,
        122, 123),
    Block("Ключевые навыки", "Ключевые навыки", "hintText", "hintText",
        "hintText", 6, 124, 125, 126, 127),
    Block("Видео-визитка", "Видео-визитка", "hintText", "hintText", "hintText",
        7, 128, 129, 130, 131),
    Block("Рекомендательные письма", "Рекомендательные письма", "hintText",
        "hintText", "hintText", 8, 132, 133, 134, 135)
  ];
}
