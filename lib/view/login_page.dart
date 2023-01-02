
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nihongo_learn/ui/shared/color.dart';
import 'package:nihongo_learn/services/functions/authFunctions.dart';
import 'package:nihongo_learn/route/route.dart' as route;

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Form(
        key: _formKey,
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              // Log in text
              Text(login ? 'Login' : 'Signup',
                style: GoogleFonts.fredoka(
                fontSize: 40,
                color: AppColor.secondaryColor,
                ),
              ),

              SizedBox(height: 50),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child:
              login
                  ? Container(decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.white70),
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: Offset(0, 2),
                  ),
                ],
              ),)
                  : TextFormField(
                key: ValueKey('fullname'),
                decoration: InputDecoration(
                  hintText: 'Enter Full Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please Enter Full Name';
                  } else {
                    return null;
                  }
                },
                onSaved: (value) {
                  setState(() {
                    fullname = value!;
                  });
                },
              ),
          ),

              // ======== Email ========
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child:
                TextFormField(
                  key: ValueKey('email'),
                  decoration: InputDecoration(
                    hintText: 'Enter Email',
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please Enter valid Email';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
              ),

              // ======== Password ========
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child:
                  TextFormField(
                    key: ValueKey('password'),
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Enter Password',
                    ),
                    validator: (value) {
                      if (value!.length < 6) {
                        return 'Please Enter Password of min length 6';
                      } else {
                        return null;
                      }
                    },
                    onSaved: (value) {
                      setState(() {
                        password = value!;
                      });
                    },
                  ),
              ),
              SizedBox(
                height: 30,
              ),

              // Log in button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppColor.secondaryColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.25),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Center(
                    child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        login
                            ? AuthServices.signinUser(email, password, context)
                            : AuthServices.signupUser(
                            email, password, fullname, context);
                      }
                    },
                    child: Text(login ? 'Login' : 'Signup')),
              ),
                ),
              ),
              SizedBox(height: 15),

                  TextButton(
                      onPressed: () {
                        setState(() {
                          login = !login;
                        });
                      },
                      child: Text(login
                          ? "Don't have an account? Signup"
                          : "Already have an account? Login",
                        style: GoogleFonts.fredoka(
                          fontSize: 40,
                          color: AppColor.secondaryColor,
                        ),)),

            ],
          ),
        ),
      ),
      ),);
  }
}
