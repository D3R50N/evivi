import 'package:evivi/app/ui/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../../controllers/welcome_controller.dart';

class WelcomePage extends GetView<WelcomeController> {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        scaffoldBackgroundColor: secondaryColor,
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0,
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 255, 246, 214),
                        Colors.white,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ).createShader(rect);
                  },
                  child: ClipPath(
                    clipper: CustomClipPath(),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: Get.height * .7,
                      decoration: BoxDecoration(
                        color: mainColor,
                        // gradient: RadialGradient(
                        //   colors: [
                        //     mainColor,
                        //     mainColor,
                        //     mainColor,
                        //   ],
                        //   stops: const [0.0, 0.5, 1.0],
                        // ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned.fill(
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                padding: const EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1000),
                                  color: mainColor,
                                ),
                                child: GestureDetector(
                                  onTap: () {
                                    Get.snackbar(
                                      "Développé par",
                                      "Max Andy MOUMOUNI",
                                      backgroundColor: Colors.black45,
                                      colorText: Colors.white,
                                      padding: const EdgeInsets.symmetric(
                                        vertical: 5,
                                        horizontal: 20,
                                      ),
                                      borderRadius: 7,
                                      margin: const EdgeInsets.symmetric(
                                        vertical: 10,
                                        horizontal: 10,
                                      ),
                                      duration: 1300.ms,
                                      shouldIconPulse: true,
                                      icon: ShaderMask(
                                        shaderCallback: (rect) {
                                          return LinearGradient(
                                            colors: [
                                              mainColor,
                                              Colors.white,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(rect);
                                        },
                                        child: const Icon(
                                          Icons.code,
                                          color: Colors.white,
                                        ),
                                      ),
                                      titleText: const Text(
                                        "Développeur",
                                        style: TextStyle(
                                          color: Colors.white70,
                                          fontFamily: "Kanit",
                                        ),
                                      ),
                                      messageText: const Text(
                                        "Max Andy MOUMOUNI",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Kanit",
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: Get.width * .6,
                                    height: Get.width * .6,
                                    decoration: BoxDecoration(
                                      color: Colors.white12,
                                      borderRadius: BorderRadius.circular(1000),
                                      image: const DecorationImage(
                                        image: NetworkImage(
                                          'https://c8.alamy.com/compfr/re1a6b/junk-food-concept-fond-d-aliments-malsains-restauration-rapide-et-le-sucre-burger-bonbons-chocolat-chips-beignets-soda-sur-un-fond-sombre-re1a6b.jpg',
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  )
                                      .animate(delay: 800.ms)
                                      .fade(duration: 400.ms)
                                      .rotate(
                                          begin: 1, end: 0, duration: 500.ms)
                                      .scaleXY(
                                          begin: 0, end: 1, duration: 400.ms),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        'Bienvenue sur la plateforme EVIVI',
                        style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                        ),
                      )
                          .animate()
                          .fade(duration: 400.ms)
                          .slideX(begin: .5, end: 0)
                          .then()
                          .scaleXY(begin: .9, end: 1),
                      const Gap(10),
                      const Text(
                        'Découvrez les meileurs mets africains et apprenez à les cuisiner',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: Colors.white60,
                        ),
                      ).animate(delay: 1200.ms).fade(duration: 400.ms),
                      const Gap(30),
                      ShaderMask(
                        shaderCallback: (rect) {
                          return LinearGradient(
                            colors: [
                              mainColor,
                              Colors.white,
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ).createShader(rect);
                        },
                        child: TextButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              mainColor,
                            ),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            splashFactory: InkRipple.splashFactory,
                            overlayColor: MaterialStateProperty.all(
                              Colors.white.withOpacity(.1),
                            ),
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Spacer(flex: 3),
                                Text(
                                  'Commencer',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                Spacer(flex: 2),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Colors.white38,
                                ),
                              ],
                            ),
                          ),
                        ).animate().slideY(
                              begin: 10,
                              end: 0,
                              duration: 400.ms,
                              delay: 1600.ms,
                            ),
                      ),
                      const Gap(60),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path> {
  var radius = 5.0;
  @override
  Path getClip(Size size) {
    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.lineTo(0, size.height);
    path0.quadraticBezierTo(size.width * 0.1327500, size.height * 0.45,
        size.width, size.height * .5);
    path0.lineTo(size.width, 0);

    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
