import 'package:auth_iti/custom/custom_list_view.dart';
import 'package:auth_iti/screens/login_screen.dart';
import 'package:auth_iti/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> tabs = [
    SignupScreen(),
    LoginScreen(),
    CustomListView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF007E9F),
      ),
      body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed, // إضافي
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Sign Up',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Home',
          ),
        ],
      ),
    );
  }
}
