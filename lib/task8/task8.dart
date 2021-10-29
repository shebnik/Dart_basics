import 'package:skillbox/task8/admin_user.dart';
import 'package:skillbox/task8/general_user.dart';

class Task8 {
  Task8() {
    print("Task8:");

    final user1 = GeneralUser("user1@gmail.com");
    final user2 = GeneralUser("user2@mail.ru");
    final user3 = GeneralUser("user3@outlook.com");
    final user4 = GeneralUser("user4@yahoo.com");

    final admin1 = AdminUser("admin1@gmail.com");
    final admin2 = AdminUser("admin2@mail.ru");
    
    final userManager = UserManager();

    userManager.addUser(user1);
    userManager.addUser(user2);
    userManager.addUser(user3);
    userManager.addUser(user4);
    userManager.addUser(admin1);
    userManager.addUser(admin2);

    userManager.removeUser(user3);

    userManager.printMails();
  }
}
