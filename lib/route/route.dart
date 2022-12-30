import 'package:flutter/material.dart';
import 'package:nihongo_learn/view/wordsheet.dart';
import 'package:nihongo_learn/view/main_menu.dart';


// route names
const String homePage = 'homepage';
const String secondPage = 'secondpage';
const String thirdPage = 'thirdpage';

void homepage() {}

// controller function to control page route flow
Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case homePage:
      return MaterialPageRoute(builder: (context) => wordsheet());
    case secondPage:
      return MaterialPageRoute(builder: (context) => MainMenu());
    // case thirdPage:
    //   return MaterialPageRoute(builder: (context) => ThirdPage() );
    default:
      throw ('this route name does not exist');
  }
}
