import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetImageWithText extends StatelessWidget {
  // Map<String, dynamic> imageee;
  SliderItems myData;
  WidgetImageWithText(this.myData);

  @override
  Widget build(BuildContext context) {
    // print("imageee $imageee");
    return Container(
          child: Stack(
              children: [
                // Image.asset(
                //   myData["image_path"],
                //   fit: BoxFit.cover,
                //   width: double.infinity,
                // ),
                Image.network(
                  myData.sliderLink!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Positioned(
                    bottom: 100,
                    left: 0,
                    right: 0,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(myData.sliderText!,
                              style: const TextStyle(
                                  backgroundColor: Colors.transparent,
                                  color: Color.fromARGB(255, 243, 255, 21),
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold)),
                        ]))
              ],
            ),
      );
  }
}
