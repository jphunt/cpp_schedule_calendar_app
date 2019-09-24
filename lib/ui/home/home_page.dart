import 'package:cpp_schedule_calendar_app/ui/conference/conference_list_page.dart';
import 'package:cpp_schedule_calendar_app/ui/message/message_list_page.dart';
import 'package:cpp_schedule_calendar_app/ui/schedule/schedule_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _widgetList = [
    SchedulePage(),
    ConferenceListPage(),
    MessageListPage(),
    MessageListPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _widgetList,
        index: _currentIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text("日程"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            title: Text("会议"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text("通知"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("设置"),
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
