import 'package:disko_app/screens/event_screen/event_screen.dart';
import 'package:disko_app/screens/event_screen/event_screen_bindings.dart';
import 'package:disko_app/screens/initial_screen/initial_screen.dart';
import 'package:disko_app/screens/initial_screen/initial_screen_bindings.dart';
import 'package:disko_app/screens/main_screen/main_screen.dart';
import 'package:disko_app/screens/main_screen/main_screen_bindings.dart';
import 'package:get/get.dart';

class RouteConfig {
  static final String MAIN_SCREEN = '/main';
  static final String INITIAL_SCREEN = '/initial';
  static final String EVENT_SCREEN = '/event';

  static get getRoutes => [
        GetPage(
          name: INITIAL_SCREEN,
          page: () => InitialScreen(),
          binding: InitialScreenBindings(),
        ),
        GetPage(
          name: MAIN_SCREEN,
          page: () => MainScreen(),
          binding: MainScreenBindings(),
        ),
        GetPage(
          name: EVENT_SCREEN,
          page: () => EventScreen(),
          binding: EventScreenBindings(),
        ),
      ];
}
