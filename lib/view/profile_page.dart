import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nihongo_learn/route/route.dart' as route;
import 'package:cloud_firestore/cloud_firestore.dart';

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
        actions: [
          IconButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.leave_bags_at_home))
        ],
        title: Text('Profile'),
      ),
      body:Column(
        children: [
          // StreamBuilder(
          //   stream: FirebaseFirestore.instance.collection("users")
          //     .where("email", isEqualTo: currentUser.currentUser!.email).
          //       snapshots(),
          //     builder: (context, snapshot) {
          //       if (!snapshot.hasData) {
          //         _currentName = snapshot.data!.get;
          //         return Text(snapshot.data!['name']);
          //       }
          //     }
          // ),
        ],
      ),
    );
  }
}