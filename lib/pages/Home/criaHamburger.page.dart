import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CriaHamburgerPage extends StatefulWidget {
  const CriaHamburgerPage({Key? key}) : super(key: key);

  @override
  State<CriaHamburgerPage> createState() => _CriaHamburgerPageState();
}

class _CriaHamburgerPageState extends State<CriaHamburgerPage> {
  int groupValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
            "Monte seu hamburger"
        ),
        //estilo do appbar
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.indigoAccent, Colors.deepPurpleAccent],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [

          SizedBox(height: 20,),
          CupertinoSegmentedControl(
              groupValue : groupValue,
              selectedColor: Colors.deepPurpleAccent,
              unselectedColor: Colors.white,
              borderColor: Colors.deepPurpleAccent,
              pressedColor: Colors.indigoAccent.withOpacity(0.2),
              children: {
                0: buildSegment("Teste1"),
                1: Text("Teste2"),
                2: Text("Teste3"),
                3: Text("Teste4"),
                4: Text("Teste5"),
              },
              onValueChanged: (groupValue) {
                print(groupValue);
              }
          ),
        ],
      ),
    );
  }
  Widget buildSegment(String text) => Container(
    padding: EdgeInsets.all(12),
    child: Column(
      children: [
        Text("Teste2"),
      ],
    ),
  );
}
