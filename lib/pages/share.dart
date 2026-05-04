import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproj/pages/pageM.dart';
import 'package:flutterproj/pages/tarifPage.dart';

class share extends StatefulWidget {
  const share({super.key});

  @override
  State<share> createState() => _shareState();
}

class _shareState extends State<share> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: SizedBox(
          width: 300,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 60),  // 👈 отступ только сверху
                child: Row(
                  children: [
                    SizedBox(
                      width: 250,
                      child: Column(
                        children: [
                          Text(
                            'Пришглашайте друзей и получайте бонусы',
                            style: TextStyle(fontSize: 19, color: Colors.white),
                          ),

                        ],
                      ),
                    ),

                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                '7 дней беслптаного тарифа за каждого авторизованного пользователя',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),

              const SizedBox(height: 20),

              // Кнопка с Row внутри
              SizedBox(
                width: 298,
                height: 36,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF76D969),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 8),

                      // SVG иконка 1

                      const SizedBox(width: 8),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Перейти к оплате',
                              style: TextStyle(fontSize: 10, color: Colors.black),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),



                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),


              // Кнопка с Row внутри
              SizedBox(

                width: 298,
                height: 36,

                child: ElevatedButton(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF3F3F3F),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(width: 8),

                      // SVG иконка 1

                      const SizedBox(width: 8),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Как это работате',
                              style: TextStyle(fontSize: 10, color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),

                          ],
                        ),
                      ),

                      SvgPicture.asset(
                        'images/IconPage1.svg',
                        width: 21,
                        height: 21,
                        colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),

                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),

              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'авторизовались пользоваетили',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              SizedBox(
                child: Column(
                  children: [
                    const SizedBox(height: 50),
                    Text(
                      '0',
                      style: TextStyle(fontSize: 40, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'авторизовались пользоваетили',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              // Нижняя навигация
              Container(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BottomItemSvg(
                      asset: 'images/IconP1.svg',
                      label: 'Подключиться',
                      onTap: () {},
                    ),
                    BottomItemSvg(
                      asset: 'images/IconP2.svg',
                      label: 'Тарифы',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const tarifPage()),
                        );
                      },
                    ),
                    BottomItemSvg(
                      asset: 'images/IconP3.svg',
                      label: 'Поделиться',
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const share()),
                        );
                      },
                    ),
                    BottomItemSvg(
                      asset: 'images/IconP4.svg',
                      label: 'Профиль',
                      onTap: () {},
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
