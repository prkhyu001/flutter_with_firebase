import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Instagram with Flutter',
          style: TextStyle(color: Colors.black26, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            color: Colors.black,
          ),
          IconButton(
            icon: const Icon(Icons.menu_sharp),
            onPressed: () {},
            color: Colors.black,
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
          child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'Instagram에 오신 것을 환영합니다.',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text(
                '사진과 동영상을 보려면 팔로우하세요.',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(padding: EdgeInsets.all(16.0)),
              SizedBox(
                width: 260.0,
                child: Card(
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          width: 80.0,
                          height: 80.0,
                          child: CircleAvatar(
                            backgroundImage:
                                // Image.asset(
                                //   'assets/earth_circle.jpg',
                                // ),
                                NetworkImage(
                                    'https://pixabay.com/get/g0d8fe3ab60ebcce78a59244bf31445aace484f1bbbc5352af87ce5bc80943463a2816ef26a7ecfea430193927b7e6671_640.jpg'),
                          ),
                        ),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Text(
                          'mdlhyunjoo@gmail.com',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('박현주'),
                        Padding(padding: EdgeInsets.all(8.0)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network(
                                  'https://pixabay.com/get/g12f5f140107d7c2102a65e633bf1e03d1b9dece2574cf3610d8bbf626dc32476a2a12b4eaa9e101146424c276a6235959ddb0c15ec83b4dbd94b6d1f248d37bc_1920.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network(
                                  'https://pixabay.com/get/gc22e102820835636e3ac0ff3b23dc51406c3ee2125129becb2b79b730e99020ad8643cd59916666e11a42791070339bc_640.jpg',
                                  fit: BoxFit.cover),
                            ),
                            Padding(padding: EdgeInsets.all(1.0)),
                            SizedBox(
                              width: 70.0,
                              height: 70.0,
                              child: Image.network(
                                  'https://pixabay.com/get/g79531fbcd68e4b0df634d68a8f1f97a60fa2f1d0fca320bf3fea9a0d79e116a2518faf301a0ae9c78bcb96c0f51b0821_640.jpg',
                                  fit: BoxFit.cover),
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                        Text('박현주'),
                        Padding(padding: EdgeInsets.all(4.0)),
                        RaisedButton(
                          child: Text('팔로우'),
                          onPressed: () {},
                          color: Colors.blueAccent,
                          textColor: Colors.white,
                        ),
                        Padding(padding: EdgeInsets.all(4.0)),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
