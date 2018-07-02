import 'dart:async';

class Validators {
  final validateEmail =
      StreamTransformer<String, String>.fromHandlers(handleData: (email, sink) {
      print('email: $email');
    if (email.contains('@')) {
      sink.add(email);
    } else {
      sink.addError('Enter a valid email');
    }
  });

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
      handleData: (password, sink) {
    print('password: $password');
    if (password.length > 3) {
      sink.add(password);
    } else {
      sink.addError('Password must be more than 4 characters');
    }
  });
}
