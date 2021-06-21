import 'package:get/get_connect/connect.dart';
import 'package:get/get_connect/http/src/response/response.dart';

String host = "http://192.168.33.44:8080";

class UserProvider extends GetConnect {
  // Get request
  Future<Response> findById(int id) => get('$host/user/$id');

  Future<Response> findAll() => get('$host/fda');

// 스프링에 요청할 주소 적고 함수 생성!!
}
