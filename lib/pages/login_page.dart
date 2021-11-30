import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
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
              "Welcome $name",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 18.0, horizontal: 18.0),
              //            padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter username", labelText: "Username"),
                    onChanged: (Value) {
                      name = Value;
                      setState(() {});
                    },
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
              height: 40.0,
            ),

            InkWell(
              onTap: () async {
                setState(() {
                  changeButton = true;
                });

                await Future.delayed(Duration(seconds: 1));
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              child: AnimatedContainer(
                duration: Duration(seconds: 1),
                height: 50,
                width: changeButton ? 50 : 150,
                alignment: Alignment.center,
                child: changeButton
                    ? Icon(
                        Icons.done,
                        color: Colors.white,
                      )
                    : Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    // shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8)),
              ),
            )

            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.homeRoute);
            //   },
            //   child: Text("Login"),
            //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
            // ),

            //    Image(
            //      image: AssetImage("/assets/images/login_image.png"),), // Image
          ], // Children
        ),
      ),
    );
  }
}
