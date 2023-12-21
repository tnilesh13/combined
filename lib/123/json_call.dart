// import 'dart:convert';
// import 'package:dashboard/modelClass/DashboardModel.dart';
// import 'package:flutter/services.dart' as root_bundle;
// import 'package:flutter/material.dart';
// import 'package:dashboard/123/blog_view.dart';

// import 'model_blog.dart';


// class WidgetBlogSlider extends StatelessWidget {
//   BlogViewData blogViewData;
//   WidgetBlogSlider(this.blogViewData);

//   @override
//   Widget build(BuildContext context) {
//     // return FutureBuilder(
//     //   // future: DefaultAssetBundle.of(context).loadString('assets/json/myJson.json'),
//     //   future: root_bundle.rootBundle.loadString("asset/json_items.json"),
//     //   builder: (context, snapshot) {
//     //     if (snapshot.hasData) {
//     //       Map<String, dynamic> jsonData = json.decode(snapshot.data.toString());
//     //       BlogView newSlider = BlogView.fromJson(jsonData["BlogView"]);
          
//           return WidgetCallBlogMain(newSlider,(item) {
            
//       //     });
//       //   } else if (snapshot.hasError) {
//       //     return Text('Error loading JSON'); // Handle error
//       //   } else {
//       //     return CircularProgressIndicator(); // Show a loading indicator
//       //   }
//       // },       
//     // );
//   }
// }