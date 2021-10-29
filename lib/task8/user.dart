class User {
  final String email;

  User(this.email);
}

mixin MailSystem on User {
  String getMailSystem() {
    return email.substring(email.indexOf('@') + 1);
  }
}
