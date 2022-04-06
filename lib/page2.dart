import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Page 2")),
      /*body: Align(
          alignment: Alignment.topRight,
          child: ElevatedButton(
            child: Text('RETOUR'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ));*/
      body: Align(
          alignment: Alignment.center,
          child: Container(
            margin: EdgeInsets.fromLTRB(40, 40, 40, 40),
            padding: EdgeInsets.all(40),
            child: Column(children: [
              Image.asset("assets/fond.jpg"),
              Row(
                children: [
                  Container(width: 100, child: Image.asset("assets/fond.jpg")),
                  Container(width: 100, child: Image.asset("assets/fond.jpg")),
                ],
              ),
              Row(
                children: [
                  Container(width: 100, child: Text("Part1")),
                  Container(width: 100, child: Text("Part2")),
                ],
              ),
              Row(
                children: [
                  Container(
                      width: 100,
                      color: Colors.red,
                      child: Image.asset("assets/fond.jpg")),
                  Expanded(
                    child: Container(
                        color: Colors.blue,
                        child: Image.asset("assets/fond.jpg")),
                  ),
                  Expanded(
                    child: Container(
                        color: Colors.green,
                        child: Image.asset("assets/amongus.png")),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                        color: Colors.blue,
                        child: Image.asset("assets/fond.jpg")),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                        color: Colors.green,
                        child: Image.asset("assets/amongus.png")),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.green[500]),
                  const Icon(Icons.star, color: Colors.black)
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.red[500]),
                      const Icon(Icons.star, color: Colors.black)
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star, color: Colors.red[500]),
                      const Icon(Icons.star, color: Colors.black)
                    ],
                  ),
                ],
              ),
            ]),
          )),
    );
  }
}
