import 'package:flutter/material.dart';
import 'package:flutter_dartified/config/routes.dart';
import 'package:flutter_dartified/utils/export_utils.dart';
import 'package:flutter_dartified/utils/extensions/extensions.dart';
import 'package:flutter_dartified/widgets/export_widgets.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  ImageConstants.logoImage,
                ),
              ),
              const Gap(120),
              Lottie.asset(
                IconConstants.pdfIcon,
                width: 186,
              ),
              const Gap(46),
              Text(
                LandingTextConstants.title,
                style: const TextStyle()
                    .spaceGrotesk
                    .bold
                    .colored(Colors.white)
                    .sized(40.0),
              ),
              const Gap(16),
              Text(
                LandingTextConstants.subTitle,
                style: const TextStyle()
                    .spaceGrotesk
                    .normal
                    .colored(Colors.white)
                    .sized(22.0),
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
              const Gap(28),
              CustomButton(
                onPressed: () {},
                size: const Size(
                  double.infinity,
                  54.0,
                ),
                borderRadius: 4.0,
                buttonName: 'GET STARTED',
                backgroundColor: Colors.transparent,
                borderColor: const Color(0xFFCCEBFF),
                textColor: const Color(0xFFCCEBFF),
              ),
            ],
          ),
        ),
      ).addMarginizedContainer(),
    );
  }
}
