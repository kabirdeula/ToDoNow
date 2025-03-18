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
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
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
      builder: (context, state) {
        return AuthScreen(
          title: 'Register',
          authSwitchText: "Already have an account?",
          authSwitchAction: "Login",
          location: AppRoutes.login.path,
          formKey: formKey,
          authenticationFields: [
            EmailField(controller: emailController),
            const SizedBox(height: 16.0),
            PasswordField(controller: passwordController),
            const SizedBox(height: 16.0),
            PasswordField(
              controller: confirmPasswordController,
              title: 'Confirm Password',
            ),
            const Spacer(),
            AuthButton(
              label: 'register',
              formKey: formKey,
              emailController: emailController,
              passwordController: passwordController,
              onPressed: () {
                if (formKey.currentState?.saveAndValidate() ?? false) {
                  if (passwordController.text ==
                      confirmPasswordController.text) {
                    EasyLoading.show(status: "Registering...");
                    context.read<AuthCubit>().register(
                        emailController.text, passwordController.text);
                  } else {
                    EasyLoading.showError("Passwords do not match");
                  }
                }
              },
            ),
            const SizedBox(height: 32.0),
          ],
        );
      },
    );
  }
}
