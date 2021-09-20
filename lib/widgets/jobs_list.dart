import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/model/jobs.dart';
import 'package:flutter_job_finder_ui/widgets/job_detail.dart';
import 'package:flutter_job_finder_ui/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
                isScrollControlled: true,
                context: context,
                builder: (context)=>JobDetail(job:jobList[index])
            );
          },
            child: JobItem(
          job: jobList[index],
        )),
        separatorBuilder: (_, index) => SizedBox(
          width: 15,
        ),
        itemCount: jobList.length,
      ),
    );
  }
}
