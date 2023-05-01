import 'package:donut/core/constants/theme.dart';
import 'package:donut/model/category/category.dart';
import 'package:donut/model/my_category/my_category.dart';
import 'package:donut/views/components/donut_button.dart';
import 'package:flutter/material.dart';

class UserCategoryPage extends StatelessWidget {
  const UserCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white10,
          foregroundColor: donutColorBasic,
          title: Text("관심 카테고리"),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  size: 30,
                )),
          ]),
      body: GridView.builder(
        itemCount: myCategorys.length + 1,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100, mainAxisExtent: 120),
        itemBuilder: (context, index) {
          return index < myCategorys.length
              ? InkWell(
                  onLongPress: () {

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: donutColorBasic),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                                "assets/categories/${category_eng[myCategorys[index].categoryId - 1]}.jpg"),
                            Text(categorys[myCategorys[index].categoryId - 1]
                                .name),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              :  Padding(
                padding: const EdgeInsets.all(8.0),
                child: DonutButton(text: "╋", funPageRoute: () {}),
              );
        },
      ),
    );
  }
}
