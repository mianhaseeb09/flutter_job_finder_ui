import 'package:flutter/material.dart';
import 'package:flutter_job_finder_ui/model/jobs.dart';
import 'package:flutter_job_finder_ui/widgets/icons_txt.dart';

class JobItem extends StatelessWidget {
  final Job job;
  final bool showTime;

  const JobItem({Key? key, required this.job, this.showTime = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(8),
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
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              Icon(
                job.isMark ? Icons.bookmark : Icons.bookmark_outlined,
                color:
                    job.isMark ? Theme.of(context).primaryColor : Colors.black45,
              )
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            job.title,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconsText(icon: Icons.location_on_outlined, text: job.location),
              if (showTime)
                IconsText(icon: Icons.access_time_outlined, text: job.time),
            ],
          )
        ],
      ),
    );
  }
}
