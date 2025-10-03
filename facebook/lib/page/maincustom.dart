import 'package:facebook/page/friends.dart';
import 'package:facebook/page/marketplace.dart';
import 'package:facebook/page/newsfeed.dart';
import 'package:facebook/page/notification.dart';
import 'package:facebook/page/profile.dart';
import 'package:facebook/page/reels.dart';
import 'package:flutter/material.dart';

class MainCustomPage extends StatefulWidget {
  const MainCustomPage({super.key});

  @override
  State<MainCustomPage> createState() => _MainCustomPageState();
}

class _MainCustomPageState extends State<MainCustomPage> {
  int currentpage=0;
  List pages=[
    const Newsfeed(),
    const ReelsPage(),
    const FriendsPage(),
    const MarketplacePage(),
    const NotificationPage(),
    const ProfilePage()
  ];

  void ontap(int index){
    setState(() {
      currentpage = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentpage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentpage,
        type: BottomNavigationBarType.fixed,
        onTap: ontap,
        items: const[
          BottomNavigationBarItem(icon: Icon(Icons.home), label:"Balay"),
          BottomNavigationBarItem(icon: Icon(Icons.ondemand_video), label:"Lantaw"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label:"Barkada"),
          BottomNavigationBarItem(icon: Icon(Icons.local_convenience_store), label:"Balaklan"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label:"Ting!"),
          BottomNavigationBarItem(icon: CircleAvatar(backgroundImage: AssetImage("assets/profile/prof6.jpg"),), label:"Chura")
        ],
      ),
    );
  }
}