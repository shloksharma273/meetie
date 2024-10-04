import 'package:flutter/material.dart';
import 'package:meetie/utils/colors.dart';
import 'package:meetie/widgets/home_meeting_button.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  int _page = 0;
  onPageChanged(page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        title: const Text("Meet and Chat"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              HomeMeetingButton(
                  onPressed: () {}, text: 'New Meeting', icon: Icons.videocam),
              HomeMeetingButton(
                  onPressed: () {},
                  text: 'Join Meeting',
                  icon: Icons.add_box_rounded),
              HomeMeetingButton(
                  onPressed: () {},
                  text: 'Schedule a Meet',
                  icon: Icons.calendar_today),
              HomeMeetingButton(
                onPressed: () {},
                text: 'Share Screen',
                icon: Icons.arrow_upward_rounded,
              ),
            ],
          ),
          const Expanded(
            child: Center(
              child: Text('Create/Join Meetings with just a click!', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: footerColor,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: onPageChanged,
        currentIndex: _page,
        // type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet & Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.lock_clock), label: 'Meetings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: 'Contacts'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_outlined), label: 'Settings'),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank), label: 'Meet & Char'),
        ],
      ),
    );
  }
}
