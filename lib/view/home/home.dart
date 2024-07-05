  import 'package:flutter/material.dart';
  import 'package:movie_app/view/bottombar/test.dart';
import 'package:movie_app/view/home/TVShow/ListTVShow.dart';
  import '../bottombar/bottomBar.dart';

import 'IndicatorState.dart';
import 'ListFlim/ListFlim.dart';
import 'tab/tabBar.dart';

  class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Home(),
      );
    }
  }

  class Home extends StatelessWidget {
    const Home({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black87,
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.black87,
          title: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to",
                style: TextStyle(
                  color: Colors.white60,
                  fontSize: 10,
                ),
              ),
              Text(
                "Cine Circle",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              )
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.search, size: 35, color: Colors.white70),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications_none, size: 35, color: Colors.white70),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 200, // You can adjust the height according to your needs
              child: CarouselWithIndicatorDemo(),
            ),
            CustomTab(),
            Padding(
              padding: const EdgeInsets.only(top:40.0,left: 8,right: 8,bottom: 8),
              child: ListFilm(name: 'Trending Movies',),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0,left: 8,right: 8,bottom: 8),
              child: ListTVShow(name: 'TV Shows',),
            ),
          ],

        ),
        bottomNavigationBar: Container(
            child: Bottom(),
            color: Color.fromARGB(100, 66, 57, 57),

        ),
      );
    }
  }