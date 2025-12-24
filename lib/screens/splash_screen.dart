import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mini_shopping_cart/screens/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              _animationImg(size),
              _titleText(),
              SizedBox(height: 20),
              Text(
                'Fresh items everyday',
                style: GoogleFonts.poppins(color: Colors.grey.shade700),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                  child: _getStartButton(size),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _animationImg(var size) {
  return Lottie.asset(
    'assets/lotties/veg.json',
    width: size.width * 0.75,
    height: size.height * 0.5,
  );
}

Widget _titleText() {
  return Text(
    textAlign: TextAlign.center,
    'We Deliver\nFoods at your\nDoorstep',
    style: GoogleFonts.poppins(fontSize: 35, fontWeight: FontWeight.w500),
  );
}

Widget _getStartButton(var size) {
  return Container(
    width: size.width * 0.75,
    height: size.height * 0.055,
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 16, 112, 190),
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: Text(
        'Get Started',
        style: GoogleFonts.poppins(color: Colors.white, fontSize: 15),
      ),
    ),
  );
}
