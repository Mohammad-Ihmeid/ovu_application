import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:ovu_application/helper/translation/localization.dart';
import 'package:ovu_application/views/screens/splash_screen.dart';
import 'package:sizer/sizer.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return GetMaterialApp(
          localizationsDelegates: [
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: [
            const Locale('en', ''), // English, no country code
            const Locale('ar', ''), // Arabic, no country code
          ],
          debugShowCheckedModeBanner: false,
          theme: ThemeData(fontFamily: 'Teshrin'),
          translations: LocalizationService(),
          locale: LocalizationService().getCurrentLocale(),
          fallbackLocale: const Locale('en', 'US'),
          builder: EasyLoading.init(),
          home: SplashScreen());
    });
  }
}
