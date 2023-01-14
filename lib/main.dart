import 'package:flutter/material.dart';
import 'package:widget_practice/screens/home_screen.dart';
import 'package:widget_practice/screens/hotdeal_screen.dart';
import 'package:widget_practice/screens/list_screen.dart';
import 'package:widget_practice/screens/location_screen.dart';
import 'package:widget_practice/screens/login_screen.dart';
import 'package:widget_practice/screens/message_screen.dart';
import 'package:widget_practice/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int navigation_index = 0;
  List<Widget> screens = [
    HomeScreen(),
    ListScreen(),
    HotDealScreen(),
    MessageScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    bottomNavigationHandler(int index) {
      setState(() {
        navigation_index = index;
      });
    }

    return Scaffold(
      body: SafeArea(child: screens[navigation_index]),
      // Bottom Navigation bar
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          iconSize: 35,
          type: BottomNavigationBarType.fixed,
          currentIndex: navigation_index,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: (value) => bottomNavigationHandler(value),
          items: [
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/homescreen/home.png'),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/homescreen/people.png'),
                label: 'People'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/homescreen/hotdeal.png'),
                label: 'Hot deal'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/homescreen/chat.png'),
                label: 'Chat'),
            BottomNavigationBarItem(
                icon: Image.asset('assets/images/homescreen/customer.png'),
                label: 'Customer'),
          ]),
    );
  }
}
