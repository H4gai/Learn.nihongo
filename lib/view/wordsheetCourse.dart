import 'package:flutter/material.dart';
import 'package:nihongo_learn/route/route.dart' as route;
import 'wordsheet.dart';

class wordsheetCourse extends StatefulWidget {
  const wordsheetCourse({super.key});

  @override
  State<wordsheetCourse> createState() => _wordsheetCourse();
}

class _wordsheetCourse extends State<wordsheetCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Worksheet"),
            ],
          ),
        ),
        body: Container(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: GridView(
              children: [
                TextButton(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [ Text("ひ", style: TextStyle(color: Colors.black),),
                        Text("ら", style: TextStyle(color: Colors.black),),
                        Text("が", style: TextStyle(color: Colors.black),),
                        Text("な", style: TextStyle(color: Colors.black),),
                        Text(
                          "Hiragana",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context,
                        route.secondPage);
                  },
                ),
                TextButton(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("カタカナ", style: TextStyle(color: Colors.black, fontSize: 40.0),),
                      Text(
                    "Katakana",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ]),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    print('Pressed');
                  },
                ),
                TextButton(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("片太卩勹王", style: TextStyle(color: Colors.black, fontSize: 40.0),),
                        Text(
                          "Kanji",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.teal,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
                    {
                      return wordsheet();
                    }));
                  },
                ),

              ],
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 50, crossAxisSpacing: 50),
            ),
          ),
        ));
  }
}
