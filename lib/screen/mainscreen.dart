import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../models/user.dart';
import 'buyertabscreen.dart';
import 'loginscreen.dart';
import 'profiletabscreen.dart';
import 'sellertabscreen.dart';

class MainScreen extends StatefulWidget {
  final User user;

  const MainScreen({super.key, required this.user});
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late List<Widget> tabchildren;
  int _currentIndex = 1;
  String maintitle = "Buyer";

  @override
  void initState() {
    super.initState();
    print(widget.user.name);
    print("Mainscreen");
    tabchildren = [
      BuyerTabScreen(
        user: widget.user,
      ),
      SellerTabScreen(user: widget.user),
      ProfileTabScreen(user: widget.user),
      // NewsTabScreen(user: widget.user)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Your Barterlt'),
      // ),
      body: tabchildren[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.attach_money,
                ),
                label: "Buyer"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.store_mall_directory,
                ),
                label: "Seller"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile"),
            // BottomNavigationBarItem(
            //     icon: Icon(
            //       Icons.newspaper,
            //     ),
            //     label: "News")
          ]),
    );
  }

  void onTabTapped(int value) {
    setState(() {
      _currentIndex = value;
      if (_currentIndex == 0) {
        maintitle = "Buyer";
      }
      if (_currentIndex == 1) {
        maintitle = "Seller";
      }
      if (_currentIndex == 2) {
        maintitle = "Profile";
      }
    });
  }
}

  // drawer: Drawer(
      //   elevation: 10.0,
      //   child: ListView(
      //     children: <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(color: Colors.cyan.shade100),
      //         child: Row(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: <Widget>[
      //             const CircleAvatar(
      //               backgroundImage: AssetImage("assets/images/profile.JPG"),
      //               radius: 40.0,
      //             ),
      //             Column(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               crossAxisAlignment: CrossAxisAlignment.start,
      //               children: <Widget>[
      //                 Text(
      //                   widget.user.name.toString(),
      //                   style: const TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.black,
      //                       fontSize: 20.0),
      //                 ),
      //                 const SizedBox(height: 10.0),
      //                 Text(
      //                   widget.user.email.toString(),
      //                   style: const TextStyle(
      //                       fontWeight: FontWeight.bold,
      //                       color: Colors.black,
      //                       fontSize: 14.0),
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //       ),
      //       ListTile(
      //         leading: const Icon(Icons.attach_money),
      //         title: const Text('Buyer', style: TextStyle(fontSize: 18)),
      //         onTap: () {
      //           () => Navigator.pushReplacement(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (content) => const BuyerTabScreen(
      //                         user: User,
      //                       )));
      //         },
      //       ),
      //       const Divider(height: 1.0, thickness: 1.0),
      //       ListTile(
      //         leading: const Icon(Icons.shopping_bag),
      //         title: const Text('Seller', style: TextStyle(fontSize: 18)),
      //         onTap: () {
      //           () => Navigator.pushReplacement(
      //               context,
      //               MaterialPageRoute(
      //                   builder: (content) => const SellerTabScreen(
      //                         user: User,
      //                       )));
      //         },
      //       ),
      //       const Divider(height: 1.0, thickness: 1.0),
      //       ListTile(
      //         leading: const Icon(Icons.person),
      //         title: const Text('Profile', style: TextStyle(fontSize: 18)),
      //         onTap: () {
      //           // Here you can give your route to navigate
      //         },
      //       ),
      //       // const SizedBox(
      //       //   height: 350,
      //       // ),
      //       // ListTile(
      //       //   leading: Icon(Icons.close),
      //       //   title: Text('Close Drawer', style: TextStyle(fontSize: 18)),
      //       //   onTap: () {
      //       //     Navigator.of(context).pop();
      //       //   },
      //       // ),
      //     ],
      //   ),
      // ),