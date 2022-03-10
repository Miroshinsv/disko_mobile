import 'package:get/get.dart';

//monday tuesday wednesday thursday friday saturday sunday
class DiskoTranslations extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'ru_RU': {
          'monday': 'Понедельник',
          'tuesday': 'Вторик',
          'wednesday': 'Среда',
          'thursday': 'Четверг',
          'friday': 'Пятница',
          'saturday': 'Суббота',
          'sunday': 'Воскресенье',

          // Initial screen
          'initial': 'Инициализация...',
          'loading_today_schedule': 'Загрузка расписания на сегодня...',
          'loading_week_schedule': 'Загрузка расписания на неделю...',

          // Main
          'schedule_week': 'Расписание на неделю',
          'schedule_empty': 'Дискотек нет',
          'undefine_time': 'Время уточняте у организаторов',
          'undefine_price': 'Стоимость уточняте у организаторов',
          'currency': ' руб.',
          'today': 'Сегодня',
        },
        'en_EN': {
          'monday': 'Monday',
          'tuesday': 'Tuesday',
          'wednesday': 'Wednesday',
          'thursday': 'Thursday',
          'friday': 'Friday',
          'saturday': 'Saturday',
          'sunday': 'Sunday',

          // Initial screen
          'initial': 'Инициализация...',
          'loading_today_schedule': 'Loading today schedule',
          'loading_week_schedule': 'Loading week schedule',

          // Main
          'schedule_week': 'Week schedule',
          'schedule_empty': 'No discos',
          'undefine_time': 'Time check with the organizers',
          'undefine_price': 'Price check with the organizers',
          'currency': ' rub.',
          'today': 'Today',
        }
      };
}
