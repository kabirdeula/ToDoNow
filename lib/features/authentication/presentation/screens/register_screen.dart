import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:to_do_now/features/authentication/authentication.dart';
import 'package:to_do_now/routes/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormBuilderState> formKey = GlobalKey<FormBuilderState>();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController confirmPasswordController =
        TextEditingController();

    return BlocListener<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state.error != null) {
          EasyLoading.dismiss();
          EasyLoading.showError(state.error!);
        }
      },
      child: AuthScreen(
        title: 'Register',
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
                if (passwordController.text == confirmPasswordController.text) {
                  EasyLoading.show(status: "Registering...");
                  final UserModel user = UserModel(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  context.read<AuthCubit>().register(user: user);
                } else {
                  EasyLoading.showError("Passwords do not match");
                }
              }
            },
          ),
          const SizedBox(height: 32),
        ],
        authSwitchText: "Already have an account?",
        authSwitchAction: 'login',
        location: AppRoutes.login.path,
        formKey: formKey,
      ),
    );
  }
}
