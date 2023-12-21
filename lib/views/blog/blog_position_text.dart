import 'package:dashboard/helper/util.dart';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';

class WidgetCallPosition extends StatefulWidget {
  BlogViewItems blogViewItems;
  WidgetCallPosition(this.blogViewItems, {super.key});
  // Items items;
  @override
  State<WidgetCallPosition> createState() => _WidgetCallPositionState();
}

class _WidgetCallPositionState extends State<WidgetCallPosition> {
  // List<VariablesBlog> variableblog = [
  //   VariablesBlog("blog1", "fffddfdffdfffffdzdfghgfdfgnfdfgnvfxgchvhgfdfgvgcdcbvdxbcdfbvdffnfdfcn", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog2", "kekdkdkdkfgcfdfgchvfdgchvgfdghvhgfghvgfghfgcv", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog3", "rkfeopfrkgtrkl", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog4", "kdsjfhjesmrfb", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog5", "jkdksndkjgnr", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog6", "fndjnfbf", "2023/10/12", "asset/aa.png"),
  // ];
  // int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return 
        
            Stack(
              children: [

                Container(
                  
                  margin: EdgeInsets.only(
                      top: 8.0, bottom: 8.0, right: 8.0, left: 8.0),
                  padding: EdgeInsets.only(top: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: NetworkImage(widget.blogViewItems.blogViewImagePath.toString()),
                      fit: BoxFit.cover,
                     
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 15,
                  child: Container(
                    width: MediaQuery.of(context).size.width-100,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // width: 100,
                           decoration: BoxDecoration(
                            color: Colors.white38,
                      //        boxShadow: [BoxShadow(
                      //   color: Colors.white,
                      //   offset: const Offset(
                      //     5.0,
                      //     5.0,
                      //   ),
                      //   blurRadius: 5.0,
                      //   spreadRadius: 2.0,
                      // ), ]
                          ),
                          child: Text(
                            widget.blogViewItems.blogViewTitle.toString(),
                            style: TextStyle(fontWeight: FontWeight.w500,  fontSize: 18, color:  Util.getColorFromHex(widget.blogViewItems.blogViewTextTitleColor.toString())),
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
                            widget.blogViewItems.blogViewDescription.toString(),
                            style: TextStyle(fontSize: 14, color:  Util.getColorFromHex(widget.blogViewItems.blogViewTextDescriptionColor.toString())),
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
                            style: TextStyle(color:  Util.getColorFromHex(widget.blogViewItems.blogViewTextTitleColor.toString())),
                            maxLines: 2,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
         ;
      
  }
}
