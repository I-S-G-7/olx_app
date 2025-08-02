import 'package:flutter/material.dart';
import 'package:olx_app/Selling_page.dart';
import 'package:olx_app/accounts_page.dart';
import 'package:olx_app/adds_page.dart';
import 'package:olx_app/chats_page.dart';
import 'package:olx_app/main_page.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';

class navbar extends StatefulWidget {
  const navbar({super.key});
  @override
  State<navbar> createState() => _navbarState();
}

class _navbarState extends State<navbar> {
  final PersistentTabController _controller = PersistentTabController();

  final List<Widget> _screens = const [
    MainPage(),
    ChatsPage(),
    SellingPage(),
    AddsPage(),
    AccountPage(),
  ];

  Widget _buildSellButtonIcon() {
    return Container(
      width: 60,
      height: 60,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        gradient: SweepGradient(
          colors: [
            Colors.red, Colors.orange, Colors.yellow,
            Colors.green, Colors.blue, Colors.indigo,
            Colors.purple, Colors.red,
          ],
          startAngle: 0.0,
          endAngle: 6.3,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFF00022E),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }

  List<PersistentTabConfig> _buildTabs() => [
    PersistentTabConfig(
      screen: _screens[0],
      item:  ItemConfig(
        icon: Icon(Icons.home),
        title: "Home",
        activeForegroundColor: Colors.white,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
    PersistentTabConfig(
      screen: _screens[1],
      item:  ItemConfig(
        icon: Icon(Icons.chat),
        title: "Chats",
        activeForegroundColor: Colors.white,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
    PersistentTabConfig(
      screen: _screens[2],
      item: ItemConfig(
        icon: _buildSellButtonIcon(),
        title: "",
        activeForegroundColor: Colors.transparent,
        inactiveForegroundColor: Colors.transparent,
      ),
    ),
    PersistentTabConfig(
      screen: _screens[3],
      item:  ItemConfig(
        icon: Icon(Icons.list),
        title: "My Ads",
        activeForegroundColor: Colors.white,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
    PersistentTabConfig(
      screen: _screens[4],
      item:  ItemConfig(
        icon: Icon(Icons.person),
        title: "Account",
        activeForegroundColor: Colors.white,
        inactiveForegroundColor: Colors.grey,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: PersistentTabView(backgroundColor: const Color(0xFF00022E),
        controller: _controller,
        tabs: _buildTabs(),
        navBarBuilder: (navBarConfig) => Style13BottomNavBar(
          navBarConfig: navBarConfig,
          navBarDecoration:  NavBarDecoration(
            color: Color(0xFF333366),
          ),
        ),
      ),
    );
  }
}
