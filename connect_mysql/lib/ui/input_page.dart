import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class InputPage extends StatelessWidget {
  TextEditingController nmBarang = TextEditingController();
  TextEditingController hrgBarang = TextEditingController();

  Future<void> simpan_barang() async {
    String url =
        "http://localhost/belajar/LearnFlutter/connect_mysql/lib/data/koneksi/save.php";
    try {
      final Response = await http.post(Uri.parse(url),
          body: {'XnamaBarang': nmBarang.text, 'XhargaBarang': hrgBarang.text});
      if (Response.statusCode == 200) {
        print("input berhasil");
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            controller: nmBarang,
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
            controller: hrgBarang,
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
                simpan_barang();
              },
              child: Text('simpan'))
        ],
      ),
    )));
  }
}
