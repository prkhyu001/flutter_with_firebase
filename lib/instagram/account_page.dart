import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key, required this.user}) : super(key: key);

  final User user;

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  // _buildAppBar() 는 일반 Widget 은 안되고, PreferredSizeWidget 만 된다!
  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: <Widget>[
        IconButton(onPressed: () {
          FirebaseAuth.instance.signOut();
          GoogleSignIn().signOut();
        },
            icon: Icon(Icons.exit_to_app))
      ],
    );
  }

  Widget _buildBody(){
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: 80.0,
                    height: 80.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://pixabay.com/get/g0d8fe3ab60ebcce78a59244bf31445aace484f1bbbc5352af87ce5bc80943463a2816ef26a7ecfea430193927b7e6671_640.jpg'),
                    ),
                  ),
                  Container(
                    width: 80.0,
                    height: 80.0,
                    alignment: Alignment.bottomRight,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        SizedBox(
                          width: 23.0,
                          height: 23.0,
                          child: FloatingActionButton(onPressed: null,
                            backgroundColor: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: 20.0,
                          height: 20.0,
                          child: FloatingActionButton(onPressed: null,
                            backgroundColor: Colors.blueAccent,
                            child: Icon(Icons.add),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(8.0)),
              Text('HyunJoo Park',
              style: TextStyle(fontWeight: FontWeight.bold),)

            ],
          ),
          Text('0\n게시물',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 16.0),),
          Text('0\n팔로워',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),),
          Text('0\n팔로잉',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16.0),),
        ],
      ),
    );
  }
}
