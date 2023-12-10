import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:user_management/models/student_model.dart';

class StudentRepo extends GetxService {
  Future<Map> getData() async {
    var data = {'my_name': 'John Agyekum', 'my_age': 17, 'my_class': 'Basic 9'};
    return data;
  }
}
