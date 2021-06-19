import 'package:sap_work/screens/employer/employer.dart';

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

  static final List<String> typeList = <String>[
    "Гибкий график",
    "Вахтовый метод",
    "Полный день",
    "Удаленная работа",
    "Сменный график",
  ];

  static final List<SkillState> skillList = <SkillState>[
    SkillState(title: "Любой"),
    SkillState(title: "Без опыта"),
    SkillState(title: "0-1 год"),
    SkillState(title: "1-3 года"),
    SkillState(title: "3-5 лет"),
    SkillState(title: "Более 5 лет"),
  ];

  static final List<String> linkList = <String>[
    "Telegram",
    "Сайт",
  ];

  static final List<String> announceTitleList = <String>[
    "Добавить вакансию",
  ];
  static final List<String> employmentTypes = <String>[
    "Полный день",
    "Частичная занятость",
    "Удаленная работа",
  ];

  static final List<String> blocksResumeList = <String>[
    "Опыт работы",
    "Образование",
    "Профессия",
    "Дипломы и сертификаты",
    "Свободный блок",
    "Языки",
    "Ключевые навыки",
    "Видео-визитка",
    "Рекомендательные письма",
  ];

  static final List<Pay> payList = <Pay>[
    Pay(
      "Мини",
      "Тариф действует при покупке от 1 до 4 дней ",
      1000,
    ),
    Pay(
      "Мега",
      "Тариф действует при покупке от 1 до 30 дней ",
      8000,
    ),
  ];
}
