import 'package:basic_sqflite/data/database/local_datasource.dart';
import 'package:basic_sqflite/data/models/note.dart';
import 'package:basic_sqflite/pages/home_page.dart';
import 'package:flutter/material.dart';

class EditPage extends StatefulWidget {

  final Note note;
  static const routeName = 'edit_page';

  const EditPage({super.key, required this.note});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();

  void iniState(){
    _titleController.text = widget.note.title;
    _contentController.text = widget.note.content;
    super.initState();
  }

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
                        id: widget.note.id,
                        title: _titleController.text,
                        content: _contentController.text);

                    LocalDataBase().updateNoteById(note);
                    Navigator.pushNamed(context, HomePage.routeName);
                  }
                },
                child: Text('simpan'))
          ],
        ),
      ),
    );
  }
}