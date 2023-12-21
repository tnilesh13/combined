import 'package:dashboard/views/blog/blog_view.dart';
import 'package:dashboard/helper/read_json.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:dashboard/views/banners/widget_image.dart';
import 'package:dashboard/views/banners/widget_text.dart';
import 'package:dashboard/views/banners/widget_video_player.dart';
import 'package:dashboard/views/category/widget_popular_category.dart';
import 'package:dashboard/views/product/widget_product_view.dart';
import 'package:dashboard/views/slider/custom_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  SliderData? listSlider;
  CategoryData? listCategory;
  ProductData? listProduct;
  TextViewData? listTextView;
  ImageViewData? listImageView;
  VideoViewData? listVideoView;
  BlogViewData? listBlogView;

  @override
  void initState() {
    super.initState();

    ReadJsonFile.readJsonData().then((value) {
      setState(() {});

      value.dashboardJson!.forEach((element) {
        if (element.view == "Sliders") {
          listSlider = element.sliderData;
        } else if (element.view == "Category") {
          listCategory = element.categoryData;
        } else if (element.view == "Product") {
          listProduct = element.productData;
        } else if (element.view == "TextView") {
          listTextView = element.textViewData;
        } else if (element.view == "ImageView") {
          listImageView = element.imageViewData;
        } else if (element.view == "VideoView") {
          listVideoView = element.videoViewData;
        } else if (element.view == "BlogView") {
          listBlogView = element.blogViewData;
        }
      });
    });
  }

  // List<Widget> myItems = myList. .map((item) {
  //   // bannerId = item.sliderBannerUID!;
  //   if (item.sliderType == "Image") {
  //     return InkWell(
  //       onTap: widget.OnClick(item),
  //       child: WidgetImage(item));
  //   } else if (item.sliderType == "ImageWithText") {
  //     return WidgetImageWithText(item);
  //   } else {
  //     return WidgetImageWithTextButton(item);
  //   }
  // }).toList();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/Dashboard.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  CustomSlider(listSlider!, (item) {
                    (listSlider);
                  }),
                  SizedBox(height: 10),
                  WidgetPopularCategory(listCategory!),
                  SizedBox(height: 10),
                  WidgetCallBlogMain(listBlogView!, (item) {
                    (listSlider);
                  }),
                  SizedBox(height: 10),
                  WidgetPopulorProduct(listProduct!),
                  SizedBox(height: 10),
                  WidgetText(listTextView!),
                  SizedBox(height: 10),
                  WidgetImage1(listImageView!),
                  SizedBox(height: 10),
                  WidgetVideoPlayer(listVideoView!),
                  SizedBox(height: 10),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
      }
    );
  }
}