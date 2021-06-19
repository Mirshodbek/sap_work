import 'package:sap_work/models/vacancy/vacancy.dart';
import 'package:sap_work/resources/images.dart';
import 'package:sap_work/screens/hunter/hunter.dart';

class LocalRepository {

  static final List<Vacancy> vacancyList = <Vacancy>[];

  //
  // static final List<AnnounceS> announceList = [
  //   AnnounceS(
  //     id: 0,
  //     fromMoney: 60000,
  //     toMoney: 70000,
  //     location: "Москва",
  //     skill: "Более 5 лет",
  //     nameCompany: "WANT",
  //     workDay: "Полный день",
  //     moreInfo: Variables.second,
  //     logoCompany: AppImages.want,
  //     longDescription: Variables.first,
  //     titleAnnounce: "Бизнес-ассистент (подработка)",
  //     employmentType: "Гибкий график",
  //     shortDescription:
  //         "Ищем сотрудников на свободный график, которые будут помогать нашим клиентам...",
  //   ),
  //   AnnounceS(
  //     id: 1,
  //     location: "Москва",
  //     skill: "Без опыта",
  //     shortDescription: "",
  //     workDay: "Полный день",
  //     fromMoney: 54000,
  //     toMoney: 86000,
  //     nameCompany: "IQ Option",
  //     moreInfo: Variables.second,
  //     logoCompany: AppImages.iq_option,
  //     longDescription: Variables.first,
  //     employmentType: "Полный день",
  //     titleAnnounce:
  //         "Customer Support Officer (with English and Italian language)",
  //   ),
  //   AnnounceS(
  //     id: 2,
  //     location: "Москва",
  //     skill: "0-1 год",
  //     nameCompany: "WANT",
  //     workDay: "Полный день",
  //     fromMoney: 60000,
  //     toMoney: 70000,
  //     moreInfo: Variables.second,
  //     logoCompany: AppImages.want2,
  //     longDescription: Variables.first,
  //     titleAnnounce: "Бизнес-ассистент (подработка)",
  //     employmentType: "Удаленная работа",
  //     shortDescription:
  //         "Мы ищем амбициозного и проактивного менеджера для развития веб-решений...",
  //   ),
  //   AnnounceS(
  //     id: 3,
  //     location: "Москва",
  //     skill: "1-3 года",
  //     nameCompany: "WANT",
  //     shortDescription: "",
  //     workDay: "Полный день",
  //     fromMoney: 30000,
  //     toMoney: 150000,
  //     moreInfo: Variables.second,
  //     logoCompany: AppImages.want3,
  //     longDescription: Variables.first,
  //     employmentType: "Сменный график",
  //     titleAnnounce:
  //         "Менеджер по продажам / Sales Development Representative на международный рынок",
  //   ),
  // ];

  static final List<Chat> chatList = [
    Chat(
      text: Variables.fourth,
      profileImage: AppImages.profile_section,
      isMe: true,
    ),
    Chat(
      text: Variables.third,
      profileImage: AppImages.want,
      isMe: false,
    ),
  ];
}

class Variables {
  static const first =
      "Привет! Мы – компания VERTCOMM. К нам обращаются крупные и средние компании, чтобы сделать корпоративный мерч. По любому поводу (Новый год, День рождения компании, выставка, крупный event и т.д.) и с разными бюджетами. Мы ищем человека влюбленного в мерч. И в людей. Потому что нужно будет общаться – много, качественно и от всего сердца. А еще запускать мерч...";

  static const second =
      "Что такое Customer Support Department в IQ Option? Это большая профессиональная команда специалистов поддержки в составе Customer Care. Мы говорим на 20-ти языках и помогаем нашим пользователям разбираться во всех тонкостях трейдинга...";

  static const third =
      "Здравствуйте, меня зовут Марина, я hr-специалист в компании WANT. Нам понравилось ваше резюме, приглашаем на созвон. ";

  static const fourth = "Отлично, где и когда мы сможем связаться?";
}

class Vacancies extends Iterable<Vacancy> {
  final List<Vacancy> _list;

  Vacancies.fromList(this._list);

  @override
  Iterator<Vacancy> get iterator => _list.iterator;
}
