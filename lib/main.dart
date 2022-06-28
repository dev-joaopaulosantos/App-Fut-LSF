import 'dart:io';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'home_pages/home_page.dart';

void main() async {
  await Future.delayed(Duration(seconds: 1));
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    OneSignal.shared.setAppId("73d9ce18-8530-4a9f-b328-0f790a9e868b");
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color.fromARGB(255, 40, 104, 43),
          brightness: Brightness.light,
        ),
      ),
      debugShowCheckedModeBanner: false,
      title: 'Copão Urbano-Rural 2022',
      home: const HomePage(),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  // Classe criada para funcionar o carregamento de imagens nos Androids 5 e 6.
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
