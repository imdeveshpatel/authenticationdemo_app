import 'package:demo_app/models/login_model.dart';
import 'package:demo_app/screens/second_screen.dart';
import 'package:demo_app/screens/third_screen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);
  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Image.asset('assets/images/login_image.png'),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 4,
                  child: TextFormField(
                    validator: (value) {
                      return nameValidation(value!);
                    },
                    controller: _email,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Email",
                        labelText: "Email"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 4,
                  child: TextFormField(
                    controller: _password,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        labelText: "Password"),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(height: 20.0),
                _buttonRow(text1: "Login", text2: "Sign Up"),
                _buttons,
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buttonRow({required String text1, String? text2}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              var loginModel = LoginModel();
              loginModel.name = _name.text;
              loginModel.email = _email.text;
              loginModel.password = _password.text;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    loginModel: loginModel,
                  ),
                ),
              );
            }
          },
          child: Text(
            text1,
          ),
        ),
        const SizedBox(height: 10),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              textStyle: const TextStyle(
                fontSize: 20,
              )),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Thirdscreen()));
          },
          child: Text(text2!),
        ),
      ],
    );
  }

  get _buttons => Row();

  String? nameValidation(String value) {
    if (value.isEmpty) {
      return 'Please enter some text';
    }
    return null;
  }
}
