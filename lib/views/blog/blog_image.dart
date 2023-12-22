import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetCall extends StatelessWidget {
  BlogViewItems blogViewItems;
  WidgetCall(this.blogViewItems, {super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
            // height: 200,
            margin: EdgeInsets.only(bottom: 8.0, right: 8.0, left: 8.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: Colors.black),
            child: Image(
              image: NetworkImage(blogViewItems.blogViewImagePath!),
              fit: BoxFit.contain,
            )),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Text(
            blogViewItems.blogViewTitle.toString(),
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18,
                color: Util.getColorFromHex(
                    blogViewItems.blogViewTextTitleColor.toString())),
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white38,
          ),
          child: Text(
            blogViewItems.blogViewDescription.toString(),
            style: TextStyle(
                fontSize: 14,
                color: Util.getColorFromHex(
                    blogViewItems.blogViewTextDescriptionColor.toString())),
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white38,
          ),
          child: Text(
            blogViewItems.blogViewDate.toString(),
            style: TextStyle(
                color: Util.getColorFromHex(
                    blogViewItems.blogViewTextTitleColor.toString())),
            maxLines: 2,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}
