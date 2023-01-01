import 'package:flutter/material.dart';
import 'package:nihongo_learn/services/functions/authFunctions.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Login'),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          padding: EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ======== Full Name ========
              login
                  ? Container()
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

              // ======== Email ========
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
              // ======== Password ========
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
              SizedBox(
                height: 30,
              ),
              Container(
                height: 55,
                width: double.infinity,
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
              SizedBox(
                height: 10,
              ),
              TextButton(
                  onPressed: () {
                    setState(() {
                      login = !login;
                    });
                  },
                  child: Text(login
                      ? "Don't have an account? Signup"
                      : "Already have an account? Login")),
                Container(
                  child: Text(fullname),
                ),
              Container(
                child: Text(email),
              ),
              Container(
                child: Text(password),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:nihongo_learn/ui/shared/color.dart';
// import 'package:nihongo_learn/services/functions/authFunctions.dart';
// import 'package:nihongo_learn/route/route.dart' as route;
//
// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);
//
//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }
//
// class _LoginPageState extends State<LoginPage> {
//
//   final _formKey = GlobalKey<FormState>();
//
//   String email = '';
//   String password = '';
//   String fullname = '';
//   bool login = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.primaryColor,
//       body: Form(
//         key: _formKey,
//       child: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Log in text
//               Text(
//                 'Log in',
//                 style: GoogleFonts.fredoka(
//                   fontSize: 40,
//                   color: AppColor.secondaryColor,
//                 ),
//
//               ),
//               SizedBox(height: 50),
//
//               StreamBuilder(stream: FirebaseAuth.instance.userChanges(),
//                   builder:(context, snapshot){
//                 if(snapshot.hasData){
//                   return Text('Signed in ${snapshot.data?.email}');
//                 } else {
//                   return const Text(
//                       'you havent not login'
//                   );
//                 }
//               }),
//               SizedBox(height: 50),
//
//               // email textfield
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white70),
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.25),
//                         spreadRadius: 0,
//                         blurRadius: 2,
//                         offset: Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: TextFormField(
//                       key: ValueKey('fullname'),
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Your name',
//                       ),
//                       validator: (value){
//                         if (value!.isEmpty){
//                           return 'Please check your fullname';
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                       onSaved: (value){
//                         setState(() {
//                           fullname = value!;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//
//               // email textfield
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white70),
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.25),
//                         spreadRadius: 0,
//                         blurRadius: 2,
//                         offset: Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(left: 20.0),
//                     child: TextFormField(
//                       key: ValueKey('email'),
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Your Email',
//                       ),
//                       validator: (value){
//                         if (value!.isEmpty){
//                           return 'Please check your email';
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                       onSaved: (value){
//                         setState(() {
//                           email = value!;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//
//               // password textfield
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     border: Border.all(color: Colors.white70),
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.25),
//                         spreadRadius: 0,
//                         blurRadius: 2,
//                         offset: Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                     child: TextFormField(
//                       key: ValueKey('password'),
//                       obscureText: true,
//                       decoration: InputDecoration(
//                         border: InputBorder.none,
//                         hintText: 'Password',
//                       ),
//                       validator: (value){
//                         if (value!.length < 8){
//                           return 'Please check your password';
//                         }
//                         else{
//                           return null;
//                         }
//                       },
//                       onSaved: (value){
//                         setState(() {
//                           password = value!;
//                         });
//                       },
//                     ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20),
//
//               // Log in button
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                 child: Container(
//                   padding: EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     color: AppColor.secondaryColor,
//                     borderRadius: BorderRadius.circular(15),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black.withOpacity(0.25),
//                         spreadRadius: 0,
//                         blurRadius: 2,
//                         offset: Offset(0, 2),
//                       ),
//                     ],
//                   ),
//                   child: Center(
//                     child: ElevatedButton(
//                         onPressed: () async {
//                           if(FirebaseAuth.instance.currentUser == null){
//                             await FirebaseAuth.instance.signInWithEmailAndPassword(
//                                 email: email, password: password);}else{
//                             await FirebaseAuth.instance.signOut();
//                           }
//                         },
//                         child: StreamBuilder<User?>(stream: FirebaseAuth.instance.userChanges(),
//                             builder:(context, snapshot){
//                               if(snapshot.hasData){
//                                 return Text('Sign Out');
//                               } else {
//                                 return const Text(
//                                     'Sign In'
//                                 );
//                               }
//                             }),),
//                     // Text(
//                     //   'Log in',
//                     //   style: GoogleFonts.fredoka(
//                     //     color: Colors.white,
//                     //     fontSize: 20,
//                     //   ),
//                     // ),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 15),
//
//               // register now!
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Text(
//                     'Don\'t have an account?',
//                     style: GoogleFonts.fredoka(
//                       color: Colors.black,
//                       fontSize: 13,
//                     ),
//                   ),
//                   TextButton(onPressed: () => Navigator.pushNamed(context, route.thirdPage), child: Text(
//                     ' Register',
//                     style: GoogleFonts.fredoka(
//                       color: AppColor.secondaryColor,
//                       fontSize: 13,
//                     ),
//                   ),)
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       ),);
//   }
// }
