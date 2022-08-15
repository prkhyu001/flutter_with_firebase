import 'package:flutter/material.dart';
import 'package:newtest/instagram/account_page.dart';
import 'package:newtest/instagram/home_page.dart';
import 'package:newtest/instagram/search_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

// alt + enter = to wrap with something
// 변수 = 상태, 상태가 있는것 => StatefulWidget
// 커서가 위에 있는 클래스/메서드로 ctrl + B 로 이동할 수 있다.
// ctrl + space 로 입력 가능한 옵션들을 탐색할 수 있다.
// spacer() 라는 것을 SizedBox 와 동일하게 사용가능하다.

class BottomTapPage extends StatefulWidget {
  const BottomTapPage({Key? key, required this.title, required this.user}) : super(key: key);
  final String title;
  final User user;

  @override
  State<BottomTapPage> createState() => _BottomTapPageState();
}

class _BottomTapPageState extends State<BottomTapPage> {
  var _index = 0; //페이지 인덱스

  // final _pages = [
  //   HomePage(user: widget.user,),
  //   SearchPage(),
  //   AccountPage(),
  // ];

  List _pages = [];

  @override
  void initState() {
    super.initState();
    _pages = [
      HomePage(user: widget.user,),
      SearchPage(),
      AccountPage(user: widget.user,),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _pages[_index],

      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
        currentIndex: _index, //선택된 인덱스
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.assignment),
          ),
          BottomNavigationBarItem(
            label: 'Account',
            icon: Icon(Icons.account_circle),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }


  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }
}


