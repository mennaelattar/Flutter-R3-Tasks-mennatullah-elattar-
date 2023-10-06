import 'package:day9/secondscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final username = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
            child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Icon(
                      Icons.diamond_outlined,
                      size: 50,
                    ),
                    Text(
                      'SHAREIN',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                )),
            Expanded(
              child: Column(
                children: [
                  TextField(
                    maxLines: 2,
                    textAlignVertical: TextAlignVertical.center,
                    controller: username,
                    decoration: InputDecoration(
                        hintText: 'Username',
                        border: UnderlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xFFE7DFEC)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    maxLines: 2,
                    textAlignVertical: TextAlignVertical.center,
                    controller: password,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        border: UnderlineInputBorder(),
                        filled: true,
                        fillColor: Color(0xFFE7DFEC)),
                  ),
                ],
              ),
              flex: 2,
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MySecondScreen(
                          username: "username = ${username.text}",
                          password: "password = ${password.text}",
                        ),
                      ));
                },
                child: Text('Go To Second Screen')),
          ],
        )),
      ),
    );
  }
}
