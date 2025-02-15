import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';
  final _formKey = GlobalKey<FormState>();

  trysubmit() {
    final isvalid = _formKey.currentState!.validate();
    if (isvalid) {
      _formKey.currentState!.save();
      submitform();
    } else {
      print('Error');
    }
  }

  submitform() {
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Form Widget'),
        ),
        body: Center(
            child: Container(
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: 'First Name',
                  ),
                  key: ValueKey('firstname'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    firstname = value.toString();
                  },
                ),
                // lastname
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: 'Last  Name',
                  ),
                  key: ValueKey('lastname'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    lastname = value.toString();
                  },
                ),
                TextFormField(
                  decoration:  InputDecoration(
                    labelText: 'Email',
                  ),
                  key: ValueKey('email'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    email = value.toString();
                  },
                ),
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'password',
                  ),
                  key: ValueKey('password'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    password = value.toString();
                  },
                ),
                TextButton(
                  onPressed: () {
                    trysubmit();
                },
                  child: Text('Submit')),
              ],
            ),
          ),
        )));
  }
}
