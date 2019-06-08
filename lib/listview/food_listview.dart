import 'package:flutter/material.dart';
import 'package:ungfoodshop/models/food_model.dart';

class FoodListView extends StatelessWidget {
  List<FoodModel> foodModels;
  FoodListView(this.foodModels);

  @override
  Widget build(BuildContext context) {
    Widget showImageFood(String urlImage) {
      return Container(
        width: 120.0,
        height: 100.0,
        margin: EdgeInsets.all(8.0),
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      );
    }

    Widget showName(String name) {
      return Container(
        padding: EdgeInsets.only(right: 30.0),
        alignment: Alignment(1, -1),
        child: Text(
          name,
          style: TextStyle(
              fontSize: 24.0,
              color: Colors.pink[700],
              fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget showPrice(String price) {
      return Container(
        padding: EdgeInsets.only(right: 30.0),
        alignment: Alignment(1, -1),
        child: Text(
          '$price บาท',
          style: TextStyle(fontSize: 50.0, color: Colors.pinkAccent[400]),
        ),
      );
    }

    return ListView.builder(
      itemCount: foodModels.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: index % 2 == 0
              ? BoxDecoration(color: Colors.pink[50])
              : BoxDecoration(color: Colors.pink[100]),
          child: Row(
            children: <Widget>[
              showImageFood(foodModels[index].imagePath.toString()),
              Expanded(
                child: Column(
                  children: <Widget>[
                    showName(foodModels[index].nameFood),
                    showPrice(foodModels[index].price)
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
