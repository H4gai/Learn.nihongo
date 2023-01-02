import 'package:flutter/material.dart';
import 'package:nihongo_learn/route/route.dart' as route;

class lesson extends StatefulWidget{
  const lesson({super.key});

  @override
  State<lesson> createState() => _lesson();
}

class _lesson extends State<lesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Lesson"),
          ],
        ),
      ),
      body: Center(
        child: ListView(children: [
          SizedBox(
            height: 40,
          ),
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamed(
                  context,
                  route.Quiz);
            },
            style: TextButton.styleFrom( //<-- SEE HERE
              side: BorderSide(width: 3.0),
            ),
            child: ListTile(
          contentPadding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
          trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Column(
                children: [
                  IconButton(
                      onPressed: () {

                      },
                      icon: Icon(Icons.lock))
                ],
              ),
            ),
          ],
          ),
              title: const Text('Lasson 1: Nihon-go', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: const Text("Learn How to introduce yourself in japanesse"),
              tileColor: Colors.white70
          ),
          ),

        ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    route.Quiz);
              },
              style: TextButton.styleFrom( //<-- SEE HERE
                side: BorderSide(width: 3.0),
              ),
              child: ListTile(
                  contentPadding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {

                                },
                                icon: Icon(Icons.lock))
                          ],
                        ),
                      ),
                    ],
                  ),
                  title: const Text('Lasson 2: Nihon-go', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Learn How to introduce yourself in japanesse"),
                  tileColor: Colors.white70
              ),
            ),

          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    route.Quiz);
              },
              style: TextButton.styleFrom( //<-- SEE HERE
                side: BorderSide(width: 3.0),
              ),
              child: ListTile(
                  contentPadding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {

                                },
                                icon: Icon(Icons.lock))
                          ],
                        ),
                      ),
                    ],
                  ),
                  title: const Text('Lasson 3: Nihon-go', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Learn How to introduce yourself in japanesse"),
                  tileColor: Colors.white70
              ),
            ),

          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child:TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    route.Quiz);
              },
              style: TextButton.styleFrom( //<-- SEE HERE
                side: BorderSide(width: 3.0),
              ),child: ListTile(
                  contentPadding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {

                                },
                                icon: Icon(Icons.lock))
                          ],
                        ),
                      ),
                    ],
                  ),
                  title: const Text('Lasson 4: Nihon-go', style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: const Text("Learn How to introduce yourself in japanesse"),
                  tileColor: Colors.white70
              ),
            ),

          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(
                    context,
                    route.Quiz);
              },
              style: TextButton.styleFrom( //<-- SEE HERE
                side: BorderSide(width: 3.0),
              ),
              child: ListTile(
                  contentPadding: new EdgeInsets.fromLTRB(20, 0, 0, 0),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      ),
                    ],
                  ),
                  title: const Text('QUIZ', style: TextStyle(fontWeight: FontWeight.bold)),
                  tileColor: Colors.white70
              ),
            ),

          ),
          ]),
      ),
    );
  }
}