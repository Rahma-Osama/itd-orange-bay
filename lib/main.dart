import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/services/api/api_service.dart';
import 'package:provider/provider.dart';
import 'features/splash/presentation/views/splash_view.dart';

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
