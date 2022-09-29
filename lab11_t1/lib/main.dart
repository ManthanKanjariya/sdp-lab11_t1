import 'package:flutter/material.dart';
import 'package:lab11_t1/pages/Home.dart';
import 'package:lab11_t1/pages/choose_location.dart';
import 'package:lab11_t1/pages/loading.dart';


void main() => runApp(MaterialApp(

  // initialRoute: '/home',
    initialRoute:'/',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    }
));