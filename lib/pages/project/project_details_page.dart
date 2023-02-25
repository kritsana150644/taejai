import 'package:flutter/material.dart';
import 'package:taejai/models/project.dart';
import 'package:taejai/pages/project/project_list_page.dart';

class ProjectDetailsPage extends StatelessWidget {
  final Project project;

  const ProjectDetailsPage({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        project.title,
        overflow: TextOverflow.ellipsis,
      )),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 500,
                height: 530,
                color: Colors.orange[50],
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          project.title,
                          style: TextStyle(fontSize: 20.0),
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Image.asset(project.imageUrl,
                            width: 500.0, fit: BoxFit.cover),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(project.description),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(project.projectDuration),
                        const SizedBox(
                          height: 16.0,
                        ),
                        Text(project.projectArea),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 500,
                child: Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('ยอดบริจาคขณะนี้'),
                        Text(
                          '${project.receiveAmount} บาท',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.orange[600],
                              fontWeight: FontWeight.bold),
                        ), 
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
