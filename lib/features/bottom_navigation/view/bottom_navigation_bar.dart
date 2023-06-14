import 'package:flutter/material.dart';
import 'package:flutter_profile_project/features/categories/view/categories_screen.dart';
import 'package:flutter_profile_project/features/messages/view/chat_screen.dart';
import 'package:flutter_profile_project/features/main/view/main_screen.dart';
import 'package:flutter_profile_project/features/menu/view/menu_screen.dart';
import 'package:flutter_profile_project/features/profile/view/profile_screen.dart';
import 'package:flutter_profile_project/ui/colors/colors.dart';
import 'package:flutter_profile_project/ui/texstyle/textstyle.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  final TextEditingController emailController = TextEditingController();
  int _selectedIndex = 3;
  static const List<Widget> _widgetOptions = <Widget>[
    MainScreen(),
    CategoriesScreen(),
    ChatScreen(),
    ProfileScreen(),
    MenuScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              spreadRadius: 0.5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/images/main_icon.png'),
                  color: AppColors.colorFF9500,
                  size: 24,
                ),
                label: 'Главная',
                icon: ImageIcon(
                  AssetImage('assets/images/main_icon.png'),
                  size: 24,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/images/categories_icon.png'),
                  color: AppColors.colorFF9500,
                  size: 24,
                ),
                label: 'Категории',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/categories_icon.png',
                  ),
                  size: 24,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/images/chat_icon.png'),
                  color: AppColors.colorFF9500,
                  size: 24,
                ),
                label: 'Чат',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/chat_icon.png',
                  ),
                  size: 24,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/images/profile_icon.png'),
                  color: AppColors.colorFF9500,
                  size: 24,
                ),
                label: 'Профиль',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/profile_icon.png',
                  ),
                  size: 24,
                ),
              ),
              BottomNavigationBarItem(
                activeIcon: ImageIcon(
                  AssetImage('assets/images/menu_icon.png'),
                  color: AppColors.colorFF9500,
                  size: 24,
                ),
                label: 'Меню',
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/menu_icon.png',
                  ),
                  size: 24,
                ),
              ),
            ],
            unselectedLabelStyle: AppTextStyle.style500w10.copyWith(
              color: AppColors.color292D32,
            ),
            selectedLabelStyle: AppTextStyle.style500w10.copyWith(
              color: AppColors.colorFF9500,
            ),
            unselectedItemColor: AppColors.color292D32,
            useLegacyColorScheme: false,
            // backgroundColor: AppColors.color000000,
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex,
            onTap: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
