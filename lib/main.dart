import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/services/api_service.dart';
import 'package:provider/provider.dart';
import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      Provider<ApiService>(create: (context)=>ApiService()),
    ], child: const MyApp()),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
