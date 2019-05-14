import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Carousel Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Flutter Carousel Demo'),
      ),
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height/2,
          padding: EdgeInsets.all(30.0),
          child: new Carousel(
            boxFit: BoxFit.fill,
            dotIncreaseSize: 1.5,
            dotBgColor: Colors.white.withOpacity(0.0),
            indicatorBgPadding: 10.0,
            images: [
              new AssetImage('assets/image1.jpg'),
              new AssetImage('assets/image2.jpg'),
              new AssetImage('assets/image4.jpg'),
              new AssetImage('assets/image5.jpg'),
              new AssetImage('assets/image6.jpg'),
              new AssetImage('assets/image7.jpg'),
            ],
            autoplay: false,
          ),
        ),
      ),
    );
  }
}
