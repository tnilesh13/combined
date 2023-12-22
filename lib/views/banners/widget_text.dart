import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  TextViewData textViewData;
  WidgetText(this.textViewData);

  // Map<dynamic, dynamic>? myMap;
  @override
  Widget build(BuildContext context) {
  var textColor = Util.getColorFromHex(textViewData.textViewFontColor!);
  var bgColor = Util.getColorFromHex(textViewData.textViewBackgroundColor!);

    return Container(
      margin: EdgeInsets.all(textViewData.textViewMargin!),
      width: double.infinity,
      color: bgColor,
      child: Padding(
        padding: EdgeInsets.all(textViewData.textViewPadding!),
        child: Column(
          children: [
            Text(textViewData.textViewText!, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: textViewData.textViewFontSize),),
            Text(textViewData.textViewDescription!, style: TextStyle(color: textColor, fontWeight: FontWeight.bold, fontSize: textViewData.textViewDescriptionFontSize),),
          ],
        ),
      ),
    );
  }
}