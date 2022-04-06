import 'package:flutter/material.dart';

String titre = "Formulaire";
String _test = "Vide";

class Formulaire extends StatefulWidget {
  const Formulaire({Key? key}) : super(key: key);

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titre),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 25),
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                labelText: "Name",
                hintText: "Enter your name...",
              ),
              onChanged: (value) {
                setState(() {
                  _test = value;
                });
                print(value);
              },
            ),
            Text(_test),
            ElevatedButton(
              onPressed: () => {
                setState(() {
                  titre = _test;
                })
              },
              child: const Text("Validate"),
            )
          ],
        ),
      ),
    );
  }
}
