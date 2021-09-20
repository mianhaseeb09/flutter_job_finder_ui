import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/widgets/search_app_bar.dart';
import 'package:flutter_job_finder_ui/widgets/search_input.dart';
import 'package:flutter_job_finder_ui/widgets/search_list.dart';
import 'package:flutter_job_finder_ui/widgets/search_option.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchAppBar(),
              SearchInput(),
              SearchOption(),
              Expanded(child: SearchList())
            ],
          )
        ],
      ),
    );
  }
}
