import 'package:dashboard/helper/read_json.dart';
import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatefulWidget {
  TextViewData textViewData;
  WidgetText(this.textViewData);

  @override
  State<WidgetText> createState() => _WidgetTextState();
}

class _WidgetTextState extends State<WidgetText> {

  // Map<dynamic, dynamic>? myMap;
  
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();

  //   ReadJsonFile.readJsonData().then((value) {
  //     setState(() {
  //       // myMap = value["TextView"];
  //       print("myMapppp$myMap");
  //     });
  //   });
  // }

  
  @override
  Widget build(BuildContext context) {
  var textColor = Util.getColorFromHex(widget.textViewData.textViewFontColor!);
  var bgColor = Util.getColorFromHex(widget.textViewData.textViewBackgroundColor!);

    return Container(
      margin: EdgeInsets.all(widget.textViewData.textViewMargin!),
      width: double.infinity,
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.all(widget.textViewData.textViewPadding!),
        child: Column(
          children: [
            Text(widget.textViewData.textViewText!, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: widget.textViewData.textViewFontSize),),
            Text(widget.textViewData.textViewDescription!, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: widget.textViewData.textViewDescriptionFontSize),),
          ],
        ),
      ),
    );
  }
}