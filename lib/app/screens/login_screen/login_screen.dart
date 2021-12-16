import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var _autoValidate = AutovalidateMode.disabled;
  login() {
    if (_formKey.currentState!.validate()) {
      print("everything is alright");
      print(_emailController.text);
      print(_passwordController.text);
      _emailController.text = '';
      _passwordController.text = '';
    } else {
      setState(() {
        _autoValidate = AutovalidateMode.always;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Card(
            child: Container(
              width: 300,
              child: Form(
                  key: _formKey,
                  autovalidateMode: _autoValidate,
                  child: Column(
                    children: [
                      Text("Formulaire d'authentification"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "l'email ne peut pas etre vide";
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              label: Text('E-mail'),
                              helperText: "saisissez votre adresse email ici",
                              hintText: 'monemail@exemple.com'),
                          controller: _emailController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.visibility),
                              ),
                              label: Text('Password'),
                              helperText: "saisissez votre mot de passe",
                              hintText: '*******'),
                          controller: _passwordController,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                            onPressed: () {
                              login();
                            },
                            child: Text('Login')),
                      )
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
