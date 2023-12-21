import 'package:dashboard/dashboardScreen.dart';
import 'package:dashboard/views/banners/widget_image.dart';
import 'package:dashboard/views/banners/widget_text.dart';
import 'package:dashboard/views/banners/widget_video_player.dart';
import 'package:dashboard/views/category/widget_popular_category.dart';
import 'package:dashboard/views/product/widget_product_view.dart';
import 'package:dashboard/views/slider/WidgetSlider.dart';
import 'package:dashboard/views/slider/widget_image.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: MyDashboard());
  }
}

class MyDashboard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: const Text("Slider Example"),
      ),
      body:  Container(
        height: 400,
        child: Dashboard())
      // body: const SingleChildScrollView(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: [

            // WidgetSlider(),
            // SizedBox(height: 10),
            // WidgetPopulorCategory(),
            // SizedBox(height: 10),
            // WidgetPopulorProduct(),
            // SizedBox(height: 10),
            // WidgetText(),
            // SizedBox(height: 10),
            // WidgetImage1(),
            // SizedBox(height: 10),
            // WidgetVideoPlayer(),
    //         SizedBox(height: 10),
    //         SizedBox(height: 10),
    //       ],
    //     ),
    //   )
    );
  }
}