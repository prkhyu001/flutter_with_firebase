import 'package:flutter/material.dart';
import 'package:newtest/books/add_book_page.dart';
import 'package:newtest/books/book_list_view_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class BookList extends StatelessWidget {
  BookList({Key? key}) : super(key: key);

  final viewModel = BookListViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('도서 리스트 앱'),
      ),
      body: StreamBuilder<QuerySnapshot>(
          stream: viewModel.booksStream,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }

            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Loading");
            }

            return ListView(
              children: snapshot.data!.docs.map((DocumentSnapshot document) {
                Map<String, dynamic> data =
                    document.data()! as Map<String, dynamic>;
                return Dismissible(
                  key: ValueKey(document.id),
                  // onDismissed: (DismissDirection direction){
                  //   if (direction == DismissDirection.endToStart)
                  // },
                  onDismissed: (_){
                    viewModel.deleteBook(document.id);
                  },
                  background: Container(
                    alignment: Alignment.centerLeft,
                    color: Colors.amber,
                    child: Icon(Icons.delete, color: Colors.white),
                  ),
                  child: ListTile(
                    title: Text(data['title']),
                    subtitle: Text(data['author']),
                  ),
                );
              }).toList(),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddBookPage()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
