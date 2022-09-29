import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:lab11_t1/services/word_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setWorldTime() async {
    WordTime timeinstance =
    WordTime(location: 'kolkata',flag: 'india.png',url: 'Asia/Kolkata');
    await timeinstance.getTime();
    Navigator.pushNamed(context, '/home',arguments: {
      'location' : timeinstance.location,
      'flag' : timeinstance.flag,
      'time' : timeinstance.time,
    });

  }
  @override
  void initState() {
    super.initState();
    setWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SpinKitFadingCube(
          color: Colors.black,
          size: 98.0,

        )
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:http';
// import 'dart:convert';
// class Loading extends StatefulWidget {
//   @override
//   State<Loading> createState() => _LoadingState();
// }
// class _LoadingState extends State<Loading> {
//   void getData() async {
//     final response = await
//     get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//     print(response.body);
//
//
//     Map data = jsonDecode(response.body);
//     print(data);
//     print(data['title']);
//   }
//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('LOADING SCREEN'),
//     );
//   }
// }