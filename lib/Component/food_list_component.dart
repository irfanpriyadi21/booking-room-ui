import 'package:flutter/material.dart';

import '../Page/Dashboard/detail.dart';
import 'food_list_item_component.dart';

class FoodListComponent extends StatelessWidget {
  const FoodListComponent();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.only(right: 20,left: 20),
        shrinkWrap: true,
        clipBehavior: Clip.none,
        itemCount: 10,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 25,
          mainAxisSpacing: 25,
          childAspectRatio: 3 / 3.75,
        ),
        itemBuilder:((BuildContext ctx, int index){
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => Detail(),
              ));
            },
            child: FoodListItemComponent(index: index),
          );
        })
    );
  }
}
