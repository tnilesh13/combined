import 'dart:convert';
import 'package:dashboard/views/blog/widget_blog_view.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:dashboard/views/banners/widget_banner_image.dart';
import 'package:dashboard/views/banners/widget_banner_text.dart';
import 'package:dashboard/views/banners/widget_banner_video.dart';
import 'package:dashboard/views/category/widget_popular_category.dart';
import 'package:dashboard/views/product/widget_product_view.dart';
import 'package:dashboard/views/slider/widget_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/Dashboard.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var list = json.decode(snapshot.data!);
            DashboardModel myList = DashboardModel.fromJson(list);

            return SingleChildScrollView(
              child: Column(
                  children: myList.dashboardJson!.map((element) {
                if (element.view == "Sliders") {
                  return WidgetSlider(element.sliderData!, (item) {
                    (element.sliderData);
                  });
                }
                if (element.view == "Category") {
                  return WidgetPopularCategory(element.categoryData!);
                }
                if (element.view == "Product") {
                  return WidgetPopulorProduct(element.productData!);
                }
                if (element.view == "TextView") {
                  return WidgetBannerText(element.textViewData!);
                }
                if (element.view == "ImageView") {
                  return WidgetBannerImage(element.imageViewData!);
                }
                if (element.view == "VideoView") {
                  return WidgetBannerVideo(element.videoViewData!);
                }
                if (element.view == "BlogView") {
                  return WidgetBlogView(element.blogViewData!, (item) {
                    (element.blogViewData!);
                  });
                }
                return SizedBox.shrink();
              }).toList()),
            );
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
        });
  }
}
