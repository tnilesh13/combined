import 'dart:convert';
import 'package:dashboard/modelClass/DashboardModel.dart';
import 'package:flutter/services.dart' as root_bundle;


class ReadJsonFile {
  // static Future<Map> readJsonData({required String path}) async {
  // static Future<Map> readJsonData() async {
  static Future<DashboardModel> readJsonData() async {


    final jsonData = await root_bundle.rootBundle.loadString("assets/json/Dashboard.json");

    var list = json.decode(jsonData);// as Map;

    // print("listtt$list");

    
    // print("myList2");
    DashboardModel myList =  DashboardModel.fromJson(list);
    // print("myList${myList.dashboardJson!.length}");
    return myList;
  }
}   