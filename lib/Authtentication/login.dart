import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController();
  final password = TextEditingController();

  bool isVisible = false;
  final formKey=Globalkey<FromState>()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login Page"),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Form(
              child: Column(
                children: [
                  Image.asset(
                    "lib/assets/log.png",
                    width: 210,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  //username field
                  Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple.withOpacity(.2),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: InputBorder.none,
                        hintText: "Username",
                      ),
                    ),
                  ),
                  //Password filed
                  Container(
                    margin: EdgeInsets.all(8.0),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple.withOpacity(.2),
                    ),
                    child: TextFormField(
                      obscureText: !isVisible,
                      decoration: InputDecoration(
                        icon: Icon(Icons.lock),
                        border: InputBorder.none,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isVisible = !isVisible;
                            });
                          },
                          icon: Icon(isVisible
                              ? Icons.visibility
                              : Icons.visibility_off_rounded),
                        ),
                      ),
                    ),
                  ),
                  //Login Button
                  Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    color: Colors.deepPurple,
                    height: 60.0,
                    width: MediaQuery.of(context).size.width * .9,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't Have an Account?"),
                      TextButton(
                        onPressed: () {},
                        child: Text("Sign-up"),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
