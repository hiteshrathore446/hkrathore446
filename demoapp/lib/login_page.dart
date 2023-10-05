import 'package:flutter/material.dart';

class login_page extends StatefulWidget {
  const login_page({super.key});

  @override
  State<login_page> createState() => _login_pageState();
}

class _login_pageState extends State<login_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Center(
            child: Column(children: [
          Text(
            "Sing In",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border(),
                  ),
                  child: Column(children: [
                    TextField(
                      decoration:
                          InputDecoration(hintText: "Email or Phone Number"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: TextField(
                        decoration: InputDecoration(hintText: "Password"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25, left: 230),
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Log In")),
                    )
                  ]),
                ),
              ],
            ),
          )
        ])),
      ),
    );
  }
}
