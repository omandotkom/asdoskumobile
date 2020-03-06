import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:logger/logger.dart';

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginScreen extends StatelessWidget {
  Duration get loginTime => Duration(milliseconds: 2250);
  var logger = Logger(
    printer: PrettyPrinter(),
  );
  Future<String> _authUser(LoginData data) {
    logger.d("fucked up");
    print('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  Future<String> _hell() {
    print("mother");
  }

  @override
  Widget build(BuildContext context) {
    logger.d("Membuat halaman..");
    return FlutterLogin(
      title: 'ASDOSKU',
      onLogin: _authUser,
      onSignup: _authUser,
      messages: LoginMessages(
        forgotPasswordButton: "Lupa password ?",
        loginButton: "Masuk",
        usernameHint: "Email",
        passwordHint: "Password",
        confirmPasswordHint: "Konfirmasi Password",
        signupButton: "Daftar",
      ),
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
            //builder: (context) => DashboardScreen(),
            ));
      },
      onRecoverPassword: _recoverPassword,
    );
  }
}
