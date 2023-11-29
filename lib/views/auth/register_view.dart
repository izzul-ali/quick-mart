import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:quick_mart_ecommerce/components/custom_input.dart';
import 'package:quick_mart_ecommerce/components/logo.dart';
import 'package:quick_mart_ecommerce/styles/colors.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: double.infinity,
        leading: const QuickMartLogo(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 50),
              const Text(
                'Signup',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: COLORS.black,
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: const TextStyle(color: COLORS.grey150),
                  children: [
                    TextSpan(
                      text: 'Login',
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      style: const TextStyle(color: COLORS.cyan),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              CustomInput(
                textEditingController: fullNameController,
                type: TextInputType.name,
                title: 'Full Name',
                placeholder: 'full name',
                isRequired: true,
              ),
              const SizedBox(height: 20),
              CustomInput(
                textEditingController: emailController,
                type: TextInputType.emailAddress,
                title: 'Email',
                placeholder: 'example@gmail.com',
                isRequired: true,
              ),
              const SizedBox(height: 20),
              CustomInput(
                textEditingController: passwordController,
                type: TextInputType.visiblePassword,
                title: 'Password',
                placeholder: '*******',
                isRequired: true,
                isSecure: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
