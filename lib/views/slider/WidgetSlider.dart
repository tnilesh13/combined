import 'dart:convert';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:dashboard/views/slider/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' as root_bundle;

class WidgetSlider extends StatefulWidget {
  const WidgetSlider({super.key});

  State<WidgetSlider> createState() => _WidgetSliderState();
}

class _WidgetSliderState extends State<WidgetSlider> {

  @override
  void initState() {
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: root_bundle.rootBundle.loadString("assets/json/Dashboard.json"),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // Map<String, dynamic> jsonData = json.decode(snapshot.data.toString());
          // List<Map<String, dynamic>> jsonData = json.decode(snapshot.data.toString());
          List jsonData = json.decode(snapshot.data.toString());
          // Data newSlider = Data.fromJson(jsonData["DashboardJson"]);  
          
          jsonData.map((item) {
            print("item$item");
          });
        
          print("newSlider$jsonData");
          return Text("");
          /*
          return CustomSlider(newSlider,(item) {
          
          },  
          );
          
          */
        } else if (snapshot.hasError) {
          return Text('Error loading JSON'); // Handle error
        } else {
          return CircularProgressIndicator(); // Show a loading indicator
        }
      },       
    );
  }
}