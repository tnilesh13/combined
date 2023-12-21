import 'package:dashboard/helper/read_json.dart';
import 'package:dashboard/helper/util.dart';
import 'package:flutter/material.dart';

class WidgetImage1 extends StatefulWidget {
  const WidgetImage1({super.key});

  @override
  State<WidgetImage1> createState() => _WidgetImage1State();
}

class _WidgetImage1State extends State<WidgetImage1> {
  Map<dynamic, dynamic>? myMap;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ReadJsonFile.readJsonData().then((value) {
      setState(() {
        // myMap = value["ImageView"];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var textColor = Util.getColorFromHex(myMap!["TextView"]["FontColor"]);
    var bgColor = Util.getColorFromHex(myMap!["BackgroundColor"]);

    return Container(
        margin: EdgeInsets.all(myMap!["Margin"]),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(myMap!["Radius"]),
          color: bgColor,
        ),
        width: double.infinity,
        // color: bgColor,
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(myMap!["Padding"]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(myMap!["Radius"]),
              child: Image.network(
                myMap!["Src"],
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(myMap!["TextView"]["Padding"]),
            child: Text(
              myMap!["TextView"]["Description"],
              style: TextStyle(
                  color: textColor,
                  fontWeight: FontWeight.bold,
                  fontSize: myMap!["TextView"]['DescriptionFontSize']),
            ),
          )
        ]));
  }
}
