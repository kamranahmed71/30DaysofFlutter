import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(
            "assets/images/login_image.png",
            fit: BoxFit.fill,
            width: 200,
            height: 200,
          ),

          SizedBox(
            height: 15.0,
          ),

          Text(
            "Welcome",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
//            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter username", labelText: "Username"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter password", labelText: "Password"),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20.0,
          ),

          ElevatedButton(
            onPressed: () {
              print("Hi Codepur");
            },
            child: Text("Login"),
          ),

          //    Image(
          //      image: AssetImage("/assets/images/login_image.png"),), // Image
        ], // Children
      ),
    );
  }
}
