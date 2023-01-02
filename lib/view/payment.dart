import 'package:flutter/material.dart';
import 'package:nihongo_learn/route/route.dart' as route;

class payment extends StatefulWidget {
  const payment({super.key});

  @override
  State<payment> createState() => _payment();
}

class _payment extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // The title text which will be shown on the action bar
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
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
                      children: [
                        Text(
                          "Premium",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "-\ More Lesson Unclock",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "-\ Enak deh pokoknya",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "-\ Dll",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 10.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Rp.150.000,\-",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context,
                                  route.Quiz);
                            },
                            style: TextButton.styleFrom( //<-- SEE HERE
                              side: BorderSide(width: 3.0, color: Colors.blue),
                              backgroundColor: Colors.blue,
                            ),
                            child: Text(
                              "Buy",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15.0,
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                              ),
                            ),)
                      ]),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.white,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(
                        context,
                        route.secondPage);
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
