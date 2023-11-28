import 'package:basic_sqflite/data/database/local_datasource.dart';
import 'package:basic_sqflite/data/models/note.dart';
import 'package:basic_sqflite/pages/edit_page.dart';
import 'package:basic_sqflite/pages/home_page.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  static const routeName = 'detail_page';
  final Note note;
  const DetailPage({super.key, required this.note});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Delete note'),
                        content: const Text('yakin?'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('cancel')),
                          TextButton(
                              onPressed: () async {
                                await LocalDataBase()
                                    .deleteNoteById(widget.note.id!);
                                Navigator.pushNamed(
                                    context, HomePage.routeName);
                              },
                              child: const Text('Delete'))
                        ],
                      );
                    });
              },
              icon: Icon(Icons.delete))
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(widget.note.title),
          SizedBox(
            height: 8,
          ),
          Text(widget.note.content)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, EditPage.routeName,
              arguments: widget.note);
        },
        child: Icon(Icons.edit),
      ),
    );
  }
}
