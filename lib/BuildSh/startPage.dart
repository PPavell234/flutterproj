import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class startPage extends StatefulWidget {
  const startPage({super.key});

  @override
  State<startPage> createState() => _startPageState();
}

class _startPageState extends State<startPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Center(
        child: SizedBox(
          width: 350, // ширина Column
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                children: [
                  SvgPicture.asset(
                    'images/startPage/Icon.svg',
                    width: 40,
                    height: 40,
                  ),
                  const SizedBox(width: 10),  // отступ между иконкой и текстом
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,  // текст слева
                    children: const [
                      Text(
                        'Строительный Маркетплейс',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      Text(
                        '',
                        style: TextStyle(fontSize: 14, color: Colors.black),
                      ),
                    ],
                  )
                ],
              ),
              //
              SizedBox(

               child: Column(
                 children: [
                   const SizedBox(height: 120),
                   Text(
                     'Добро пожаловать',
                     style: TextStyle(fontSize: 20, color: Colors.black),
                   ),
                   const SizedBox(height: 20),
                   Text(
                     'Выбирите вашу роль',
                     style: TextStyle(fontSize: 20, color: Colors.black),
                   ),
                   const SizedBox(height: 50),

                 ],
               ),
              ),

              // Первый элемент
              Transform.scale(
                scale: 0.9,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'images/startPage/Background-2.svg',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 12),
                    Expanded(  // 👈 вместо SizedBox(width: 240)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Мастер',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            'ищу мастера и материалы',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    SvgPicture.asset(
                      'images/startPage/actionButton.svg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

// Второй элемент
              Transform.scale(
                scale: 0.9,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'images/startPage/Background.svg',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 12),
                    Expanded(  // 👈 вместо SizedBox(width: 240)
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Мастер',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            'Выполняю работы, закупаю материалы',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    SvgPicture.asset(
                      'images/startPage/NoAciton.svg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 22),

// Третий элемент
              Transform.scale(
                scale: 0.9,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'images/startPage/Background-1.svg',
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Поставщик',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                          ),
                          Text(
                            'Выполняю работы, закупаю материалы',
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 12),
                    SvgPicture.asset(
                      'images/startPage/NoAciton.svg',
                      width: 30,
                      height: 30,
                    ),
                  ],
                ),
              ),

            ],
          ),


        ),

      ),


    );
  }
}
