import 'package:flutter/material.dart';
import 'package:flutter_dartified/utils/export_utils.dart';
import 'package:flutter_dartified/widgets/export_widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        margin: const EdgeInsets.only(
          top: 82.0,
          left: 16.0,
          right: 16.0,
        ),
        // width: double.infinity,
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
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              const Gap(16),
              Text(
                LandingTextConstants.subTitle,
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.normal,
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
              const Gap(28),
              CustomButton(
                onPressed: () {},
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
      ),
    );
  }
}
