import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutterproj/pages/pageM.dart';

class tarifPage extends StatefulWidget {
  const tarifPage({super.key});

  @override
  State<tarifPage> createState() => _tarifPageState();
}

class _tarifPageState extends State<tarifPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: Center(
        child: SizedBox(
            width: 300,      //ширина Column
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 60),  // 👈 отступ только сверху
                  child: Row(
                    children: [
                      Text(
                        'Камень-Стоун',
                        style: TextStyle(fontSize: 19, color: Colors.white),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Полный доступ к возможностям',
                  style: TextStyle(fontSize: 14, color: Colors.white),

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Column(
                    children: [
                      // Первый элемент
                      Row(
                        children: [
                          SvgPicture.asset(
                            'images/IconP2.svg',
                            width: 21,
                            height: 21,
                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Скорость до 150 MB/s',
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Быстрая загрузка, мгновенное подключение и стабильный интернет',
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),  // отступ между элементами

                      // Второй элемент
                      Row(
                        children: [
                          SvgPicture.asset(
                            'images/IconP2.svg',  // другая иконка
                            width: 21,
                            height: 21,
                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Неограниченное количество устройст',
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Одна почта - без ограничений на количество подключенных устройств',
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      // Второй элемент
                      const SizedBox(height: 30),
                      Row(
                        children: [
                          SvgPicture.asset(
                            'images/IconP2.svg',  // другая иконка
                            width: 21,
                            height: 21,
                            colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          ),
                          const SizedBox(width: 15),
                          const SizedBox(
                            width: 250,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Выделенные сервера',
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  'Меньше нагрузки, больше стабильсти и высокая скоость даже в часы пик',
                                  style: TextStyle(fontSize: 13, color: Colors.white),
                                ),


                              ],



                            ),

                          ),
                        ],
                      ),
                      const SizedBox(height: 100),




                    ],

                  ),


                ),



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
                                '6 месяцев',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '265 Р месяц',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        Text(
                          '1567Р',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 10),

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
                                '6 месяцев',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '265 Р месяц',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        Text(
                          '1567Р',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

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
                                '6 месяцев',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                '265 Р месяц',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),

                        Text(
                          '1567Р',
                          style: TextStyle(fontSize: 10, color: Colors.white),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),

                        const SizedBox(width: 8),
                      ],
                    ),
                  ),
                ),

                //
                const SizedBox(height: 10),

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

                // Нижняя навигация
                Container(
                  padding: const EdgeInsets.only(top: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BottomItemSvg(
                        asset: 'images/IconP1.svg',
                        label: 'Подключиться',
                        onTap: () {
                          // переход на страницу подключения
                        },
                      ),
                      BottomItemSvg(
                        asset: 'images/IconP2.svg',
                        label: 'Тарифы',
                        onTap: () {
                          // 👇 ПЕРЕХОД НА СТРАНИЦУ ТАРИФОВ
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
                          // переход на страницу поделиться
                        },
                      ),
                      BottomItemSvg(
                        asset: 'images/IconP4.svg',
                        label: 'Профиль',
                        onTap: () {
                          // переход на страницу профиля
                        },
                      ),
                    ],
                  ),
                )




              ],



            )

        )
      ),
    );  // 👈 закрывающая скобка Scaffold
  }
}