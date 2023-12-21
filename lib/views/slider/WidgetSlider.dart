// import 'dart:convert';
// import 'package:dashboard/modelClass/DashboardModel.dart';
// import 'package:dashboard/views/slider/custom_slider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart' as root_bundle;

// class WidgetSlider extends StatefulWidget {
//   SliderData? sliderData;
//   // const WidgetSlider({super.key});
//   WidgetSlider(this.sliderData);

//   State<WidgetSlider> createState() => _WidgetSliderState();
// }

// class _WidgetSliderState extends State<WidgetSlider> {

//   @override
//   void initState() {
//     super.initState();
//   }
  
//   @override
//   Widget build(BuildContext context) {
//     return 
    
    
//     FutureBuilder(
//       future: root_bundle.rootBundle.loadString("assets/json/Dashboard.json"),
//       builder: (context, snapshot) {
//         if (snapshot.hasData) {
//           // var jsonData = json.decode(snapshot.data.toString());
//           // final jd = json.decode(jsonData)['DashboardJson'];
          
//           return CustomSlider(widget.sliderData!,(item) {
          
//           },  
//           );
//         } else if (snapshot.hasError) {
//           return Text('Error loading JSON'); // Handle error
//         } else {
//           return CircularProgressIndicator(); // Show a loading indicator
//         }
//       },       
//     );
//   }
// }