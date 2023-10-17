import 'package:flutter/material.dart';
import 'package:flutter_dartified/controller/upload_file.dart';
import 'package:flutter_dartified/utils/constants/image_constants.dart';
import 'package:flutter_dartified/utils/extensions/extensions.dart';
import 'package:flutter_dartified/widgets/export_widgets.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isUploading = false;
  double progressValue = 0.0;
  @override
  void initState() {
    super.initState();
    UploadDocumentService.uploadProgressController.stream.listen((progress) {
      setState(() {
        progressValue = progress;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFCCEBFF),
      body: Container(
        width: double.infinity,
        child: _isUploading == true
            ? Center(
                child: Container(
                  width: 310,
                  height: 222,
                  padding: const EdgeInsets.all(32.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFF1D2327),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        ImageConstants.subLogoImage,
                        width: 144,
                      ),
                      const Gap(16),
                      Text(
                        "A.I Processing PDF File",
                        style: const TextStyle()
                            .spaceGrotesk
                            .bold
                            .colored(Colors.white)
                            .sized(24.0),
                      ),
                      const Gap(16),
                      LinearProgressIndicator(
                        value: progressValue,
                        color: const Color(0xFF20577C),
                      ),
                    ],
                  ),
                ),
              )
            : Column(
                children: [
                  Image.asset(
                    ImageConstants.singleLogo,
                    color: Colors.black,
                  ),
                  const Gap(46),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Welcome James,",
                      style: const TextStyle()
                          .spaceGrotesk
                          .normal
                          .colored(Colors.black)
                          .sized(20.0),
                    ),
                  ),
                  const Gap(8),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Let's Get Started.",
                      style: const TextStyle()
                          .spaceGrotesk
                          .bold
                          .colored(Colors.black)
                          .sized(24.0),
                    ),
                  ),
                  const Gap(74),
                  Container(
                    width: 228,
                    height: 186,
                    decoration: BoxDecoration(
                      color: const Color(0xFFAFDFFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FractionallySizedBox(
                      widthFactor: 0.7,
                      heightFactor: 0.7,
                      child: Lottie.asset(
                        "assets/icons/upload_icon.json",
                      ),
                    ),
                  ),
                  const Gap(40),
                  Text(
                    "Upload Your PDF File",
                    style: const TextStyle()
                        .spaceGrotesk
                        .bold
                        .colored(const Color(0xFF1D2327))
                        .sized(32.0),
                  ),
                  const Gap(8),
                  Text(
                    "Upload your PDF file for our A.I to \nread and help you study better",
                    style: const TextStyle()
                        .spaceGrotesk
                        .normal
                        .colored(const Color(0xFF1D2327))
                        .sized(18.0),
                  ),
                  const Gap(46),
                  CustomButton(
                    onPressed: () async {
                      UploadDocumentService.uploadFiles(context, _isUploading,
                          (onUploading) {
                        setState(() {
                          _isUploading = onUploading;
                        });
                      });
                    },
                    size: const Size(
                      266,
                      54.0,
                    ),
                    borderRadius: 10.0,
                    buttonName: 'PROCEED',
                    backgroundColor: const Color(0xFF1D2327),
                    borderColor: Colors.transparent,
                    textColor: Colors.white,
                  ),
                ],
              ),
      ).addMarginizedContainer(),
    );
  }
}
