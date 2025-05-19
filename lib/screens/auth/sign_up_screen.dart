import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // Logo
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  color: const Color(0xFF6366F1),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Icon(
                  Icons.local_parking,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(height: 40),
              
              // Sign up text
              const Text(
                'Sign up',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 32),

              // Sign up options
              _buildSignUpOption(
                context: context,
                icon: Icons.email_outlined,
                text: 'Continue with email',
                onTap: () {
                  Navigator.pushNamed(context, '/verify');
                },
              ),
              const SizedBox(height: 16),
              _buildSignUpOption(
                context: context,
                icon: Icons.g_mobiledata,
                text: 'Sign up with Google',
                onTap: () {
                  // Handle Google sign up and navigate to main screen
                  Navigator.pushReplacementNamed(context, '/main');
                },
              ),
              const SizedBox(height: 16),
              _buildSignUpOption(
                context: context,
                icon: Icons.facebook,
                text: 'Sign up with Facebook',
                onTap: () {
                  // Handle Facebook sign up and navigate to main screen
                  Navigator.pushReplacementNamed(context, '/main');
                },
              ),
              const SizedBox(height: 16),
              _buildSignUpOption(
                context: context,
                icon: Icons.apple,
                text: 'Sign up with Apple',
                onTap: () {
                  // Handle Apple sign up and navigate to main screen
                  Navigator.pushReplacementNamed(context, '/main');
                },
              ),

              const Spacer(),
              // Sign in link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account? ',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontSize: 16,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      'Log in',
                      style: TextStyle(
                        color: Color(0xFF6366F1),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpOption({
    required BuildContext context,
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey[300]!),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 24),
            const SizedBox(width: 12),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
