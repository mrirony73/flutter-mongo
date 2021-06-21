import 'package:get/get.dart';
import 'package:kiswire_userapp/domain/user/user.dart';
import 'package:kiswire_userapp/domain/user/user_repository.dart';

class UserController extends GetxController {
  UserRepository userRepository = UserRepository();

  Future<User> findById(int id) {
    return userRepository.findById(id);
  }

  Future<List<User>> findAll() {
    return userRepository.findAll();
  }
}
