import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nihongo_learn/route/route.dart' as route;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nihongo_learn/ui/shared/color.dart';
import 'package:google_fonts/google_fonts.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  final currentUser = FirebaseAuth.instance;
  String _currentName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,

          actions: [
            IconButton(
                onPressed: () async {
                  await FirebaseAuth.instance.signOut();
                },
                icon: Icon(Icons.logout_rounded),
                // color: AppColor.japanRed
            )
          ],
          title: Text('Profile'),
        ),
        body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.zenBlack,
                      minRadius: 70.0,
                      child: Icon(
                        Icons.person,
                        color: AppColor.pureWhite,
                        size: 60.0,
                      ),
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(
                          color: AppColor.softRed, fontSize: 30.0),
                    ),
                    Text(
                      "profile@gmail.com",
                      style: TextStyle(
                          color: AppColor.zenBlack, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
              TextButton(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Edit Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppColor.zenBlack,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ]),
                style: TextButton.styleFrom(
                  backgroundColor: AppColor.pureWhite,
                  shadowColor: AppColor.zenBlack,
                  elevation: 5,
                ),
                onPressed: () {
                  print('Pressed');
                },
              ),
            ],
        )
    );
  }
}
