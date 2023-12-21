import 'package:dashboard/helper/read_json.dart';
import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetImage1 extends StatefulWidget {
  ImageViewData imageViewData;
  WidgetImage1(this.imageViewData);

  @override
  State<WidgetImage1> createState() => _WidgetImage1State();
}

class _WidgetImage1State extends State<WidgetImage1> {
  // Map<dynamic, dynamic>? myMap;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   ReadJsonFile.readJsonData().then((value) {
  //     setState(() {
  //       // myMap = value["ImageView"];
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(widget.imageViewData.imageViewTextView!.imageViewFontColor!);
    var bgColor = Util.getColorFromHex(widget.imageViewData.imageViewBackgroundColor!);

    return Container(
        margin: EdgeInsets.all(widget.imageViewData.imageViewMargin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.imageViewData.imageViewRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(widget.imageViewData.imageViewPadding!),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(widget.imageViewData.imageViewRadius!),
              child: Image.network(
                widget.imageViewData.imageViewSrc!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(widget.imageViewData.imageViewTextView!.imageViewPadding!),
            child: Text(
              widget.imageViewData.imageViewTextView!.imageViewDescription!,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: widget.imageViewData.imageViewTextView!.imageViewDescriptionFontSize!),
            ),
          )
        ]));
  }
}
