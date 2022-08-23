import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:provider/provider.dart';
import 'package:renting_car/pages/user_car_showing_page.dart';

class UserHomepage extends StatefulWidget {
  static const String routeName = '/user';

  const UserHomepage({Key? key}) : super(key: key);

  @override
  State<UserHomepage> createState() => _UserHomepageState();
}

class _UserHomepageState extends State<UserHomepage> {
  final searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff295764),
        title: const Text("User Page",style: TextStyle(color: Colors.white),),
      ),
      body: FlutterLogin(
        theme: LoginTheme(primaryColor: Color(0xff295764)),
        logo: const AssetImage(
          'images/bugatti.png',
        ),
        onLogin: (LoginData) {
          Navigator.pushReplacementNamed(context, UserCarShowing.routeName);
        },
        onRecoverPassword: (String) {},
        onSignup: (SignupData) {
          Navigator.pushReplacementNamed(context, UserCarShowing.routeName);
        },
      ),
    );
  }
}
