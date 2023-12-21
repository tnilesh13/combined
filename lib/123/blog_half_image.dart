import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';

import 'colors_global.dart';
import 'model_blog.dart';

// class VariablesBlog {
//   String title = "";
//   String description = "";
//   String date = "";
//   String image = "";
//   VariablesBlog(this.title, this.description, this.date, this.image);
// }

class WidgetCallHalfImage extends StatefulWidget {
  BlogViewItems blogViewItems;
   WidgetCallHalfImage(this.blogViewItems,{super.key});
// Items items;
  @override
  State<WidgetCallHalfImage> createState() => _WidgetCallHalfImageState();
}

class _WidgetCallHalfImageState extends State<WidgetCallHalfImage> {
  // List<VariablesBlog> variableblog = [
  //   VariablesBlog("blog1sdfghfdsfghjgfdsfghjhgfdfghjbhgfdsfghjgfdsfghfdsfghfdsdfghgfdsdxfc", "fffddfdffdfffffd", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog2", "kekdkdkdzscsdfgdgdfsdahshgfhgdjhdfvbfhjyrjhfbnffdnbfghfdghgfghfdghfdfghfxccfdgbfdbfdsfdffgfdsfdsdfdsffdffdfcgfdxfcfdsfcfdffdfcgfcgdfcfdffdghergherdfghjgfdfghfddfghfddfghgfdghgffsj fmsnfbsj hdbdvhj ndbjh vsvbsd vhdnvbd vhdnvb k dfghgsrdgfhrdgfbdgfdcbgvnbfdcbfghffjfhfjgggjgkgkg", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog3", "rkfeopfrkgtrkl", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog4", "kdsjfhjesmrfb", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog5", "jkdksndkjgnr", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog6", "fndjnfbf", "2023/10/12", "asset/aa.png"),
  // ];
  //  int currentIndex = 0;
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
                        image: NetworkImage(widget.blogViewItems.blogViewImagePath.toString()),
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
                            style: TextStyle(fontWeight: FontWeight.w500,  fontSize: 18, color: GlobalColor.toColor(widget.blogViewItems.blogViewTextTitleColor.toString())),
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
                            style: TextStyle(fontSize: 14, color: GlobalColor.toColor(widget.blogViewItems.blogViewTextDescriptionColor.toString())),
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
                            style: TextStyle(color: GlobalColor.toColor(widget.blogViewItems.blogViewTextTitleColor.toString())),
                            maxLines: 2,
                            textAlign: TextAlign.start,
                          ),
                        ),
                ],
              )
             
          

          
         
            ],
          )      
    );
  }
}
