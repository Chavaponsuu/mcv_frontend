import 'package:flutter/material.dart';
import 'package:mycourseville/views/widgetTree.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.school,
                  size: 80,
                  color: Color(0xFF398ADA),
                ),
                const SizedBox(height: 16),
                const Text(
                  'MyCourseVille',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF398ADA),
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 48),
                LoginButton(
                  icon: Icons.facebook,
                  text: 'Log in with Facebook',
                  backgroundColor: const Color(0xFF1877F2),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const WidgetTree()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                LoginButton(
                  icon: Icons.account_balance,
                  text: 'Log in with CU Account',
                  backgroundColor: const Color(0xFFFF6699),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const WidgetTree()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                LoginButton(
                  icon: Icons.school_outlined,
                  text: 'Log in with MyCourseVille',
                  backgroundColor: const Color(0xFF398ADA),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const WidgetTree()),
                    );
                  },
                ),
                const SizedBox(height: 16),
                LoginButton(
                  icon: Icons.g_mobiledata,
                  text: 'Sign in with Google',
                  backgroundColor: const Color(0xFFDB4437),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const WidgetTree()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginButton extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const LoginButton({
    super.key,
    required this.icon,
    required this.text,
    required this.backgroundColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: Colors.white,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
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
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
