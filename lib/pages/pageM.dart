import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutterproj/pages/tarifPage.dart'; //Добавление для svg

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

              SizedBox(
                child:    Row(
                  mainAxisSize: MainAxisSize.min, //цетрумем Row
                  children: [
                    const SizedBox(height: 180),

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
              ),

              Column(
                children: [
                  const Text(
                    'Подключиться',  //
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  const SizedBox(height: 20),  // height, а не width (вертикальный отступ)
                  Image.asset(
                    'images/Group4.png',
                    width: 202,
                    height: 202,
                  ),
                  const SizedBox(height: 50),

                ],
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
                      SvgPicture.asset(
                        'images/IconPage1.svg',
                        width: 21,
                        height: 21,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),

                      const SizedBox(width: 8),

                      const Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Автовыбор',
                              style: TextStyle(fontSize: 10, color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              'Самый быстрый сервер',
                              style: TextStyle(fontSize: 10, color: Colors.white),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),

                      SvgPicture.asset(
                        'images/IconPage2.svg',
                        width: 21,
                        height: 21,
                        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      ),

                      const SizedBox(width: 8),
                    ],
                  ),
                ),
              ),
              // Нижняя навигация
              Container(
                padding: const EdgeInsets.only(bottom: 20),  // 👈 отступ снизу 20
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
                      onTap: () {},
                    ),
                    BottomItemSvg(
                      asset: 'images/IconP4.svg',
                      label: 'Профиль',
                      onTap: () {},
                    ),
                  ],
                ),
              )






            ],
          ),
        ),
      ),
    );
  }

}
// САМ ВИДЖЕТ - разместите его внизу файла или в отдельном файле
class BottomItemSvg extends StatelessWidget {
  final String asset;
  final String label;
  final VoidCallback? onTap;  // 👈 обязательно добавьте это поле

  const BottomItemSvg({
    super.key,
    required this.asset,
    required this.label,
    this.onTap,  // 👈 добавьте в конструктор
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,  // 👈 используйте здесь
      child: Column(
        children: [
          SvgPicture.asset(asset, width: 24, height: 24),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 10, color: Colors.white)),
        ],
      ),
    );
  }
}