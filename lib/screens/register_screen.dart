import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:spaced_repetition_app/helper_widgets/snackbar.dart';
import 'package:spaced_repetition_app/repositories/authenticator.dart';

class RegisterScreen extends StatelessWidget {
  String email = "";
  String password = "";
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // const RegisterScreen();
  final _formKey = GlobalKey<FormState>();

  final Authenticator _auth = Authenticator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xFFDC1A22),
      padding: const EdgeInsets.symmetric(horizontal: 43.0),
      child: Form(
        key: _formKey,
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Image(image: AssetImage("assets/logo.jpeg")),
                TextFormField(
                  controller: _nameController,
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.white),
                    icon: Icon(Icons.person),
                    hintText: 'What name do you want displayed?',
                    labelText: 'Display Name',
                  ),
                  validator: (value) {
                    //Validation for Input
                    if (value!.isEmpty) {
                      return "Field Cannot be Empty";
                    } else if (!RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      return "Incorrect Name Value";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.white),
                    icon: Icon(Icons.alternate_email),
                    hintText: 'What is your email address?',
                    labelText: 'Email',
                  ),
                  validator: (value) {
                    //Validation for Input
                    if (value!.isEmpty) {
                      return "Field Cannot be Empty";
                    } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                        .hasMatch(value)) {
                      return "Incorrect Email Value";
                    } else {
                      return null;
                    }
                  },
                ),
                TextFormField(
                  obscureText: true,
                  controller: _passwordController,
                  decoration: const InputDecoration(
                    errorStyle: TextStyle(color: Colors.white),
                    icon: Icon(Icons.password),
                    hintText: 'Password to secure your account?',
                    labelText: 'Password',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Field Cannot be Empty";
                    } else if (value.length < 8) {
                      return "Field Cannot be less than 8 Characters";
                    } else {
                      return null;
                    }
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    // Validate returns true if the form is valid, or false otherwise.
                    if (_formKey.currentState!.validate()) {
                      //Print Value for Us to See
                      print(_nameController.text);
                      print(_emailController.text);
                      print(_passwordController.text);

                      //TODO 1: Implement Registration Functionality
                      /*
                        A cubit that manages this state and ensures that a user
                        can add themselves to our database would be necessary.
                       You can use the cubit in here after the validation
                       equates to true (The User inputs acceptable values).
                       Also include a check to make sure the same user cant
                       register twice
                       */

                      _auth.registerWithEmailAndPassword(
                          _emailController.text, _passwordController.text, _nameController.text);
                      // print("registered without validation");

                      /*
                      Once the user has registered themselves, use a snackbar
                       to let them know they have been registered in the database
                       and then navigate back to the landing page so they can
                       choose the Sign In option now.
                       The Code has been written below, you just need to
                       uncomment it and use it as you see fit
                       */

                      SnackBarCreator().showSnackBar(context, "You have been registered");
                      Navigator.of(context).pop();
                    }
                  },
                  child: const Text('Submit'),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
