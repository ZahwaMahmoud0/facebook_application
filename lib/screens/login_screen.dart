import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isHidden = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  String? _validateEmail(String? value) {
    final email = value?.trim() ?? '';
    final regex = RegExp(r'^[\w\.\-]+@[\w\-]+(\.[\w\-]+)+$');
    return regex.hasMatch(email) ? null : 'Invalid Email';
  }

  String? _validatePassword(String? value) {
    final pass = value ?? '';
    final regex = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^A-Za-z0-9]).{8,}$');
    return regex.hasMatch(pass)
        ? null
        : 'Password Should Contain Special Characters';
  }

  void _onLogin() {
  final valid = _formKey.currentState!.validate();
  debugPrint('LOGIN valid = $valid');
  if (!valid) return;

  Navigator.of(context).pushReplacement(
    MaterialPageRoute(builder: (_) => const HomeScreen()),
  );
  debugPrint('LOGIN navigated');
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: Column(
                      children: [
                        const SizedBox(height: 48),
                        Image.asset('assets/images/logo.png', height: 100),
                        const SizedBox(height: 48),
                        TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            hintText: 'Mobile Number or Email address',
                          ),
                          validator: _validateEmail,
                        ),
                        const SizedBox(height: 16),
                        TextFormField(
                          controller: _passwordController,
                          obscureText: _isHidden,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: AppColors.gray,
                              ),
                              onPressed: () =>
                                  setState(() => _isHidden = !_isHidden),
                            ),
                          ),
                          validator: _validatePassword,
                        ),
                        const SizedBox(height: 24),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: _onLogin,
                            child: const Text('Login'),
                          ),
                        ),
                        const SizedBox(height: 8),
                        
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Forgotten Password ?',
                            style: TextStyle(
                                color: AppColors.blue, fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(height: 1, thickness: 1),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.white,
                    foregroundColor: AppColors.blue,
                    elevation: 0,
                    side: const BorderSide(color: AppColors.blue),
                  ),
                  child: const Text('Create Account'),
                ),
              ),
              const SizedBox(height: 16),
              Image.asset('assets/images/meta.png', height: 24),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}