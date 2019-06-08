import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ungfoodshop/listview/food_listview.dart';
import 'package:ungfoodshop/models/food_model.dart';

class ShowFoodListView extends StatefulWidget {
  final String nameString;

  ShowFoodListView({Key key, this.nameString}) : super(key: key);

  @override
  _ShowFoodListViewState createState() => _ShowFoodListViewState();
}

class _ShowFoodListViewState extends State<ShowFoodListView> {
  String nameUser;
  String urlString = 'https://www.androidthai.in.th/tae/getAllFoodMaster.php';
  List<FoodModel> foodModels = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    nameUser = widget.nameString;

    readAllJson();
  }

  void readAllJson() async {
    // print('readAllJson Work');

    var response = await http.get(urlString);
    var result = json.decode(response.body);
    // print('result ==> $result');

    for (var objJson in result) {
      // print(objJson);
      var foodModel = FoodModel.fromJSON(objJson);
      setState(() {
        foodModels.add(foodModel);
      });
      // print('NameFood ==> ${foodModel.nameFood}');
    }
    print('lengh ==> ${foodModels.length}');
  }

  Widget showTitleBar() {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment(-1, -1),
          child: Text('Show Food List'),
        ),
        Container(
          alignment: Alignment(-1, -1),
          child: Text(
            'Login by => $nameUser',
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[600],
        title: showTitleBar(),
      ),
      body: FoodListView(foodModels),
    );
  }
}
