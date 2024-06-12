import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nidalfayyad/model/config.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
  init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginpage(),
    );
  }
}

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 2, 49),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Image.asset("images/1.png"),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 200,
                    ),
                    Text("Emal:"),
                    TextField(
                      controller: name,
                      decoration: InputDecoration(
                        //prefix: Icon(Icons.account_box),
                        hintText: 'Email',
                        label: Icon(Icons.account_circle),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    ),
                    Text("Password:"),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        label: Icon(Icons.password),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                    )
                  ],
                ),
                width: 400,
                height: 400,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 144, 179),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              print("object1");
              core.get<SharedPreferences>().setString('name', name.text);
              print("object2");
              core.get<SharedPreferences>().setString('pass', password.text);
              print("object3");
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page2()));
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 100),
              child: Text(
                "login",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 2, 49),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              // alignment: Alignment.centerLeft,
              width: 400,
              height: 50,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 8, 144, 179),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "AllAplication",
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  SizedBox(
                    width: 200,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        width: 400,
                        height: 100,
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 8,
                      child: Image.asset("images/1.jpg"),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "25/6\n2024",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Positioned(
                      child: Text("data"),
                      left: 150,
                      top: 15,
                    ),
                    Positioned(
                      child: Text("data222"),
                      left: 150,
                      top: 60,
                    )
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
