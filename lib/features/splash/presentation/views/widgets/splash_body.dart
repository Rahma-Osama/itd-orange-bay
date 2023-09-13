import 'package:flutter/material.dart';
import 'package:orange_bay_new/core/constants/assets_data.dart';
import 'package:orange_bay_new/features/onboarding/onboarding.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> {
  bool _showContent = false;

  @override
  void initState() {
    super.initState();
    navigateToNextScreen();
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        _showContent = true;
      });
    });
  }

  void navigateToNextScreen() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const OnBoarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child:
              Image.asset('assets/images/IMG_6497-_11_.png', fit: BoxFit.cover),
        ),
        Column(
          children: [
            const Expanded(
              flex: 1,
              child: SizedBox(),
            ),
            Center(
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                width: _showContent ? 180 : 0,
                // Set desired initial and final width
                height: _showContent ? 180 : 0,
                child: Image.asset(AssetsData.logo),
              ),
            ),
            Visibility(
              visible: _showContent,
              child: Column(
                children: [
                  AnimatedOpacity(
                    opacity: _showContent ? 1.0 : 0.0, // Animate opacity
                    duration: const Duration(milliseconds: 420),
                    child: Text(
                      AppLocalizations.of(context)!.splashWelcome,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  AnimatedOpacity(
                    opacity: _showContent ? 1.0 : 0.0, // Animate opacity
                    duration: const Duration(milliseconds: 420),
                    child: Text(
                      (AppLocalizations.of(context)!.splashDesc),
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        shadows: [
                          Shadow(color: Colors.grey, offset: Offset(.1, .1))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Expanded(
              flex: 8,
              child: SizedBox(),
            ),
          ],
        ),
      ],
    );
  }
}
