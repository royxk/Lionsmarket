import 'package:flutter/material.dart';
import 'package:widget_practice/screens/Login_screens/signup_screen.dart';
import 'package:widget_practice/screens/emailLogin_screen.dart';

// Main screen : Used item, community, hot deal, chat, profile
import './screens/Main_screens/main_page_screen.dart';
import './screens//Main_screens/list_screen.dart';
import './screens//Main_screens/hotdeal_screen.dart';
import './screens/message_screen.dart';
import './screens/profile_screen.dart';

// Login screen import
import 'package:widget_practice/screens//Main_screens/location_screen.dart';
import 'package:widget_practice/screens/social_login_screen.dart';

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
        home: MyHomePage(),
        routes: {
          '/social_login': (context) => SocialLogin(),
          '/signup' :(context) => SignupScreen(),
          '/email_login':(context) => EmailLogin(),
        });
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
    MainPageScreen(),
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
            BottomNavigationBarItem(icon: Image.asset('assets/images/homescreen/home.png'), label: 'Home'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/homescreen/people.png'), label: 'People'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/homescreen/hotdeal.png'), label: 'Hot deal'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/homescreen/chat.png'), label: 'Chat'),
            BottomNavigationBarItem(icon: Image.asset('assets/images/homescreen/customer.png'), label: 'Customer'),
          ]),
    );
  }
}
