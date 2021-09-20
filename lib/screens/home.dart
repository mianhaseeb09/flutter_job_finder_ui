import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/widgets/home_app_bar.dart';
import 'package:flutter_job_finder_ui/widgets/jobs_list.dart';
import 'package:flutter_job_finder_ui/widgets/search_card.dart';
import 'package:flutter_job_finder_ui/widgets/tags_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
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
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SearchCard(),
              TagsList(),
              JobList(),
            ],
          ),
        )
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0,
        onPressed: () {},
        child: Icon(Icons.add,color: Colors.white,),
      ),
      bottomNavigationBar: Theme(
        data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(
                Icons.cases_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: ' ',
              icon: Text(''),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(
                Icons.chat_outlined,
                size: 20,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(
                Icons.person,
                size: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
