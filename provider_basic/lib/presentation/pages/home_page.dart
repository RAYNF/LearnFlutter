import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basic/presentation/pages/second_page.dart';
import 'package:provider_basic/presentation/provider/data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                Consumer<DataClass>(builder: (context, data, child) {
                  return Text('${data.x}');
                }),
                Spacer(),
                Text('Total')
              ],
            ),
          ),
          SizedBox(height: 100),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Row(
              children: [
                GestureDetector(
                  child: Container(
                    width: 60,
                    height: 60,
                    child: Icon(Icons.add),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1)),
                  ),
                  onTap: () {
                    if (context.read<DataClass>().x >= 5) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("full"),
                        action: SnackBarAction(label: "ya", onPressed: () {}),
                      ));
                    } else {
                      context.read<DataClass>().increment();
                    }
                  },
                ),
                Spacer(),
                Container(
                  height: 60,
                  width: 200,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return SecondPage();
                            }));
                          },
                          child: Text("Next Page"),
                        ),
                        Spacer(),
                        Icon(Icons.skip_next)
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
