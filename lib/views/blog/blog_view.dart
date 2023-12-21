import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:dashboard/views/blog/blog_half_image.dart';
import 'package:dashboard/views/blog/blog_image.dart';
import 'package:dashboard/views/blog/blog_position_text.dart';


class WidgetCallBlogMain extends StatefulWidget {
  BlogViewData blogViewData;
  WidgetCallBlogMain(this.blogViewData, this.onClick, {super.key});
  Function(BlogViewItems) onClick;

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
            height: 350.0,
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
              activeColor: Util.getColorFromHex(widget.blogViewData.blogViewActiveColor.toString()),
              color:  Util.getColorFromHex(
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