import 'package:flutter/material.dart';
import 'package:instict_flutter_login/views/fragment1.dart';
import 'package:instict_flutter_login/views/fragment2.dart';
import 'package:instict_flutter_login/views/fragment3.dart';
import 'package:instict_flutter_login/views/fragment4.dart';


class HomePageForm extends StatefulWidget {
  const HomePageForm({super.key});

  @override
  State<StatefulWidget> createState() => InitState();
}

class InitState extends State<HomePageForm> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = [
    const FirstPageFragment(),
    const SecondPageFragment(),
    const ThirdPageFragment(),
    const FourthPageFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget initWidget() {
    return Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,size: 20,color: Colors.lightBlue,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business,size: 20,color: Colors.lightBlue,),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school,size: 20,color: Colors.lightBlue,),
            label: 'School',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book,size: 20,color: Colors.lightBlue,),
            label: 'Book',

          ),
        ],
        selectedItemColor: Colors.amber[800],
        currentIndex: _selectedIndex,
            onTap: _onItemTapped,
      ),
        // bottomNavigationBar: Container(
        //   padding: const EdgeInsets.only(top: 20),
        //   child: BottomNavigationBar(
        //     elevation: 20,
        //     showUnselectedLabels: false,
        //     backgroundColor: Colors.white,
        //     type: BottomNavigationBarType.fixed,
        //     selectedItemColor: const Color(0xffFFBD2F),
        //     unselectedItemColor: Colors.grey,
        //     showSelectedLabels: false,
        //     items: const <BottomNavigationBarItem>[
        //       BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage("assets/images/img1.jpg"),
        //           ),
        //           label: ''
        //       ),
        //       BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage("assets/images/img2.jpg"),
        //           ),
        //           label: ''
        //       ),
        //       BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage("assets/images/img3.png"),
        //           ),
        //           label: ''
        //       ),
        //       BottomNavigationBarItem(
        //           icon: ImageIcon(
        //             AssetImage("assets/images/img4.png"),
        //           ),
        //           label: ''
        //       ),
        //     ],
        //     currentIndex: _selectedIndex,
        //     onTap: _onItemTapped,
        //   ),
        // )
    );
  }
}