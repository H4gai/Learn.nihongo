import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nihongo_learn/ui/shared/color.dart';
import 'package:nihongo_learn/view/quizz_screen.dart';

class MyCourse extends StatefulWidget {
  const MyCourse({Key? key}) : super(key: key);

  @override
  State<MyCourse> createState() => _MyCourseState();
}

class _MyCourseState extends State<MyCourse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("My Course"),
          ],
        ),
      ),
      backgroundColor: AppColor.subtleWhite,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 30.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: AppColor.softRed.withOpacity(0.25),
                        spreadRadius: 2,
                        blurRadius: 50,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 20.0,
                      right: 20.0,
                      top: 30.0,
                      bottom: 100.0,
                    ),
                    child: Column(
                      children: [
                        // baris progres Kanji
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Kanji',
                              style: GoogleFonts.fredoka(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '12',
                                  style: GoogleFonts.fredoka(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '/30',
                                  style: GoogleFonts.fredoka(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 15),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(height: 15),

                        // baris progres Hiragana
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Hiragana',
                              style: GoogleFonts.fredoka(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '10',
                                  style: GoogleFonts.fredoka(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '/15',
                                  style: GoogleFonts.fredoka(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        SizedBox(height: 15),
                        Divider(
                          thickness: 2,
                        ),
                        SizedBox(height: 15),

                        // baris progres Katakana
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Katakana',
                              style: GoogleFonts.fredoka(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '3',
                                  style: GoogleFonts.fredoka(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  '/23',
                                  style: GoogleFonts.fredoka(
                                    color: Colors.black,
                                    fontSize: 13,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
