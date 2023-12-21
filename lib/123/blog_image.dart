import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';
import 'colors_global.dart';

// class VariablesBlog {
//   String title = "";
//   String description = "";
//   String date = "";
//   String image = "";
//   VariablesBlog(this.title, this.description, this.date, this.image);
// }

class WidgetCall extends StatefulWidget {
  BlogViewItems blogViewItems;
   WidgetCall(this.blogViewItems,{super.key});
// Items items;
  @override
  State<WidgetCall> createState() => _WidgetCallState();
}

class _WidgetCallState extends State<WidgetCall> {
  // List<VariablesBlog> variableblog = [
  //   VariablesBlog("blog1", "fffddfdffdfffffd", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog2", "kekdkdkdk", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog3", "rkfeopfrkgtrkl", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog4", "kdsjfhjesmrfb", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog5", "jkdksndkjgnr", "2023/10/12", "asset/aa.png"),
  //   VariablesBlog("blog6", "fndjnfbf", "2023/10/12", "asset/aa.png"),
  // ];
  //  int currentIndex = 0;
   
  @override
  Widget build(BuildContext context) {
    return 
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // height: 200,
                     margin: EdgeInsets.only(
                       bottom: 8.0, right: 8.0, left: 8.0),
               
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.black
                    ),
                    child: Image(image: NetworkImage(widget.blogViewItems.blogViewImagePath!), fit: BoxFit.contain,)),
                   SizedBox(
                    height: 10,
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
                        Container(
                        
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
              );
         
        
  }
}
