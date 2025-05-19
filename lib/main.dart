import 'package:flutter/material.dart';
import 'screens/auth/sign_in_screen.dart';
import 'screens/auth/sign_up_screen.dart';
import 'screens/auth/verification_screen.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Parking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF6366F1),
          background: Colors.white,
        ),
        useMaterial3: true,
        fontFamily: 'Inter',
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SignInScreen(),
        '/signup': (context) => const SignUpScreen(),
        '/verify': (context) => const VerificationScreen(),
        '/main': (context) => const MainScreen(),
        // Booking flow routes
        '/booking/location': (context) => const LocationSelectionScreen(),
        '/booking/spot-selection': (context) => const SpotSelectionScreen(),
        '/booking/duration-selection': (context) => const DurationSelectionScreen(),
        '/booking/payment': (context) => const PaymentScreen(),
      },
    );
  }
}
