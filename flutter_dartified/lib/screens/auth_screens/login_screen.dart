import 'package:flutter/material.dart';
import 'package:flutter_dartified/config/routes.dart';
import 'package:flutter_dartified/utils/export_utils.dart';
import 'package:flutter_dartified/utils/extensions/extensions.dart';
import 'package:flutter_dartified/widgets/export_widgets.dart';
import 'package:gap/gap.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emailController;
  late TextEditingController _passController;
  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  ImageConstants.logoImage,
                ),
              ),
              const Gap(84),
              Center(
                child: Image.asset(
                  ImageConstants.subLogoImage,
                ),
              ),
              const Gap(52),
              Text(
                "LOG IN",
                style: const TextStyle()
                    .spaceGrotesk
                    .bold
                    .colored(Colors.white)
                    .sized(32.0),
              ),
              const Gap(26),
              AuthTextfieldWidget(
                controller: _emailController,
                title: 'Your Email Address',
                hintText: 'Email',
                isObscureText: false,
              ),
              const Gap(30),
              AuthTextfieldWidget(
                controller: _passController,
                title: 'Your Password',
                hintText: 'Password',
                isObscureText: true,
              ),
              const Gap(8),
              // TODO: add screen later
              GestureDetector(
                onTap: () {},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot Password",
                    style: const TextStyle()
                        .spaceGrotesk
                        .normal
                        .colored(Colors.white)
                        .sized(16.0),
                  ),
                ),
              ),
              const Gap(28),
              CustomButton(
                onPressed: () => Navigator.pushNamed(
                  context,
                  Routes.loginScreen,
                ),
                size: const Size(
                  double.infinity,
                  54.0,
                ),
                borderRadius: 4.0,
                buttonName: 'LOG IN',
                backgroundColor: const Color(0xFFCCEBFF),
                borderColor: Colors.transparent,
                textColor: Colors.black,
              ),
              const Gap(50),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                  context,
                  Routes.registrationScreen,
                ),
                child: Center(
                  child: Text(
                    "New User? Please Register",
                    style: const TextStyle()
                        .spaceGrotesk
                        .normal
                        .colored(Colors.white)
                        .sized(20.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ).addMarginizedContainer(),
    );
  }
}
