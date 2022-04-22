import 'package:demo_app/models/login_model.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final LoginModel? loginModel;

  const SecondScreen({Key? key, this.loginModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Second Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email :${loginModel!.email}', textScaleFactor: 2),
            Text('Password :${loginModel!.password}', textScaleFactor: 2),
          ],
        ),
      ),
    );
  }
}
