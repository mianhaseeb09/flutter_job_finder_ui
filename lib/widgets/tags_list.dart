import 'package:flutter/material.dart';

class TagsList extends StatefulWidget {
  const TagsList({Key? key}) : super(key: key);

  @override
  _TagsListState createState() => _TagsListState();
}

class _TagsListState extends State<TagsList> {
  final tagList = <String>['All', '⚡ Popular', '⭐ Featured'];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                      color: selected == index
                          ? Theme.of(context).primaryColor.withOpacity(0.2)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      border: Border.all(
                          color: selected == index
                              ? Theme.of(context).primaryColor
                              : Theme.of(context)
                                  .primaryColor
                                  .withOpacity(0.2))),
                  child: Text(tagList[index]),
                ),
              ),
          separatorBuilder: (_, index) => SizedBox(
                width: 15,
              ),
          itemCount: tagList.length),
    );
  }
}
