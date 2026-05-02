import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; //Добавление для svg

class PageM extends StatefulWidget {
  const PageM({super.key});

  @override
  State<PageM> createState() => _PageMState();
}

class _PageMState extends State<PageM> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: SizedBox(

          width: 300,      // 👈 ширина Column
          child: Column(
            children: [
              // Row с кнопками
              SizedBox(
                height: 120,  // высота всей строки
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 95,
                      height: 23,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3F3F3F),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text(
                          'Базовый',
                          style: TextStyle(fontSize: 10),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: 28,
                      height: 28,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF3F3F3F),
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Image.asset(
                          'images/IconP7.png',
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
              ),

              Row(
                mainAxisSize: MainAxisSize.min, //цетрумем Row
                children: [
                  SvgPicture.asset(
                    'images/IconP5.svg',
                    width: 20,
                    height: 20,
                    fit: BoxFit.contain,  // работает так же как с PNG
                  ),
                  const SizedBox(width: 10),  // отступ между текстами
                  const Text(
                    'Не подключено',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),


              const SizedBox(height: 12),
              Image.asset(
                'images/Group4.png',
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 12),
            ],
          ),
        ),
      ),
    );
  }
}