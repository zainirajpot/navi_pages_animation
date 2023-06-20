import 'package:flutter/material.dart';
import 'package:navi_pages_animation/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  const SplashScreen(),
    );
  }
}

class GridView extends StatefulWidget {
   const GridView({super.key});

  @override
  State<GridView> createState() => _GridViewState();
}

class _GridViewState extends State<GridView> {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      //  child:GridView.builder(gridDelegate: gridDelegate, itemBuilder: itemBuilder) ,
        
       // child: SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => null), gridDelegate: gridDelegate),
        // child: GridView.builder(gridDelegate: SliverChildBuilderDelegate((context, index) => ), itemBuilder: itemBuilder),
        // // child: GridView.builder(
        //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //     crossAxisCount: 2,
        //   ),
        //   itemCount: 2,
        //   itemBuilder: (BuildContext context, int index) {
        //     return ;
        //   },
        // ),
      )
      
    );
  }
}