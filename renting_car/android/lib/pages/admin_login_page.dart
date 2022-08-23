import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:renting_car/pages/admin_home_page.dart';

class AdminLoginPage extends StatefulWidget {
  static const routeName = '/adminLogin';
  const AdminLoginPage({Key? key}) : super(key: key);

  @override
  State<AdminLoginPage> createState() => _AdminLoginPageState();
}

class _AdminLoginPageState extends State<AdminLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff295764),
        title: Text("Admin Page",style: TextStyle(color: Colors.white),),
      ),
      body: FlutterLogin(
        theme: LoginTheme(primaryColor: Color(0xff295764)),
        logo: AssetImage(
          'images/bugatti.png',
        ),
        onLogin: (LoginData) {
          Navigator.pushReplacementNamed(context, AdminHomePage.routeName);
        },
        onRecoverPassword: (String) {},
        onSignup: (SignupData) {
          Navigator.pushReplacementNamed(context, AdminHomePage.routeName);
        },
      ),
    );
  }
}
