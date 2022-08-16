
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  const BookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서 리스트 앱'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Flutter 생존코딩'),
            subtitle: Text('오준석'),
          ),
          ListTile(
            title: Text('안드로이드 생존코딩'),
            subtitle: Text('오준석'),
          ),
          ListTile(
            title: Text('새싹 생존코딩'),
            subtitle: Text('박현주'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
