import 'package:skillbox/task8/admin_user.dart';
import 'package:skillbox/task8/user.dart';

class GeneralUser extends User {
  GeneralUser(String email) : super(email);
}

class UserManager<T extends User> {
  final List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  void printMails() {
    users.forEach((T user) {
      if (user is AdminUser) {
        print(user.getMailSystem());
      } else {
        print(user.email);
      }
    });
  }
}
