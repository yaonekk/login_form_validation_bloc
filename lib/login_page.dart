import 'package:flutter/material.dart';
import 'package:login_form_validation/widgets/gradient_button.dart';
import 'package:login_form_validation/widgets/login_field.dart';
import 'package:login_form_validation/widgets/social_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/images/signin_balls.png'),
              const Text(
                'Sign in.',
                style: TextStyle(fontWeight: .bold, fontSize: 50),
              ),
              const SizedBox(height: 50),
              const SocialButton(
                iconPath: 'assets/svgs/g_logo.svg',
                label: 'Continue with Google',
              ),
              const SizedBox(height: 20),
              const SocialButton(
                iconPath: 'assets/svgs/f_logo.svg',
                label: 'Continue with Facebook',
                horizontalPadding: 90,
              ),
              const SizedBox(height: 15),
              const Text('or', style: TextStyle(fontSize: 17)),
              const SizedBox(height: 15),
              LoginField(hintText: 'Email', controller: _emailController),
              const SizedBox(height: 15),
              LoginField(hintText: 'Password', controller: _passwordController),
              const SizedBox(height: 20),
              const GradientButton(),
            ],
          ),
        ),
      ),
    );
  }
}
