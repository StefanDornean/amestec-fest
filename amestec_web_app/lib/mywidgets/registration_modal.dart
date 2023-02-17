import 'dart:html';

import 'package:flutter/material.dart';

class RegistrationModal extends StatefulWidget {
  @override
  _RegistrationModalState createState() => _RegistrationModalState();
}

class _RegistrationModalState extends State<RegistrationModal> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _email = "";
  String _phone = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
            validator: (value) {
              if (value?.isEmpty == true) {
                return 'Please enter your name';
              }
              return null;
            },
            onSaved: (value) => _name = value ?? "",
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value?.isEmpty == true) {
                return 'Please enter your email';
              }
              return null;
            },
            onSaved: (value) => _email = value ?? "",
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Phone'),
            validator: (value) {
              if (value?.isEmpty == true) {
                return 'Please enter your phone number';
              }
              return null;
            },
            onSaved: (value) => _phone = value ?? "",
          ),
          // RaisedButton(
          //   onPressed: () {
          //     // if (_formKey.currentState.validate()) {
          //     //   _formKey.currentState.save();
          //     //   // Add your logic for registering the user here
          //     // }
          //   },
          //   child: Text('Register'),
          // ),
        ],
      ),
    );
  }
}
