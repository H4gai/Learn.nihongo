import 'package:flutter/material.dart';
import 'package:nihongo_learn/main.dart';
import 'package:nihongo_learn/view/detailLesson_page.dart';
import 'package:nihongo_learn/view/myCourse_page.dart';
import 'package:nihongo_learn/view/wordsheet.dart';
import 'package:nihongo_learn/view/main_menu.dart';
import 'package:nihongo_learn/view/register_page.dart';
import 'package:nihongo_learn/view/lessonPage.dart';

// route names
const String homePage = 'homepage';
const String secondPage = 'secondpage';
const String thirdPage = 'thirdpage';
const String Quiz = 'quiz';
const String Lesson = 'lesson';
const String detailLesson = 'detaillesson';
const String myCourse = 'mycourse';

void homepage() {}

// controller function to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => MyApp());
    case secondPage:
      return MaterialPageRoute(builder: (context) => wordsheet());
    case thirdPage:
      return MaterialPageRoute(builder: (context) => RegisterPage() );
    case Quiz:
      return MaterialPageRoute(builder: (context) => MainMenu() );
    case Lesson:
      return MaterialPageRoute(builder: (context) => lesson() );
    case detailLesson:
      return MaterialPageRoute(builder: (context) => DetailLesson() );
    case myCourse:
      return MaterialPageRoute(builder: (context) => MyCourse() );
    default:
      throw ('this route name does not exist');
  }
}
