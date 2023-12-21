import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:dashboard/helper/util.dart';
import 'dart:convert';

class WidgetPopulorCategory extends StatelessWidget {
  const WidgetPopulorCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/Dashboard.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> jsonData =
                json.decode(snapshot.data.toString());
            CategoryData category = CategoryData.fromJson(jsonData["Category"]);

    Color containerBackgroundColor =
        Util.getColorFromHex(category.categoryContainerBackgroundColor!);

            return Container(
                    color: containerBackgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: containerBackgroundColor,
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Category",
                          style: TextStyle(
                              fontSize: 20, color: Colors.brown.shade900),
                        ),
                        category.categoryAllVisible!
                            ? Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.brown.shade900),
                              )
                            : Text(""),
                      ],
                    ),
                  ),
                  PopulorCategoryView(category),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text('Error loading JSON'); // Handle error
          } else {
            return CircularProgressIndicator(); // Show a loading indicator
          }
        });
  }
}

class PopulorCategoryView extends StatelessWidget {
  CategoryData category;
  PopulorCategoryView(this.category);

  @override
  Widget build(BuildContext context) {
    List<CategoryItems> listItems = [];
    category.categoryItems!.map((item) => {listItems.add(item)}).toList();

    Color imageBackgroundColor =
        Util.getColorFromHex(category.categoryImageBackgroundColor!);
    Color textColor = Util.getColorFromHex(category.categoryTextColor!);
    Color viewBackgroundColor =
        Util.getColorFromHex(category.categoryViewBackgroundColor!);

    return Container(
        padding: EdgeInsets.fromLTRB(12, 0, 0, 12),
        height: 170,
        child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: category.categoryItems!.length,
            itemBuilder: (BuildContext context, int index) {
              print("myitem${category.categoryItems![index]}");
              return InkWell(
                onTap: () {},
                child: Container(
                  width: 110,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                   decoration: BoxDecoration(
                      color: viewBackgroundColor,
                      borderRadius: BorderRadius.circular(category.categoryImageRadius!),
                      border: Border.all(width: 1, color: Colors.blue)),
                 
                  
                  margin: EdgeInsets.all(5),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(children: [
                      Container(
                        width: 70,
                        height: 70,
                        // margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        
                        decoration: BoxDecoration(
                          color: imageBackgroundColor,
                          image: DecorationImage(
                              image: NetworkImage(listItems[index].categoryImageLink!),
                              fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(category.categoryImageRadius!),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(6, 5, 6, 5),
                                child: Text("${listItems[index].categoryTitleText!}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: textColor, fontSize: category.categoryFontSize!)),
                      )
                    ]),
                  ),
                ),
              );
            }));
  }
}
