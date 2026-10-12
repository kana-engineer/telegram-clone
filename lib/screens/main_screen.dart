import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:telegram_clone/screens/calls_screen.dart';
import 'package:telegram_clone/screens/chats_screen.dart';
import 'package:telegram_clone/screens/contacts_screen.dart';

class MainScreen extends StatefulWidget{
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          ContactsScreen(),
          CallsScreen(),
          ChatsScreen(),
          Center(child: Text("Settings"),)
        ],
      ),
        bottomNavigationBar: BottomNavigationBar(

        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Color(0xFF007AFF),
        unselectedItemColor: Colors.grey,
        currentIndex: selectedIndex,

        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
         BottomNavigationBarItem(
            icon: Padding(
              padding: EdgeInsets.only(bottom: 6),
              child: SvgPicture.asset(
                'assets/icons/Icon.svg',
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  selectedIndex == 0 ?const Color(0xFF007AFF) : Colors.grey,
                  BlendMode.srcIn,
                ),
              ),
            ),
            label: "Contacts",
          ),
         BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: SvgPicture.asset(
              'assets/icons/Icon(1).svg',
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                selectedIndex == 1 ?  const Color(0xFF007AFF) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
          ),
          label: "Calls",
        ),
         BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: SvgPicture.asset(
              'assets/icons/Icon(2).svg',
              width: 24,
              height: 24,
               colorFilter: ColorFilter.mode(
                selectedIndex == 2 ? const Color(0xFF007AFF) : Colors.grey,
                BlendMode.srcIn,
              ),
            ),
            ), 
            label: "Chats",
        ),
         BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.only(bottom: 6),
            child: Container(
              padding: const EdgeInsets.all(1),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: selectedIndex == 3 ? const Color(0xFF007AFF) : Colors.transparent,
                  width: 2,
                )
              ),
              child: SvgPicture.asset(
              'assets/icons/account-avatar-profile-user-9-svgrepo-com.svg',
              width: 27,
              height: 27,
            ),
            ),
            ),
            label: "Settings"
          )
        ],
      ),
    );
  }
}