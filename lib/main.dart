import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SplashScreenPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: new HomeScreen(),
       backgroundColor: Colors.white,
      title: new Text('Welcome Screen',textScaleFactor: 2,),
        image: new Image.asset('assets/welcome.png'),
      loadingText: Text("Loading"),
      photoSize: 150.0,
      loaderColor: Colors.red,
    );
  }
}
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text("Register")),
      body: Center(
          child:Text("Add Register activity here.",
              style: TextStyle( color: Colors.black, fontSize: 25)
          )
      ),
    );
  }
}
