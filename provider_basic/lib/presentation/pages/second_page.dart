import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_basic/presentation/provider/data.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<DataClass>(builder: (context, data, child) {
                    return Text('${data.x}');
                  }),
                  const Text("-- Total")
                ],
              ),
            ),
          ),
          SizedBox(height: 100),
          Container(
            width: double.maxFinite,
            margin: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    if (Provider.of<DataClass>(context, listen: false).x <= 0) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text("limit"),
                        action: SnackBarAction(label: "ya", onPressed: () {}),
                      ));
                    } else {
                      Provider.of<DataClass>(context, listen: false)
                          .decrement();
                    }
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    child: const Icon(Icons.remove),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Flexible(
                    child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const[
                        Icon(Icons.skip_previous),
                        Text("Prev page")
                      ],
                    ),
                  ),
                )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
