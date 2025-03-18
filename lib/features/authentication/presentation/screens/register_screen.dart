import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

import '../../../../routes/routes.dart';
import '../../authentication.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          authenticated: (user) {
            EasyLoading.dismiss();
            context.go(AppRoutes.dashboard.path);
          },
          error: (error) {
            EasyLoading.dismiss();
            return EasyLoading.showError(error);
          },
          orElse: () {},
        );
      },
      child: AuthScreen(
        title: 'Register',
        authSwitchText: "Already have an account?",
        authSwitchAction: "Login",
        location: AppRoutes.login.path,
        formKey: formKey,
        authenticationFields: [
          EmailField(controller: _emailController),
          const SizedBox(height: 16.0),
          PasswordField(controller: _passwordController),
          const SizedBox(height: 16.0),
          PasswordField(
            controller: _confirmPasswordController,
            title: 'Confirm Password',
          ),
          const Spacer(),
          AuthButton(
            label: 'register',
            formKey: formKey,
            emailController: _emailController,
            passwordController: _passwordController,
            onPressed: () {
              if (formKey.currentState?.saveAndValidate() ?? false) {
                if (_passwordController.text ==
                    _confirmPasswordController.text) {
                  EasyLoading.show(status: "Registering...");
                  context.read<AuthCubit>().register(
                      _emailController.text, _passwordController.text);
                } else {
                  EasyLoading.showError("Passwords do not match");
                }
              }
            },
          ),
          const SizedBox(height: 32.0),
        ],
      ),
    );
  }
}
