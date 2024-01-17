import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class EditPage extends StatefulWidget {
  final Map listBarang;

  EditPage({super.key, required this.listBarang});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  TextEditingController nmBarangEdit = TextEditingController();
  TextEditingController hrgBarangEdit = TextEditingController();

  Future<void> update_barang() async {
    String url =
        "http://localhost/belajar/LearnFlutter/connect_mysql/lib/data/koneksi/update.php";
    try {
      final Response = await http.post(Uri.parse(url), body: {
        'id' : widget.listBarang['id'],
        'XnamaBarang': nmBarangEdit.text,
        'XhargaBarang': hrgBarangEdit.text
      });
      if (Response.statusCode == 200) {
        print("input berhasil");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    nmBarangEdit.text = widget.listBarang['nama_barang'];
    hrgBarangEdit.text = widget.listBarang['harga_barang'];

    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nmBarangEdit,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "nama barang",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: hrgBarangEdit,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              labelText: "harga barang",
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                update_barang();
              },
              child: Text('update'))
        ],
      ),
    )));
  }
}
