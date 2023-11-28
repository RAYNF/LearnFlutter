import 'package:basic_sqflite/data/database/local_datasource.dart';
import 'package:basic_sqflite/data/models/note.dart';
import 'package:flutter/material.dart';

class AddPage extends StatefulWidget {
  static const routeName = 'add_page';

  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Title wajib di isi';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _contentController,
              decoration: const InputDecoration(
                labelText: 'content',
                border: OutlineInputBorder(),
              ),
              maxLines: 8,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'content wajib di isi';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Note note = Note(
                        title: _titleController.text,
                        content: _contentController.text);

                    LocalDataBase().insertNote(note);
                    _titleController.clear();
                    _contentController.clear();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('note berhasil di tambahkan'),
                      ),
                    );
                    Navigator.pop(context);
                  }
                },
                child: Text('simpan'))
          ],
        ),
      ),
    );
  }
}
