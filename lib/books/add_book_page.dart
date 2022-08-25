import 'package:flutter/material.dart';
import 'package:newtest/books/add_book_view_model.dart';

class AddBookPage extends StatefulWidget {
  const AddBookPage({Key? key}) : super(key: key);

  @override
  State<AddBookPage> createState() => _AddBookPageState();
}

class _AddBookPageState extends State<AddBookPage> {
  final _titleController = TextEditingController();
  final _authorController = TextEditingController();

  final viewModel = AddBookViewModel();

  @override
  void dispose() {
    _titleController.dispose();
    _authorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서 추가'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _titleController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '제목',
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          TextField(
            controller: _authorController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: '저자',
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.addBook(
            title: _titleController.text,
            author: _authorController.text,
          );

          Navigator.pop(context);
        },
        child: const Icon(Icons.done),
      ),
    );
  }
}
