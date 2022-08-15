import 'dart:typed_data';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class UploadPage extends StatefulWidget {
  const UploadPage({Key? key}) : super(key: key);

  @override
  State<UploadPage> createState() => _UploadPageState();
}

class _UploadPageState extends State<UploadPage> {
  final textEditingController = TextEditingController();
  final ImagePicker _picker = ImagePicker();

  Uint8List? _image;

  // 메모리 해제
  @override
  void dispose(){
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImage,
        child: Icon(Icons.add_a_photo),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(
      actions: [
        IconButton(onPressed: (){
        },
          icon: Icon(Icons.send),)
      ],
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView( // 이미지가 잘려서 보이는 것을 예방
      child: Column(
        children: [
          _image == null ? Text('No Image') : Image.memory(_image!),
          TextField(
            decoration: InputDecoration(hintText: '내용을 입력하세요'),
            controller: textEditingController,
          )
        ],
      ),
    );
  }

  // void _getImage() {
  //   // var 또는 Future<File>
  //   var image = ImagePicker.pickImage(source: ImageSource.gallery);
  // }

  Future _getImage() async {
    print("클릭이 되는지 확인");
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      _image = await image.readAsBytes();
      setState((){});
    } else {
      // 사진 미 선택 처리
    }
  }
}
