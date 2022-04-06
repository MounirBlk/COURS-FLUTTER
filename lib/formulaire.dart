import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

String titre = "Formulaire";

class Formulaire extends StatefulWidget {
  const Formulaire({Key? key}) : super(key: key);

  @override
  State<Formulaire> createState() => _FormulaireState();
}

class _FormulaireState extends State<Formulaire> {
  String _name = "Vide";
  String _password = "Vide";
  String _email = "Vide";
  String _dropDownValue = "One";

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titre),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Veuillez entrer un name";
                    }
                    if (value.length < 3) {
                      return 'Le name doit avoir 3 caractères minimum';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.abc),
                    labelText: "Name",
                    hintText: "Enter your name...",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _name = value;
                    });
                    print(value);
                  },
                ),
                TextFormField(
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Veuillez entrer un password";
                    }
                    if (value.length < 8) {
                      return 'Le password doit avoir 8 caractères minimum';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.lock),
                    labelText: "Password",
                    hintText: "Enter your password...",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _password = value;
                    });
                  },
                ),
                TextFormField(
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "Veuillez entrer un email";
                    }
                    if (!RegExp(r'^\w+([.-]?\w+)@\w+([.-]?\w+)(.\w{2,3})+$')
                        .hasMatch(value)) {
                      return 'L\'email doit avoir un format valide';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    icon: Icon(Icons.person),
                    labelText: "Email",
                    hintText: "Enter your email...",
                  ),
                  onChanged: (value) {
                    setState(() {
                      _email = value;
                    });
                  },
                ),
                Text(_name),
                Text(_password),
                Text(_email),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green),
                  ),
                  onPressed: () => {
                    if (_formKey.currentState!.validate())
                      {
                        Alert(
                          type: AlertType.success,
                          context: context,
                          title: "Bingo!",
                          desc: "Compte ajouté avec succès.",
                          buttons: [
                            DialogButton(
                              child: const Text(
                                "Fermer",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              onPressed: () => Navigator.pop(context),
                              width: 120,
                            )
                          ],
                        ).show()
                      }
                  },
                  child: const Text("Validate"),
                )
              ],
            ),
          ),
        ),
        //DropDownButton
      ]),
    );
  }
}
