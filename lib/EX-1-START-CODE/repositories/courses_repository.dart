import 'package:assignment_weekend/EX-1-START-CODE/models/course.dart';

abstract class CoursesRepository {
  List<Course> getCourses();
  void addScore(Course course, CourseScore score);
}
