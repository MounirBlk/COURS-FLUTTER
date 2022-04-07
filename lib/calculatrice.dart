import 'package:flutter/material.dart';

class Calculatrice extends StatefulWidget {
  const Calculatrice({Key? key}) : super(key: key);

  @override
  State<Calculatrice> createState() => _CalculatriceState();
}

class _CalculatriceState extends State<Calculatrice> {
  int resultat = 0;
  String operation = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculatrice"),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Container(
          margin: const EdgeInsets.fromLTRB(40, 40, 40, 40),
          padding: const EdgeInsets.all(40),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.one_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            resultat = 1;
                          });
                          print('ok');
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.two_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            resultat = 2;
                          });
                          print('ok');
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.three_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            resultat = 3;
                          });
                          print('ok');
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.four_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('ok');
                          setState(() {
                            resultat = 4;
                          });
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.five_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('ok');
                          setState(() {
                            resultat = 5;
                          });
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.six_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('ok');
                          setState(() {
                            resultat = 6;
                          });
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.seven_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('ok');
                          setState(() {
                            resultat = 7;
                          });
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.eight_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('ok');
                          setState(() {
                            resultat = 8;
                          });
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.nine_k_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          setState(() {
                            resultat = 9;
                          });
                          print('ok');
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.red),
                        ),
                        onPressed: () {
                          setState(() {
                            operation = '-';
                          });
                          print('moins');
                        },
                        child: const Text("Moins"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: IconButton(
                        icon: const Icon(
                          Icons.exposure_zero_outlined,
                          color: Colors.black,
                        ),
                        onPressed: () {
                          print('ok');
                          setState(() {
                            resultat = 0;
                          });
                        },
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.green),
                        ),
                        onPressed: () {
                          setState(() {
                            operation = '+';
                          });
                          print('plus');
                        },
                        child: const Text("Plus"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      width: 80,
                      color: Colors.transparent,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.indigo),
                        ),
                        onPressed: () {
                          print('resultat');
                          setState(() {
                            resultat = 0;
                          });
                        },
                        child: const Text("Résultat"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              width: 250,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Résultat: " +
                      resultat.toString() +
                      " " +
                      operation +
                      " " +
                      resultat.toString() +
                      " = " +
                      (operation == "+"
                          ? (resultat + resultat).toString()
                          : (resultat - resultat).toString())),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
