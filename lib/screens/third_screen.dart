import 'package:flutter/material.dart';

class Thirdscreen extends StatefulWidget {
  const Thirdscreen({Key? key}) : super(key: key);

  @override
  State<Thirdscreen> createState() => _ThirdscreenState();
}

class _ThirdscreenState extends State<Thirdscreen> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            centerTitle: true,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('Sign up'),
            ),
          ),
          SliverToBoxAdapter(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  width: 300,
                  height: 300,
                  child: Icon(
                    Icons.admin_panel_settings_sharp,
                    color: Colors.blue,
                    size: 220,
                  ),
                ),
                Card(
                  elevation: 02,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Name",
                      labelText: "User Name",
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  elevation: 02,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Email",
                      labelText: "User Email",
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  elevation: 02,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                Card(
                  elevation: 02,
                  child: TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                      labelText: "Repeat Password",
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 10),
                        textStyle: const TextStyle(
                          fontSize: 25,
                        )),
                    onPressed: () {},
                    child: const Text("Create Account")),
                const SizedBox(height: 30),
              ],
            ),
          )),
        ],
      ),
    );
  }
}
