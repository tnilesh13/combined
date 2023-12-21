import 'package:dashboard/123/model_blog.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:dashboard/123/blog_half_image.dart';
import 'package:dashboard/123/blog_image.dart';
import 'package:dashboard/123/blog_position_text.dart';

import 'colors_global.dart';

// class VariablesBlog {
//   String title = "";
//   String description = "";
//   String date = "";
//   String image = "";
//   VariablesBlog(this.title, this.description, this.date, this.image);
// }

class WidgetCallBlogMain extends StatefulWidget {
// BlogView blogview;
  BlogViewData blogViewData;
  WidgetCallBlogMain(this.blogViewData, this.onClick, {super.key});
  Function(Items) onClick;

  @override
  State<WidgetCallBlogMain> createState() => _WidgetCallBlogMainState();
}

class _WidgetCallBlogMainState extends State<WidgetCallBlogMain> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: widget.blogViewData.blogViewItems!.map((item) {
            if (widget.blogViewData.blogViewViewType == "View1") {
              return WidgetCallHalfImage(item);
            } else if (widget.blogViewData.blogViewViewType == "View2") {
              return WidgetCall(item);
            } else {
              return WidgetCallPosition(item);
            }
          }).toList(),
          options: CarouselOptions(
            // height: 400.0,
            // enlargeCenterPage: true,
            autoPlay: widget.blogViewData.blogViewAutoPlay!,
            aspectRatio: 16 / 20,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll:
                widget.blogViewData.blogViewEnableInfiniteScroll!,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: widget.blogViewData.blogViewViewportFraction!,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
                print(currentIndex);
              });
            },
          ),
        ),
        SizedBox(
          height: 20,
        ),
        DotsIndicator(
          decorator: DotsDecorator(
              activeColor: GlobalColor.toColor(
                  widget.blogViewData.blogViewActiveColor.toString()),
              color: GlobalColor.toColor(
                  widget.blogViewData.blogViewColorDots.toString())),
          //  onTap: (position) =>,
          dotsCount: widget.blogViewData.blogViewItems!.length,

          position: currentIndex,
//declare the position to autoplay
        ),
      ],
    );
  }
}