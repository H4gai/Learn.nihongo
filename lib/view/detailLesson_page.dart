import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nihongo_learn/ui/shared/color.dart';

class DetailLesson extends StatefulWidget {
  const DetailLesson({Key? key}) : super(key: key);

  @override
  State<DetailLesson> createState() => _DetailLessonState();
}

class _DetailLessonState extends State<DetailLesson> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.subtleWhite,
      appBar: AppBar(
        backgroundColor: AppColor.subtleWhite,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          textDirection: TextDirection.ltr,
          children: [
            Text(
              'Lesson 1 : Nihongo',
              style: GoogleFonts.fredoka(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'LET\'S INTRODUCE YOURSELF IN JAPANESE',
              style: GoogleFonts.fredoka(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Image.network(
              'https://www.scienceofpeople.com/wp-content/uploads/2014/09/1314878_HowtoMakeFriendsGuideImages1250x650V12_030322.jpg',
            ),
            SizedBox(height: 20),
            Text(
              '私はリズです\nWatashi wa Rizu desu\nSaya adalah Rizu',
              style: GoogleFonts.fredoka(
                color: Colors.black,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColor.japanRed,
        child: Text(
          'NEXT',
          style: GoogleFonts.fredoka(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
