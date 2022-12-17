import 'dart:ui';
import 'package:background_app_bar/background_app_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (_, __) => <Widget> [
          SliverAppBar(
            expandedHeight: 250,
            floating: false,
            pinned: true,
            snap: false,
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            flexibleSpace: BackgroundFlexibleSpaceBar(
                  title: Text("Background Appbar",style: TextStyle(fontSize: 15),),
                  centerTitle: false,
                  titlePadding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
                  background: ClipRect(
                      child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/nature.jpeg"),
                                  fit: BoxFit.fill,
                              ),
                          ),
                          child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black.withOpacity(0.5),
                                  ),
                              ),
                          ),
                      ),
                  ),
            ),
          ),
        ],
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Successoft Infotech",style: TextStyle(fontSize: 25),)
              ],
            ),
          ),
        ),
    );
  }
}
