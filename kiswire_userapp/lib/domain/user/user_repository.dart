import 'package:get/get_connect/http/src/response/response.dart';
import 'package:kiswire_userapp/domain/user/user.dart';
import 'package:kiswire_userapp/domain/user/user_provider.dart';

class UserRepository {
  UserProvider userProvider = UserProvider();

  Future<User> findById(int id) async {
    Response response = await userProvider.findById(id);
    User user = User.fromJson(response.body);
    return user;
  }

  Future<List<User>> findAll() async {
    Response response = await userProvider.findAll();
    List<dynamic> responseUsers = response.body;
    List<User> users =
        responseUsers.map((user) => User.fromJson(user)).toList();
    return users;
  }
}
