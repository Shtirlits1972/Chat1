import 'package:chat/components/body.dart';
import 'package:chat/constants.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kPrimaryColor,
        child: Icon(
          Icons.person_add_alt_1,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: buildBottomnavigationBar(),
    );
  }

  BottomNavigationBar buildBottomnavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: (value){setState(() {
                _selectedIndex = value;
              });},
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.messenger), label: 'Chats'),
        BottomNavigationBarItem(icon: Icon(Icons.people), label: 'People'),
        BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Calls'),
        BottomNavigationBarItem(
            icon: CircleAvatar(radius: 14,
              backgroundImage: AssetImage('assets/images/user_2.png'),
            ),
            label: 'Profile'),
      ],
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Text('Chats'),
      actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
    );
  }
}
