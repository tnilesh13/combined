import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetBannerImage extends StatelessWidget {
  ImageViewData imageViewData;
  WidgetBannerImage(this.imageViewData);

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(
        imageViewData.imageViewTextView!.imageViewFontColor!);
    var bgColor = Util.getColorFromHex(imageViewData.imageViewBackgroundColor!);

    return Container(
        margin: EdgeInsets.all(imageViewData.imageViewMargin!),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(imageViewData.imageViewRadius!),
          color: bgColor,
        ),
        width: double.infinity,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(imageViewData.imageViewPadding!),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(imageViewData.imageViewRadius!),
              child: Image.network(
                imageViewData.imageViewSrc!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(
                imageViewData.imageViewTextView!.imageViewPadding!),
            child: Text(
              imageViewData.imageViewTextView!.imageViewDescription!,
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: imageViewData
                      .imageViewTextView!.imageViewDescriptionFontSize!),
            ),
          )
        ]));
  }
}
