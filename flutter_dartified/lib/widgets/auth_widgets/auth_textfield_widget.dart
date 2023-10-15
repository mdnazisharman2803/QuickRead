import 'package:flutter/material.dart';
import 'package:flutter_dartified/utils/extensions/extensions.dart';
import 'package:gap/gap.dart';

class AuthTextfieldWidget extends StatelessWidget {
  final String title;
  final String hintText;
  TextEditingController controller;
  final bool isObscureText;
  AuthTextfieldWidget({
    super.key,
    required this.title,
    required this.hintText,
    required this.controller,
    required this.isObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle()
              .spaceGrotesk
              .normal
              .colored(Colors.white)
              .sized(18.0),
        ),
        const Gap(18),
        TextField(
          obscureText: isObscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle()
                .spaceGrotesk
                .normal
                .colored(Colors.black)
                .sized(16.0),
            filled: true,
            fillColor: const Color(0xFF8A9092),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                width: 2.0,
                color: Color(0xFFFAFDFF),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
