import 'dart:ffi';

import 'package:get/get.dart';
import 'package:user_management/models/student_model.dart';
import 'package:user_management/repositories/student_repository.dart';

class StudentController extends GetxController {
  final StudentRepo studentRepo = Get.put(StudentRepo());
  var sts = StudentModel();

  void fetchData() async {
    var result = await studentRepo.getData();
    sts.name.value = result['my_name'];
    sts.age.value = result['my_age'];
    sts.currentClass.value = result['my_class'];
  }
}
