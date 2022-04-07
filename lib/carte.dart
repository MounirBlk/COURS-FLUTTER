import 'package:flutter/material.dart';
import 'package:flutter_april/formulaire.dart';
import 'package:flutter_april/helpers/function.dart';
import 'package:flutter_april/models/user_model.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Carte extends StatefulWidget {
  const Carte({Key? key}) : super(key: key);

  @override
  State<Carte> createState() => _CarteState();
}

class _CarteState extends State<Carte> {
  List<User> users = [
    User("mounir@gmail.com", "Mounir", "123456789"),
    User("lucien@gmail.com", "Lucien", "123456789"),
  ];

  void _createEditUser(String action, int index) {
    final TextEditingController _nameController;
    final TextEditingController _emailController;
    final TextEditingController _passwordController;
    if (action == "edit") {
      _nameController = TextEditingController(text: users[index].name);
      _emailController = TextEditingController(text: users[index].email);
      _passwordController = TextEditingController(text: users[index].password);
    } else {
      _nameController = TextEditingController(text: "");
      _emailController = TextEditingController(text: "");
      _passwordController = TextEditingController(text: "");
    }
    final _formKey = GlobalKey<FormState>();
    const ShowConfirmAlertDialog().show(
      context,
      action == "edit" ? "Editer un utilisateur" : "Ajouter un utilisateur",
      StatefulBuilder(builder: (ctx2, setBottom) {
        return Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: "Name",
                  hintText: "Enter your name...",
                ),
                validator: (value) => value!.length < 3 || value.trim().isEmpty
                    ? 'Name too short.'
                    : null,
              ),
              TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.email),
                    labelText: "Email",
                    hintText: "Enter your email...",
                  ),
                  validator: (value) {
                    return value!.length < 6 || value.trim().isEmpty
                        ? 'Email too short.'
                        : !RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$')
                                .hasMatch(value)
                            ? 'Invalid email address.'
                            : null;
                  }),
              TextFormField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  icon: Icon(Icons.lock),
                  labelText: "Password",
                  hintText: "Enter your password...",
                ),
                obscureText: true,
                validator: (value) => value!.trim().isEmpty
                    ? "Password can't be empty."
                    : value.length < 8
                        ? 'Password too short.'
                        : null,
              ),
            ],
          ),
        );
      }),
      action == "edit" ? "Sauvegarder la modification" : "Sauvegarder l'ajout",
      "Annuler",
      () {
        if (_formKey.currentState!.validate()) {
          setState(() {
            if (action == "edit") {
              users[index].name = _nameController.text;
              users[index].email = _emailController.text;
              users[index].password = _passwordController.text;
            } else {
              users.add(User(_emailController.text, _nameController.text,
                  _passwordController.text));
            }
          });
          _emailController.text = "";
          _nameController.text = "";
          _passwordController.text = "";
          Navigator.pop(context);
        }
      },
      () {
        Navigator.pop(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carte"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: () {
                _createEditUser('add', -1);
              },
              icon: const Icon(Icons.add),
            ),
          )
        ],
      ),
      body: Scrollbar(
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (ctx2, index) {
              return Padding(
                padding: const EdgeInsets.all(4),
                child: Card(
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.green,
                      child: Text(
                        users[index].name![0],
                        style: const TextStyle(fontSize: 28),
                      ),
                    ),
                    title: Text(users[index].name!),
                    subtitle: Text(users[index].email!),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.edit),
                          onPressed: () {
                            _createEditUser('edit', index);
                          },
                          color: Colors.blue,
                        ),
                        IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            const ShowConfirmAlertDialog().show(
                              context,
                              "Suppression",
                              const Text(
                                  "Êtes-vous sur de vouloir supprimer cet utilisateur ?"),
                              "Supprimer",
                              "Annuler",
                              () {
                                setState(() {
                                  users.removeAt(index);
                                });
                                Navigator.pop(context);
                              },
                              () {
                                Navigator.pop(context);
                              },
                            );
                          },
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

_onBasicAlertPressed(context) {
  Alert(
    context: context,
    type: AlertType.success,
    title: "Succès",
    desc: "Le formulaire est correct !",
    buttons: [
      DialogButton(
        child: const Text(
          "Fermer",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        onPressed: () => Navigator.pop(context),
        width: 120,
      )
    ],
  ).show();
}
