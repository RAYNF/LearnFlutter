import 'package:flutter/material.dart';
import 'package:job_checlist/ui/DaftarJob.dart';
import 'package:job_checlist/ui/DoneModuleList.dart';

class HalamanUtama extends StatefulWidget {


 HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  //wadah penampung 
  List <String> DaftarDoneJob =[];  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Checker"),
        actions: [
          IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            //wadah penampung dikirimkan
            return DoneModuleList(DaftarDoneJob: DaftarDoneJob);
          }));
        }, icon: Icon(Icons.done)),
        ],
      ),
      //wadah penampung dikirimkan 
      body: DaftarJob(DaftarDoneJob: DaftarDoneJob),
    );
  }
}