import 'package:disko_app/l10n/translations.dart';
import 'package:disko_app/routes/routes_config.dart';
import 'package:disko_app/services/api_services.dart';
import 'package:disko_app/services/auth_services.dart';
import 'package:disko_app/services/schedule_services.dart';
import 'package:disko_app/services/storage_services.dart';
import 'package:disko_app/themes/disko_themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Get.putAsync(() => StorageService().init());
  Get.put(AuthorizeService());
  await Get.putAsync(() => ApiService().init());
  Get.put(ScheduleServices());
  runApp(
    GetMaterialApp(
      getPages: RouteConfig.getRoutes,
      initialRoute: RouteConfig.INITIAL_SCREEN,
      translations: DiskoTranslations(),
      fallbackLocale: Locale('ru', 'RU'),
      locale: Get.deviceLocale,
      theme: DiskoThemes.lightThemeData,
      darkTheme: DiskoThemes.darkThemeData,
      themeMode: ThemeMode.light,
    ),
  );
}
