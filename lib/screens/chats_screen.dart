import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/chat_tile.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreen();
}

class _ChatsScreen extends State<ChatsScreen> {
  
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
              Text("Edit", style: TextStyle(
                 color: Colors.blueAccent
              ),),
              Text("Chats", style: TextStyle(
                fontWeight: FontWeight.w600,
              ),),
              SvgPicture.asset(
                'assets/icons/Edit Icon.svg',
                width: 24,
                height: 24,
              ),
          ],
        ),
      ),

      body: ListView(
        children: [ Padding(padding: EdgeInsets.only(top: 8),
        child: Center(
          child: SizedBox(
            width: 380,
            height: 40,
            child: TextField(
            textAlign: TextAlign.center,
            textAlignVertical: TextAlignVertical.center,
            decoration: InputDecoration(

              hint: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.search),
                  SizedBox(width: 10,),
                  const Text("Search for messages or users", style: TextStyle(color: Color(0xFF3C3C43)))
                ],
              ),

             
              filled: true,
              fillColor: Colors.grey.shade200,

              contentPadding: EdgeInsets.zero,

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.black, width: 1,
                ),
              )
            ),
            ),
          ),
          ),
          ),

          SizedBox(height: 25,),

          ChatTile(
            name: "Alex Smith",
            message: "Привет! как дела?",
            time: "12:32",
            unreadCount: 3,
            userIcon: "A",
          ),

          ChatTile(
            name: "John",
            message: "Hello",
            time: "13:20",
            unreadCount: 0,
            userIcon: "J",
          ),

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