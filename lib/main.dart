import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';
import 'package:flutterproj/BuildSh/startPage.dart';
import 'package:flutterproj/pages/pageM.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Строительный Маркетплейс',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const startPage(),  // 👈 Главный экран приложения
    );
  }
}

// 👇 Preview для быстрого просмотра (не влияет на работу приложения)
@Preview(
  name: 'Страница PageM',
  size: Size(360, 800),
)
Widget pageMPreview() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: startPage(),
  );
}