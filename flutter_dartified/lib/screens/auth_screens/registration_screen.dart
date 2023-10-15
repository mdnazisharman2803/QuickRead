import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dartified/config/routes.dart';
import 'package:flutter_dartified/utils/export_utils.dart';
import 'package:flutter_dartified/utils/extensions/extensions.dart';
import 'package:flutter_dartified/widgets/export_widgets.dart';
import 'package:gap/gap.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  late TextEditingController _emailController;
  late TextEditingController _nameController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _nameController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
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
                "Register".toUpperCase(),
                style: const TextStyle()
                    .spaceGrotesk
                    .bold
                    .colored(Colors.white)
                    .sized(32.0),
              ),
              const Gap(26),
              AuthTextfieldWidget(
                controller: _nameController,
                title: 'Input Your Name',
                hintText: 'Username',
                isObscureText: false,
              ),
              const Gap(30),
              AuthTextfieldWidget(
                controller: _emailController,
                title: 'Input Email Address',
                hintText: 'email',
                isObscureText: true,
              ),
              const Gap(30),
              AuthTextfieldWidget(
                controller: _passwordController,
                title: 'Your Password',
                hintText: 'Password',
                isObscureText: true,
              ),
              const Gap(32),
              // TODO: change navigation
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
                buttonName: 'REGISTER',
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
                  child: RichText(
                    text: TextSpan(
                      text: "Already Registered ? Please ",
                      style: const TextStyle()
                          .spaceGrotesk
                          .normal
                          .colored(Colors.white)
                          .sized(20.0),
                      children: [
                        TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pushNamed(
                                  context,
                                  Routes.loginScreen,
                                ),
                          text: "Log In",
                          style: const TextStyle()
                              .spaceGrotesk
                              .bold
                              .colored(
                                const Color(0xFFCCEBFF),
                              )
                              .sized(20.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(20),
            ],
          ),
        ),
      ).addMarginizedContainer(),
    );
  }
}
