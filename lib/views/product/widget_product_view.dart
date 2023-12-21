import 'dart:convert';

import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:dashboard/helper/util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WidgetPopulorProduct extends StatelessWidget {
  const WidgetPopulorProduct({super.key});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: rootBundle.loadString("assets/json/Dashboard.json"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> jsonData =
                json.decode(snapshot.data.toString());
            ProductData product = ProductData.fromJson(jsonData["Product"]);

            Color containerBackgroundColor =
                Util.getColorFromHex(product.productContainerBackgroundColor!);

            return Container(
              color: containerBackgroundColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Products",
                          style: TextStyle(
                              fontSize: 20, color: Colors.brown.shade900),
                        ),
                        product.productAllVisible!
                            ? Text(
                                "View All",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.brown.shade900),
                              )
                            : Text(""),
                      ],
                    ),
                  ),
                  PopulorProductView(product),
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

class PopulorProductView extends StatelessWidget {
  ProductData product;
  PopulorProductView(this.product);

  @override
  Widget build(BuildContext context) {
    
    List<ProductItems> listItems = [];
    product.productItems!.map((item) => {listItems.add(item)}).toList();

    Color imageBackgroundColor =
        Util.getColorFromHex(product.productImageBackgroundColor!);
    Color textColor = Util.getColorFromHex(product.productTextColor!);
    Color viewBackgroundColor =
        Util.getColorFromHex(product.productViewBackgroundColor!);

    return Container(
        padding: EdgeInsets.fromLTRB(12, 0, 0, 12),
        height: 215,
        child: ListView.builder(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: product.productItems!.length,
            itemBuilder: (BuildContext context, int index) {
              return InkWell(
                onTap: () {},
                child: Container(
                  width: 130,
                  decoration: BoxDecoration(
                      color: viewBackgroundColor,
                      borderRadius: BorderRadius.circular(product.productImageRadius!),
                      border: Border.all(width: 1, color: Colors.blue)),
                  margin: EdgeInsets.all(5),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: ClipRRect(
                        borderRadius:
                            BorderRadius.circular(product.productImageRadius!),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                        
                          children: [
                          Container(
                            margin: EdgeInsets.all(2),
                            height: 110,
                            width: 120,
                            decoration: BoxDecoration(
                                color: imageBackgroundColor,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        listItems[index].productImageLink!),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                            alignment: Alignment.centerLeft,
                            child: Text("${listItems[index].productTitleText!}",
                                maxLines: 2,
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: product.productFontSize!)),
                          ),
                          Container(
                            padding: EdgeInsets.fromLTRB(0, 0, 5, 0),
                            alignment: Alignment.centerLeft,
                            child: Text("${listItems[index].productPrice!}",
                                style: TextStyle(
                                    color: textColor,
                                    fontSize: product.productFontSize!)),
                          ),
                        ])),
                  ),
                ),
              );
            }));
  }
}
