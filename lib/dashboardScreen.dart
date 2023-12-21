import 'package:dashboard/helper/read_json.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  DashboardJson? myList;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ReadJsonFile.readJsonData().then((value) {
      print("init");
      // setState(() {
        // myList = value["ImageView"];
        // myList = value;
    print("myList3${value}");
    print("myList1${value.sliderData!}");
    print("sliderData${myList!.sliderData!}");
      // });
    });
  }

  // List<Widget> ci = myList.map((item) {
  //   if (item)
  // });

    // List<Widget> myItems = myList. .map((item) {
    //   // bannerId = item.sliderBannerUID!;
    //   if (item.sliderType == "Image") {
    //     return InkWell(
    //       onTap: widget.OnClick(item),
    //       child: WidgetImage(item));
    //   } else if (item.sliderType == "ImageWithText") {
    //     return WidgetImageWithText(item);
    //   } else {
    //     return WidgetImageWithTextButton(item);
    //   }
    // }).toList();

  @override
  Widget build(BuildContext context) {
    print("myList$myList");
    print("sliderData${myList!.sliderData!}");

        // myList!.view == "Sliders" ? {
        //  return  CustomSlider(myList!.sliderData!,(item) {(myList!.sliderData);});
        // } : 
        return Text("data"); 
    // return Column(
    //   children: [

    //   ],
    // );
    

    // return 
    
  }
}