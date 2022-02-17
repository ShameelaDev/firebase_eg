import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey();

  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Registration Form',
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      labelText: "First Name",
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextFormField(
                  decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      labelText: "Last Name",
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.phone),
                    labelText: "Enter phone number",
                    hintText: '+91 0000000000',
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  maxLength: 10,
                ),
              ),
              TextFormField(
                validator: (val) {
                  String data = val ?? '';
                  if (data.trim().isEmpty) {
                    return 'please enter email';
                  } else if (data.length < 5) {
                  } else {
                    return null;
                  }
                },
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    icon: const Icon(Icons.mail),
                    labelText: "Enter email",
                    hintText: "email@gmail.com",
                    contentPadding: const EdgeInsets.all(8),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
                maxLength: 25,
              ),
              const SizedBox(height: 10),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (val) {
                  String data = val ?? '';
                  if (data.trim().isEmpty) {
                    return 'please enter password';
                  } else if (data.length < 8) {
                    return 'please enter 8 character long';
                  }
                },
                controller: passwordController,
                keyboardType: TextInputType.emailAddress,
                obscureText: obscureText,
                decoration: InputDecoration(
                  icon: const Icon(Icons.security),
                  hintText: 'Enter password',
                  labelText: "Enter password",
                  suffix: obscureText
                      ? IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = false;
                        });
                      },
                      icon: const Icon(Icons.visibility))
                      : IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = true;
                        });
                      },
                      icon: const Icon(Icons.visibility_off)),
                  contentPadding: const EdgeInsets.all(4),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (val) {
                    String data = val ?? '';
                    if (data.trim().isEmpty) {
                      return 'please enter password';
                    } else if (passwordController.text !=
                        confirmPasswordController.text) {
                      return "password not match please re-enter";
                    } else {
                      return null;
                    }
                  },
                  controller: confirmPasswordController,
                  keyboardType: TextInputType.emailAddress,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    icon: const Icon(Icons.security),
                    hintText: 'Confirm password',
                    labelText: "Re-Enter password",
                    suffix: obscureText
                        ? IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = false;
                          });
                        },
                        icon: const Icon(Icons.visibility))
                        : IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = true;
                          });
                        },
                        icon: const Icon(Icons.visibility_off)),
                    contentPadding: const EdgeInsets.all(4),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  widthFactor: 50,
                  child: ElevatedButton(
                    onPressed: () {
                      if (!formState.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const Text("login"),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Center(
                  widthFactor: 50,
                  child: TextButton(
                    onPressed: () {
                      if (!formState.currentState!.validate()) {
                        return;
                      }
                    },
                    child: const Text(
                      'Forgot Password ?',
                      style: TextStyle(color: Colors.blue, fontSize: 13),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
