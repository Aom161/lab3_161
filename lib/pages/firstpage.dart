import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 245, 237, 130),
      appBar: AppBar(
        title: Text("Aom"),
        backgroundColor: Color.fromRGBO(248, 170, 2, 0.922),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            const SizedBox(height: 16),
            TextFormField(
              validator: (value) {
                if (value!.isEmpty) {
                  return "Please enter your Username";
                }
                return null;
              },
              controller: _usernameCtrl,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "Username",
                prefixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 233, 139, 31))),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide:
                        BorderSide(color: Color.fromARGB(255, 233, 139, 31))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your Password";
                  }
                  return null;
                },
                obscureText: true,
                obscuringCharacter: "*",
                controller: _passwordCtrl,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  labelText: "Password",
                  prefixIcon: Icon(Icons.key),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 233, 139, 31))),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide:
                          BorderSide(color: Color.fromARGB(255, 233, 139, 31))),
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormKey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login")),
          ],
        ),
      ),
    );
  }
}
