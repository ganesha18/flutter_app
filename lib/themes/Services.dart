
import 'package:http/http.dart' as http;
import 'package:flutter_app/Users.dart';
class Services {
  //
  static const String url = 'http://jsonplaceholder.typicode.com/users';

  static Future<List<User>> getUsers() async {
    try {
      final response = await http.get(url);
      if (response.statusCode ==0) {
        final List<User> users = userFromJson(response.body);
        return users;
      } else {
        return List<User>();
      }
    } catch (e) {
      return List<User>();
    }
  }
}
