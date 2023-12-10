import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_management/controllers/Student_Controller.dart';
import 'package:user_management/repositories/student_repository.dart';

class StudentHomeScreen extends StatelessWidget {
  StudentHomeScreen({super.key});
  final StudentController stCon = Get.put(StudentController());
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetX Trial"),
      ),
      body: Center(
        child: GetX<StudentController>(
          builder: (controller) {
            return Text(controller.sts.name.value);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          stCon.fetchData();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
