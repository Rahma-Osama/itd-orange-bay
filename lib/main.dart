import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/localization/provider/locale_provider.dart';
import 'package:orange_bay_new/core/services/api/api_service.dart';
import 'package:provider/provider.dart';
import 'features/splash/presentation/views/splash_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void main() {
  final apiService = ApiService();
  runApp(
    MultiProvider(
      providers: [
        Provider<ApiService>(create: (context) => apiService),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // final localeProvider = Provider.of<LocaleProvider>(context);
    return ChangeNotifierProvider<LocaleProvider>(
        create: (context) => LocaleProvider(),
        builder: (context, s) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Provider.of<LocaleProvider>(context).locale,
            supportedLocales: L10n.supportedLocales,
            localizationsDelegates: const [
              AppLocalizations.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
            ],
            home: const SplashScreen(),
          );
        });
  }
}
