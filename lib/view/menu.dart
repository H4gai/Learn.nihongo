import 'package:flutter/material.dart';
import 'package:nihongo_learn/route/route.dart' as route;

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menu();
}

class _menu extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Menu"),
            ],
          ),
        ),
        body: Container(
          child: ListView(
              children: [
                Column(
                  children:[
                    Card(

                      child: SizedBox(
                        width: 350,
                        height: 100,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              const ListTile(

                                title: Text('Learned Today'),
                                subtitle: Text('12min / 30min'),

                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  TextButton(

                                    child: const Text('My Course', style: TextStyle(color: Colors.white),),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                    ),
                                    onPressed: () {/* ... */},
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    MyStatelessWidget(),
                    Card(

                      child: SizedBox(
                        width: 350,
                        height: 300,
                        child: Center(
                          child: Column(
                            children: <Widget>[
                              const ListTile(

                                title: Text('Learned Today', style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),

                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  TextButton(
                                    child: const Text('My Course', style: TextStyle(color: Colors.white),),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                    ),
                                    onPressed: () {/* ... */},
                                  ),
                                  const SizedBox(width: 15),
                                  TextButton(
                                    child: const Text('My Course', style: TextStyle(color: Colors.white),),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                    ),
                                    onPressed: () {/* ... */},
                                  ),
                                  const SizedBox(width: 15),
                                  TextButton(
                                    child: const Text('My Course', style: TextStyle(color: Colors.white),),
                                    style: TextButton.styleFrom(
                                      backgroundColor: Colors.redAccent,
                                    ),
                                    onPressed: () {/* ... */},
                                  ),
                                  const SizedBox(width: 15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

              ]
          ),

        ),
    );
  }
}
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        // clipBehavior is necessary because, without it, the InkWell's animation
        // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
        // This comes with a small performance cost, and you should not set [clipBehavior]
        // unless you need it.
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },
          child: const SizedBox(
            width: 350,
            height: 200,
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Text('Continue Course', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 23),),
            ),
          ),
        ),
      ),
    );
  }
}
