import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loginform extends StatefulWidget {
  const Loginform({super.key});

  @override
  State<Loginform> createState() => _LoginformState();
}

class _LoginformState extends State<Loginform> {
  // form key is something like the id for the form
  var _formkey = GlobalKey<FormState>();
  // new way to associate input with variables
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    return Form(
      // the key declared is defined here
      key: _formkey,
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                TextFormField(
                  // controller is used to automatically update without
                  // using setState
                  controller: username,
                  // validator function when return string means error
                  // when null there is no error
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your username';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(
                    label: Text('Username'),
                    border: OutlineInputBorder(),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 8),
                  child: TextFormField(
                    // obscure text is for displaying dots instead of text
                    obscureText: true,
                    controller: password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                    decoration: const InputDecoration(
                      label: Text('Password'),
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                if (errorMessage != null)
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          errorMessage!,
                          style: const TextStyle(color: Colors.red),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 44,
            child: ElevatedButton(
              onPressed: () {
                // this initiates validation form the text input field inside the form
                if (_formkey.currentState!.validate()) {
                  String message = "Failed";
                  if (username.text == 'admin' && password.text == "admin") {
                    message = "Success";
                    Navigator.of(context).popAndPushNamed('/home');
                  } else {
                    setState(() {
                      errorMessage = "Username or password is incorrect";
                    });
                  }
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 0, 19, 186),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
