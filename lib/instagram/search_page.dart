import 'package:flutter/material.dart';
import 'package:newtest/instagram/upload_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildBody(),
    floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, 
              MaterialPageRoute(builder: (context) => UploadPage()));
        },
    child: Icon(Icons.create),
    backgroundColor: Colors.blueAccent),
    );
  }

  Widget _buildBody() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1.0,
          mainAxisSpacing: 1.0,
          crossAxisSpacing: 1.0),
        itemCount: 5,
        itemBuilder: (context, index){
          return _buildListItem(context, index);
        });
  }

  Widget _buildListItem(BuildContext context, int index) {
    return Image.network('https://pixabay.com/get/g0d8fe3ab60ebcce78a59244bf31445aace484f1bbbc5352af87ce5bc80943463a2816ef26a7ecfea430193927b7e6671_640.jpg',
    fit:BoxFit.cover);
  }
}
