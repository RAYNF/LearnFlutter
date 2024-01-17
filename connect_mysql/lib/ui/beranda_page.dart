import 'dart:convert';

import 'package:connect_mysql/ui/edit_page.dart';
import 'package:connect_mysql/ui/input_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  List brgData = [];
  Future<void> baca_data() async {
    String url =
        "http://localhost/belajar/LearnFlutter/connect_mysql/lib/data/koneksi/konkesi.php";
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        setState(() {
          brgData = data;
        });
        ;
      }
    } catch (e) {
      print("koneksi gagal");
    }
  }

  Future<void> hapus_data(String id) async {
    String url =
        "http://localhost/belajar/LearnFlutter/connect_mysql/lib/data/koneksi/hapus.php";
    try {
      final response = await http.post(Uri.parse(url), body: {'id': id});
      if (response.statusCode == 200) {
        print("berhasil");
      }
    } catch (e) {
      print(e);
    }
  }

  void initState() {
    baca_data();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Container(
            color: Colors.amber,
            width: double.infinity,
            child: ListView.separated(
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Colors.black,
                );
              },
              itemCount: brgData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(brgData[index]["nama_barang"]),
                  subtitle: Text(brgData[index]["harga_barang"]),
                  trailing: IconButton(
                      onPressed: () {
                        hapus_data(brgData[index]["id"]);
                      },
                      icon: Icon(Icons.delete)),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return EditPage(
                        listBarang: {
                          "id": brgData[index]['id'],
                          "nama_barang": brgData[index]["nama_barang"],
                          "harga_barang": brgData[index]["harga_barang"]
                        },
                      );
                    }));
                  },
                );
              },
            ),
          )),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return InputPage();
                  },
                ));
              },
              child: Icon(Icons.add))
        ],
      )),
    );
  }
}
