import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {
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
            SizedBox(height: 10),
            _username(),
            SizedBox(height: 10),
            _phoneNumber(),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget _username() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Username"),
          SizedBox(height: 2),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              fillColor: Colors.white,
              hoverColor: Colors.white,
              prefixIconColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Username",
            ),
          ),
        ]);
  }

  Widget _phoneNumber() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Phone Number"),
          SizedBox(height: 2),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              fillColor: Colors.white,
              hoverColor: Colors.white,
              prefixIconColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "+62",
            ),
          ),
        ]);
  }

  Widget _password() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("Password"),
          SizedBox(height: 2),
          TextFormField(
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              filled: true,
              isDense: true,
              fillColor: Colors.white,
              hoverColor: Colors.white,
              prefixIconColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.blue,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              hintText: "Password",
            ),
          ),
        ]);
  }
}
