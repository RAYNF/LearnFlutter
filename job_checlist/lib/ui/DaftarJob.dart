import 'package:flutter/material.dart';

class DaftarJob extends StatefulWidget {

   List <String> DaftarDoneJob ; 

  DaftarJob({super.key,required this.DaftarDoneJob});



  @override
  State<DaftarJob> createState() => _DaftarJobState();
}

class _DaftarJobState extends State<DaftarJob> {
  
  final List<String> jobs = [
    'Etika Profesi - Proposal',
    'Ketrampilan Interpersonal - Proposal',
    'Kriptografi - Koding'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: jobs.length,
        itemBuilder: (context, index) {
          return JobList(
            judul: jobs[index],
            selesai: widget.DaftarDoneJob.contains(jobs[index]),
            check: () { 
              setState(() {
                widget.DaftarDoneJob.add(jobs[index]);
              });
             },
          );
        });
  }
}

class JobList extends StatelessWidget {

final  String judul;
 final bool selesai;
 final Function() check;

 JobList({super.key,required this.judul,required this.selesai,required this.check});
 
  
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(judul),
      trailing: selesai ? Icon(Icons.done) 
      : ElevatedButton(onPressed: check, child: Text("Done")),
    );
  }
}
