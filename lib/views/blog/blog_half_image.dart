import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';


class WidgetCallHalfImage extends StatefulWidget {
  BlogViewItems blogViewItems;
  WidgetCallHalfImage(this.blogViewItems, {super.key});
// Items items;
  @override
  State<WidgetCallHalfImage> createState() => _WidgetCallHalfImageState();
}

class _WidgetCallHalfImageState extends State<WidgetCallHalfImage> {
  
  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 200,
                  height: 230,
                  margin: EdgeInsets.only(
                      top: 30.0, bottom: 8.0, right: 8.0, left: 8.0),
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                      image: NetworkImage(
                          widget.blogViewItems.blogViewImagePath!),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Text(
                    widget.blogViewItems.blogViewTitle.toString(),
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color:  Util.getColorFromHex(widget
                            .blogViewItems.blogViewTextTitleColor
                            .toString())),
                    maxLines: 2,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
            Container(
              // width: 100,
              decoration: BoxDecoration(
                color: Colors.white38,
              ),
              child: Text(
                widget.blogViewItems.blogViewDescription.toString(),
                style: TextStyle(
                    fontSize: 14,
                    color:  Util.getColorFromHex(widget
                        .blogViewItems.blogViewTextDescriptionColor
                        .toString())),
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
            Container(
              // width: 100,
              decoration: BoxDecoration(
                color: Colors.white38,
              ),
              child: Text(
                widget.blogViewItems.blogViewDate.toString(),
                style: TextStyle(
                    color:  Util.getColorFromHex(widget
                        .blogViewItems.blogViewTextTitleColor
                        .toString())),
                maxLines: 2,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        )
      ],
    ));
  }
}