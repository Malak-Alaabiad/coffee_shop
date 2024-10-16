import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:maloooook_coffee_shop/app_style.dart';
import 'package:maloooook_coffee_shop/screens/login_screen.dart';

class CoffeeHomeScreen extends StatelessWidget {
  static const String routeName = 'CoffeeHomeScreen';

  const CoffeeHomeScreen({super.key});

  Stream<String> _getTime() {
    return Stream.periodic(const Duration(seconds: 1), (_) {
      final now = DateTime.now();
      return DateFormat('HH:mm').format(now);
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/image 3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Coffee so good, your taste buds will love it.",
                    style: GoogleFonts.sora(
                      color: Colors.white,
                      fontSize: 34,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "The best grain, the finest roast, the powerful flavor.",
                    style: GoogleFonts.sora(
                      color: const Color(0xFFA9A9A9),
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 20),
                    ),
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.sora(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
