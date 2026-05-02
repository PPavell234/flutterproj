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
        SizedBox(
          width: 300,   // ширина Column
          height: 500,  // высота Column

        )



      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(

        child: Column(

          children: [
            // Кнопка "Базовый"
            // Ваш Row в Flutter
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,  // как Spacer + weight
              crossAxisAlignment: CrossAxisAlignment.center,      // как verticalAlignment
              children: [
                // Первая кнопка "Базовый"
                SizedBox(
                  width: 95,   // width(95.dp)
                  height: 23,  // height(23.dp)
                  child: ElevatedButton(
                    onPressed: () {},  // onClick = {}
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3F3F3F),  // containerColor
                      foregroundColor: Colors.white,              // Color.White
                      padding: const EdgeInsets.only(),  // 👈 только слева 1                 // contentPadding = 0.dp
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),   // скругление (опционально)
                      ),
                    ),
                    child: const Text(
                      'Базовый',
                      style: TextStyle(
                        fontSize: 10,  // fontSize = 10.sp
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),

                // Spacer (растягивает пространство между кнопками)
                const Spacer(),  // как Spacer(modifier = Modifier.weight(1f))

                // Вторая кнопка с иконкой
                SizedBox(
                  width: 28,   // size(28.dp)
                  height: 28,  // size(28.dp)
                  child: ElevatedButton(
                    onPressed: () {},  // onClick = {}
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3F3F3F),  // containerColor
                      padding: EdgeInsets.zero,                   // contentPadding = 0.dp
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Image.asset(
                      'images/IconP7.png',  // R.drawable.iconp7
                      width: 20,
                      height: 20,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.image_not_supported, size: 20, color: Colors.white);
                      },
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Страница PageM работает!',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            const SizedBox(height: 12),
            Image.asset(
              'images/Group4.png',
              width: 150,
              height: 150,
              errorBuilder: (context, error, stackTrace) {
                return const Text(
                  'Ошибка: изображение не найдено',
                  style: TextStyle(color: Colors.white),
                );
              },
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}