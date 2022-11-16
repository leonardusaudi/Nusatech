import 'package:flutter/material.dart';
import 'package:flutter_application_1/email.dart';
import 'package:flutter_application_1/phone_number.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Create Personal Account',
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                fontSize: 10,
              ),
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
