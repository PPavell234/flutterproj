import 'package:flutter/material.dart';

class PageM extends StatefulWidget {
  const PageM({super.key});

  @override
  State<PageM> createState() => _PageMState();
}

class _PageMState extends State<PageM> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),  // 👈 Цвет #2B2B2B
      appBar: AppBar(
        title: const Text('Строительный Маркетплейс12'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Страница PageM работает!',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 12),
            Image.asset(
              'images/Group4.png',  //
              width: 150,
              height: 150,
              errorBuilder: (context, error, stackTrace) {
                return const Text('Ошибка: изображение не найдено');
              },
            ),
            const Text(
              'Страница PageM работает!',
              style: TextStyle(fontSize: 24),
            )
          ],
        ),
      ),
    );
  }
}