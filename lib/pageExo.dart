import 'package:flutter/material.dart';

class PageExo extends StatefulWidget {
  const PageExo({Key? key}) : super(key: key);

  @override
  State<PageExo> createState() => _PageExoState();
}

class _PageExoState extends State<PageExo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Page Exo")),
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
            margin: const EdgeInsets.fromLTRB(40, 40, 40, 40),
            padding: const EdgeInsets.all(40),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Strawberry Pavlova',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      width: 220,
                      child: const Text(
                        'Pavlova is a meringue-based dessert named after the Russian ballerina Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream.',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      )),
                ],
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                        Icon(Icons.star, color: Colors.black),
                      ],
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                        Text(
                          '170 Reviews',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                          width: 80,
                          color: Colors.transparent,
                          child: const Icon(
                            Icons.indeterminate_check_box_outlined,
                            color: Colors.black,
                          )),
                    ),
                    Expanded(
                      child: Container(
                          width: 80,
                          color: Colors.transparent,
                          child: const Icon(
                            Icons.lock_clock,
                            color: Colors.black,
                          )),
                    ),
                    Expanded(
                      child: Container(
                          width: 80,
                          color: Colors.transparent,
                          child: const Icon(
                            Icons.food_bank_outlined,
                            color: Colors.black,
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                            color: Colors.transparent,
                            child: const Text(
                              'PREP:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                            color: Colors.transparent,
                            child: const Text(
                              'COOK:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                            color: Colors.transparent,
                            child: const Text(
                              'FEEDS:',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                width: 240,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Center(
                        child: Container(
                            color: Colors.transparent,
                            child: const Text(
                              '25 mins',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                            color: Colors.transparent,
                            child: const Text(
                              '1 hr',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                            color: Colors.transparent,
                            child: const Text(
                              '4-6',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          )),
    );
  }
}
