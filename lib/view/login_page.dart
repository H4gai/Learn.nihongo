import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nihongo_learn/ui/shared/color.dart';
import 'package:nihongo_learn/services/functions/authFunctions.dart';

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
              Text(
                'Log in',
                style: GoogleFonts.fredoka(
                  fontSize: 40,
                  color: AppColor.secondaryColor,
                ),

              ),
              SizedBox(height: 50),

              // email textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
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
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: TextFormField(
                      key: ValueKey('email'),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Your Email',
                      ),
                      validator: (value){
                        if (value!.isEmpty){
                          return 'Please check your email';
                        }
                        else{
                          return null;
                        }
                      },
                      onSaved: (value){
                        setState(() {
                          email = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),

              // password textfield
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Container(
                  decoration: BoxDecoration(
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
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      key: ValueKey('password'),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                      ),
                      validator: (value){
                        if (value!.length < 8){
                          return 'Please check your password';
                        }
                        else{
                          return null;
                        }
                      },
                      onSaved: (value){
                        setState(() {
                          password = value!;
                        });
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),

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
                    // Text(
                    //   'Log in',
                    //   style: GoogleFonts.fredoka(
                    //     color: Colors.white,
                    //     fontSize: 20,
                    //   ),
                    // ),
                  ),
                ),
              ),
              SizedBox(height: 15),

              // register now!
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: GoogleFonts.fredoka(
                      color: Colors.black,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    ' Register',
                    style: GoogleFonts.fredoka(
                      color: AppColor.secondaryColor,
                      fontSize: 13,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      ),);
  }
}
