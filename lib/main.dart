import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:io';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login/Singup Ui',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.green,
          primaryColor: Colors.white,
          focusColor: Colors.white,
          cardColor: Colors.white, colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white)),
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

// flutter login and registration design template
class _HomepageState extends State<Homepage> {
  bool isLoginSelected = true;
  bool maleSelected = true;
  bool femaleSelected = false;
  bool isPasswordVisible = false;
  bool isConfirmPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
      return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('images/logo.png', // Replace with your image path
                  height: 150,
                  width: 150,),
                Container(
                  padding: EdgeInsets.all(20),
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50)
                          .copyWith(topLeft: Radius.circular(50)),
                      gradient:
                      LinearGradient(colors: [Colors.white, Colors.white])),
                  child: Column(
                    children: [
                      toggleButton(),
                      isLoginSelected ? SizedBox() : usernameField(),
                      emailField(),
                      passwordField(),
                      isLoginSelected ? SizedBox() : confirmPasswordField(),
                      !isLoginSelected ? SizedBox() : forgotPassword(),
                      isLoginSelected
                          ? SizedBox()
                          : Container(
                        margin: EdgeInsets.symmetric(horizontal: 80)
                            .copyWith(top: 20.0),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50)
                                .copyWith(topLeft: Radius.circular(50)),
                            gradient: LinearGradient(
                                colors: [HexColor('#ffffff'), HexColor('#ffffff')])),
                        child: Padding(
                          padding: EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    maleSelected = true;
                                    femaleSelected = false;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                        height: 17,
                                        width: 17,
                                        alignment: Alignment.center,
                                        margin:
                                        EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: HexColor('#006666'))),
                                        child: maleSelected
                                            ? Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              shape:
                                              BoxShape.circle,
                                              color: HexColor('#006666')),
                                        )
                                            : SizedBox()),
                                    Text('Male',
                                        style: TextStyle(
                                            color: HexColor('#006666'),
                                            fontSize: 14.5))
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    femaleSelected = true;
                                    maleSelected = false;
                                  });
                                },
                                child: Row(
                                  children: [
                                    Container(
                                        height: 17,
                                        width: 17,
                                        alignment: Alignment.center,
                                        margin:
                                        EdgeInsets.only(right: 10),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: HexColor('#006666'))),
                                        child: femaleSelected
                                            ? Container(
                                          margin: EdgeInsets.all(4),
                                          decoration: BoxDecoration(
                                              shape:
                                              BoxShape.circle,
                                              color: HexColor('#006666')),
                                        )
                                            : SizedBox()),
                                    Text('Female',
                                        style: TextStyle(
                                            color: HexColor('#006666'),
                                            fontSize: 14.5))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      button(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  // flutter login and registration design template
  Widget usernameField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50)
                  .copyWith(topLeft: Radius.circular(50)),
              gradient: LinearGradient(colors: [HexColor('#00caca'), HexColor("#00caca")])),
          child: TextField(
            style: TextStyle(color: HexColor('#006666'), fontSize: 14),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Icon(
                  Icons.person,
                  color: HexColor('#006666'),
                  size: 20,
                ),
              ),
              hintText: 'Enter username',
              hintStyle: TextStyle(color: HexColor('#006666'), fontSize: 14),
            ),
          ),
        ));
  }
  // flutter login and registration design ui source code
  Widget emailField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50)
                  .copyWith(topLeft: Radius.circular(50)),
              gradient: LinearGradient(colors: [HexColor('#00caca'), HexColor('#00caca')])),
          child: TextField(
            style: TextStyle(color: HexColor('#006666'), fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.email,
                  color: HexColor('#006666'),
                  size: 20,
                ),
              ),
              hintText: 'Enter email',
              hintStyle: TextStyle(color: HexColor('#006666'), fontSize: 14),
            ),
          ),
        ));
  }
  // flutter login and registration design template
  Widget passwordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50.0)
                  .copyWith(topLeft: Radius.circular(50)),
              gradient: LinearGradient(colors: [HexColor('#00caca'), HexColor('#00caca')])),
          child: TextField(
            obscureText: isPasswordVisible ? false : true,
            style: TextStyle(color: HexColor('#006666'), fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock,
                  color: HexColor('#006666'),
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                  child: Icon(
                    isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                    color: HexColor('#006666'),
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Enter password',
              hintStyle: TextStyle(color: HexColor('#006666'), fontSize: 14),
            ),
          ),
        ));
  }
  // flutter login and registration design template
  Widget confirmPasswordField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25).copyWith(top: 10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: 53,
          width: double.infinity,
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    offset: Offset(4, 4),
                    blurRadius: 5,
                    spreadRadius: 0,
                    color: Colors.black26)
              ],
              borderRadius: BorderRadius.circular(50)
                  .copyWith(topLeft: Radius.circular(50)),
              gradient: LinearGradient(colors: [HexColor('#00caca'), HexColor('#00caca')])),
          child: TextField(
            obscureText: isConfirmPasswordVisible ? false : true,
            style: TextStyle(color: HexColor('#006666'), fontSize: 14),
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
              border: InputBorder.none,
              prefixIconConstraints: BoxConstraints(minWidth: 24),
              suffixIconConstraints: BoxConstraints(minWidth: 24),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.lock,
                  color: HexColor('#006666'),
                  size: 20,
                ),
              ),
              suffixIcon: Padding(
                padding: EdgeInsets.only(left: 10),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isConfirmPasswordVisible = !isConfirmPasswordVisible;
                    });
                  },
                  child: Icon(
                    isConfirmPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: HexColor('#006666'),
                    size: 20,
                  ),
                ),
              ),
              hintText: 'Confirm password',
              hintStyle: TextStyle(color: HexColor('#006666'), fontSize: 14),
            ),
          ),
        ));
  }
  Widget button() {
    return GestureDetector(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text('Congratulations, you have logged in/signed up')));
      },
      child: Container(
        height: 53,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  blurRadius: 4, color: Colors.black26, offset: Offset(0, 4))
            ],
            borderRadius: BorderRadius.circular(100)
                .copyWith(topLeft: Radius.circular(100)),
            gradient: LinearGradient(colors: [HexColor('#007575'), HexColor('#007575')])),
        child: Text(isLoginSelected ? 'CONFIRM' : 'CONFIRM',
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold)),
      ),
    );
  }
  // flutter login and registration design template ui
  Widget toggleButton() {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 53,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  offset: Offset(4, 4),
                  blurRadius: 5,
                  spreadRadius: 0,
                  color: Colors.black26)
            ],
            borderRadius:
            BorderRadius.circular(50).copyWith(topLeft: Radius.circular(50)),
            gradient: LinearGradient(colors: [HexColor('#00CACA'), HexColor('#00CACA')])),
        child: Row(
          // flutter login and registration design template UI source code
          children: [
            !isLoginSelected
                ? Expanded(
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        print('tap');
                        isLoginSelected = true;
                      });
                    },
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ))
                : Expanded(
                child: Container(
                  height: 53,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(4, 4),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black26)
                      ],
                      borderRadius: BorderRadius.circular(50).copyWith(
                        topLeft: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                          colors: [HexColor('#007575'), HexColor('#007575')])),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                )),
            isLoginSelected
                ? Expanded(
                child: Center(
                  child: TextButton(
                    onPressed: () {
                      setState(() {
                        print('tap');
                        isLoginSelected = false;
                      });
                    },
                    child: Text(
                      'Signup',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ))
                : Expanded(
                child: Container(
                  height: 53,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(-4, 4),
                            blurRadius: 5,
                            spreadRadius: 0,
                            color: Colors.black26)
                      ],
                      borderRadius: BorderRadius.circular(50).copyWith(
                        topLeft: Radius.circular(50),
                      ),
                      gradient: LinearGradient(
                          colors: [HexColor('#007575'), HexColor('#007575')])),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ))
          ],
        ),
      ),
    );
  }
  // flutter login and registration design UI template
  Widget forgotPassword() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 30),
        child: InkWell(
          onTap: () {
            // can navigate to other screen or perform some other action
          },
          child: Text(
            'Forgot password?',
            style: TextStyle(
                color: HexColor('#006666'),
                fontSize: 12.0,
                fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}