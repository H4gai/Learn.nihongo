import 'package:flutter/material.dart';
import 'package:nihongo_learn/route/route.dart' as route;
import 'package:nihongo_learn/ui/shared/color.dart';

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
              Text("Wordsheet"),
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
                      children: [ Text("あ", style: TextStyle(color: AppColor.softRed, fontSize: 40.0),),
                        Text(
                          "Hiragana",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
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
                    Navigator.pushNamed(
                        context,
                        route.secondPage);
                  },
                ),
                TextButton(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("ア", style: TextStyle(color: AppColor.softRed, fontSize: 40.0),),
                      Text(
                    "Katakana",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.0,
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
                TextButton(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("日本語", style: TextStyle(color: AppColor.softRed, fontSize: 40.0),),
                        Text(
                          "Kanji",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30.0,
                            color: AppColor.zenBlack,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ]),
                  style: TextButton.styleFrom(
                    backgroundColor: AppColor.pureWhite,
                    shadowColor: Colors.red,
                    elevation: 5,
                  ),
                  onPressed: () {
                    print('Pressed');
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
