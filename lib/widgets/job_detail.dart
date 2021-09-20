import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/model/jobs.dart';
import 'package:flutter_job_finder_ui/widgets/icons_txt.dart';

class JobDetail extends StatelessWidget {
  final Job job;

  const JobDetail({Key? key, required this.job}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      height: 550,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey.withOpacity(0.3),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey.withOpacity(0.1)),
                          child: Image.asset(job.logoUrl),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          job.company,
                          style: TextStyle(fontSize: 16),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          job.isMark
                              ? Icons.bookmark
                              : Icons.bookmark_outline_rounded,
                          color: job.isMark
                              ? Theme.of(context).primaryColor
                              : Colors.black,
                        ),
                        Icon(Icons.more_horiz_outlined)
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  job.title,
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconsText(icon: Icons.location_on_outlined, text: job.location),
                    IconsText(icon: Icons.access_time_outlined, text: job.time),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Requirements',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                ...job.req
                    .map((e) => Container(
                  margin: EdgeInsets.symmetric(vertical: 5),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 5,
                        width: 5,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 300),
                        child: Text(
                          e,
                          style: TextStyle(
                            wordSpacing: 2.5,
                            height: 1.5,
                          ),
                        ),
                      ),

                    ],
                  ),
                ))
                    .toList(),
                Container(
                  margin: EdgeInsets.symmetric(vertical:25),
                  height: 40,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        elevation: 0,
                        primary: Theme.of(context).primaryColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                        )
                    ),
                    onPressed: (){},
                    child: Text('Apply Now'),
                  ),


                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
