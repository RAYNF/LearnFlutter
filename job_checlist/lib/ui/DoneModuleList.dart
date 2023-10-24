import 'package:flutter/material.dart';

class DoneModuleList extends StatefulWidget {
   List <String> DaftarDoneJob; 
 DoneModuleList({super.key, required this.DaftarDoneJob});

  @override
  State<DoneModuleList> createState() => _DoneModuleListState();
}

class _DoneModuleListState extends State<DoneModuleList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Judul Yang sudah diselesaikan"),
      ),
      body: ListView.builder(
        itemCount: widget.DaftarDoneJob.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text(widget.DaftarDoneJob[index]),
          );
        }),
    );
  }
}