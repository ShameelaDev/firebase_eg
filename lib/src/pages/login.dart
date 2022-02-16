import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 200),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText:'Email',
                        hintText: "Enter a valid Email"

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText:'Password',
                        hintText: "Enter your password"

                    ),
                  ),
                ),
                SizedBox(height: 25,),
                TextButton(onPressed: (){}, child: Text("forgot password?")),
                ElevatedButton(
                    onPressed: (){},
                    child: Text("Login")),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
