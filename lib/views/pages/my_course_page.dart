import 'package:flutter/material.dart';
import 'package:mycourseville/widgets/course_card.dart';


class MyCoursePage extends StatelessWidget {
  const MyCoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            childAspectRatio: 0.85,
          ),
          itemCount: 6,
          itemBuilder: (context, index) {
            return CourseCard(
              courseName: 'Course ${index + 1}',
              courseCode: 'CS${2301000 + index}',
              instructor: 'Instructor ${index + 1}',
            );
          },
        ),
      ),
    );
  }
}

