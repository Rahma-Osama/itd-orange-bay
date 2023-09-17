import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/localization/l10n.dart';
import 'package:orange_bay_new/core/services/preference/preference_service.dart';
import 'package:orange_bay_new/core/services/api/api_service.dart';
import 'package:orange_bay_new/features/splash/presentation/views/splash_view.dart';
import 'package:provider/provider.dart';

void main() {
  final apiService = ApiService();
  runApp(
    MultiProvider(
      providers: [
        Provider<ApiService>(create: (context) => apiService),
        ChangeNotifierProvider<PreferenceService>(
          create: (context) => PreferenceService(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PreferenceService>(
      builder: (context, preference, _) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: preference.isEn() ? "Orange Bay" : "أورانج باي",
        locale: preference.locale,
        supportedLocales: L10n.supportedLocales,
        localizationsDelegates: L10n.localizationsDelegates,
        home: const SplashScreen(),
      ),
    );
  }
}
