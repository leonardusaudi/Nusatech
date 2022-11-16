import 'package:flutter/material.dart';
import 'package:flutter_application_1/email.dart';
import 'package:flutter_application_1/phone_number.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const PhoneNumber(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Personal Account',
            ),
            TabBar(
                indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.grey,
                padding: EdgeInsets.zero,
                tabs: [
                  Tab(text: "Email"),
                  Tab(text: "Phone Number"),
                ]),
            Expanded(
              child: TabBarView(
                children: [
                  Email(),
                  PhoneNumber(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
