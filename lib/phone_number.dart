import 'package:flutter/material.dart';

class PhoneNumber extends StatefulWidget {
  const PhoneNumber({Key? key}) : super(key: key);

  @override
  State<PhoneNumber> createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: new ThemeData(scaffoldBackgroundColor: Colors.black),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("Create Personal Account",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  )),
              SizedBox(height: 100),
              _username(),
              SizedBox(height: 20),
              _phoneNumber(),
              SizedBox(height: 20),
              _password(),
              SizedBox(height: 20),
              Container(
                  padding: EdgeInsets.only(right: 250),
                  child: Text(
                    "Referal ID (Optional)",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
              SizedBox(height: 50),
              Text(
                  "I have read and agree to Digicoins Terms of Service and Privacy Policy",
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  )),
              SizedBox(height: 10),
              _btnLogin(width, context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _username() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Username",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
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
          Text(
            "Phone Number",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
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
          Text(
            "Password",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
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

  Widget _permission() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Row(
              children: [
                Checkbox(value: true, onChanged: null),
                Text(
                  "I have read and agree to Digicoins ",
                  style: TextStyle(fontSize: 5, color: Colors.white),
                )
              ],
            ),
          ),
        ]);
  }

  Widget _btnLogin(double width, BuildContext context) {
    return SizedBox(
      width: width,
      height: 50,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("Login"),
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
      ),
    );
  }
}
